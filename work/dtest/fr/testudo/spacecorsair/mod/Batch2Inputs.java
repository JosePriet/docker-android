package fr.testudo.spacecorsair.mod;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.Config;
import fr.testudo.spacecorsair.game.Game;
import fr.testudo.spacecorsair.storage.*;
import fr.testudo.spacecorsair.business.player.Inventory;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import java.io.*;
import java.lang.reflect.*;
import java.nio.file.Files;
import java.util.*;

/** In-process writer/reader campaign. No sockets, emulator, device files or game threads. */
public final class Batch2Inputs {
    static final long SEED = 0xb2052026L;
    static final Random random = new Random(SEED);
    static int iteration;

    static void check(boolean ok, String reason) {
        if (!ok) throw new AssertionError("seed=" + SEED + " iteration=" + iteration + " " + reason);
    }

    // The SDK jar's framework constructors throw on the desktop. Allocate the two shells without
    // starting Android or a game loop. All storage, game codecs and mod methods below run normally.
    static <T> T shell(Class<T> type) throws Exception {
        Class<?> unsafe = Class.forName("sun.misc.Unsafe");
        Field field = unsafe.getDeclaredField("theUnsafe");
        field.setAccessible(true);
        return type.cast(unsafe.getMethod("allocateInstance", Class.class).invoke(field.get(null), type));
    }

    static final class Disk extends ContextWrapper {
        File files;
        Map<String, SharedPreferences> stores;
        Disk(Context c) { super(c); }
        @Override public Context getApplicationContext() { return this; }
        @Override public File getFilesDir() { return files; }
        @Override public SharedPreferences getSharedPreferences(String name, int mode) {
            if (!stores.containsKey(name)) stores.put(name, preferences());
            return stores.get(name);
        }
    }

    // Editors stage their changes until commit/apply, like the subset of Android used by the mod.
    static SharedPreferences preferences() {
        Map<String, Object> values = new HashMap<>();
        ClassLoader loader = Batch2Inputs.class.getClassLoader();
        return (SharedPreferences) Proxy.newProxyInstance(loader, new Class<?>[]{SharedPreferences.class}, (p, m, a) -> {
            String name = m.getName();
            if (name.equals("getAll")) return new HashMap<>(values);
            if (name.equals("contains")) return values.containsKey(a[0]);
            if (name.startsWith("get")) return values.getOrDefault(a[0], a[1]);
            if (!name.equals("edit")) throw new AssertionError(name);
            Map<String, Object> changes = new HashMap<>();
            boolean[] clear = {false};
            return Proxy.newProxyInstance(loader, new Class<?>[]{SharedPreferences.Editor.class}, (ed, em, args) -> {
                String op = em.getName();
                if (op.startsWith("put")) changes.put((String) args[0], args[1]);
                else if (op.equals("clear")) clear[0] = true;
                else if (op.equals("commit") || op.equals("apply")) {
                    if (clear[0]) values.clear();
                    values.putAll(changes);
                    return op.equals("commit") ? Boolean.TRUE : null;
                } else throw new AssertionError(op);
                return ed;
            });
        });
    }

    static void profiles(Disk ctx, File root) throws Exception {
        File live = new File(ctx.files, "pilot");
        ModTestMode.write(live, "original");
        SharedPreferences p = ctx.getSharedPreferences("modqol", 0);
        p.edit().putInt("read", 2).putStringSet("seen", new HashSet<>(Arrays.asList("a", "b"))).commit();
        File pending = new File(root, "pending");
        ModTestMode.write(pending, "test");
        ModTestMode.restoreChecked(ctx, root);
        check(ModTestMode.on, "test selected");
        ModTestMode.write(live, "temporary");
        p.edit().putInt("read", 99).commit();
        File main = new File(root, "main");
        File saved = new File(main, "prefs_modqol.ser");
        byte[] snapshot = Files.readAllBytes(saved.toPath());
        ModTestMode.write(pending, "main");
        // Every proper prefix of the writer's own snapshot must leave the active files and prefs alone.
        for (int n = 0; n < snapshot.length; n++) {
            Files.write(saved.toPath(), Arrays.copyOf(snapshot, n));
            try { ModTestMode.restoreChecked(ctx, root); throw new AssertionError("short backup accepted"); }
            catch (IOException expected) { }
            check(ModTestMode.read(live, "").equals("temporary") && p.getInt("read", 0) == 99, "partial restoration");
            check("test".equals(ModTestMode.profileMarker(new File(root, "active"), null)), "active marker changed");
        }
        Files.write(saved.toPath(), snapshot);
        check(new File(main, "prefs_corsair_audio.ser").delete(), "pre-v45 audio fixture");
        ctx.getSharedPreferences("corsair_audio", 0).edit().putFloat("sfx", 0.75f).commit();
        ModTestMode.restoreChecked(ctx, root);
        check(!ModTestMode.on && ModTestMode.read(live, "").equals("original") && p.getInt("read", 0) == 2, "retry restore");
        check(p.getStringSet("seen", null).size() == 2, "backup set");
        check(ctx.getSharedPreferences("corsair_audio", 0).getFloat("sfx", 0) == 0.75f, "old backup audio");
        ModTestMode.restoreChecked(ctx, root);
        check(!pending.exists() && !new File(root, "prepared").exists(), "finished switch");
        File marker = new File(root, "active");
        for (String value : Arrays.asList("", "m", "unknown", "test\nmain")) {
            ModTestMode.write(marker, value);
            try { ModTestMode.restoreChecked(ctx, root); throw new AssertionError("invalid marker accepted"); }
            catch (IOException expected) { }
            check(ModTestMode.read(live, "").equals("original"), "damaged marker changed save");
        }
    }

    // The storage classes use the registry to select their input DTO and the game's Gson to encode it.
    static Object stockCodec(Object storage, String writer, String reader) throws Exception {
        Method write = storage.getClass().getDeclaredMethod(writer);
        Method read = storage.getClass().getDeclaredMethod(reader, String.class);
        write.setAccessible(true);
        read.setAccessible(true);
        String json = (String) write.invoke(storage);
        check(json.startsWith("{") && json.endsWith("}"), writer);
        Object value = read.invoke(storage, json);
        check(ObjectRegistry.INSTANCE.gson.toJson(value).equals(json), reader + " round trip");
        for (int n = 0; n < 32; n++) {
            String prefix = json.substring(0, 1 + random.nextInt(json.length() - 1));
            try { read.invoke(storage, prefix); throw new AssertionError(reader + " accepted incomplete object"); }
            catch (InvocationTargetException e) { if (!(e.getCause() instanceof JsonParseException)) throw e; }
        }
        return value;
    }

    static void stockSaves() throws Exception {
        ObjectRegistry r = ObjectRegistry.INSTANCE;
        r.game.playerCurrentShipInventory = new Inventory(100);
        r.game.playerCurrentShipInventory.addCredit(73);
        Inventory copy = (Inventory) stockCodec(new InventoryStorage(), "getInventoryJsonRepresentation", "getInventoryFromString");
        check(copy.getCredit() == r.game.playerCurrentShipInventory.getCredit(), "persisted credits");
        r.game.playerCurrentShipInventory = copy;
        r.game.playerInfo = new PlayerInfo();
        r.game.playerInfo.level = 3;
        r.game.playerInfo.curXp = 17;
        r.game.playerInfo = (PlayerInfo) stockCodec(new PlayerInfoStorage(), "getPlayerInfoJsonRepresentation", "getPlayerInfoFromStr");
        long before = copy.getCredit();
        for (int n = 0; n < 2; n++) ModSave.sanitize();
        check(copy.getCredit() == before && r.game.playerInfo.level == 3 && r.game.playerInfo.curXp == 17, "sanitize preserves progress");
        r.giftRepository = new fr.testudo.spacecorsair.business.gifts.GiftRepository();
        stockCodec(new GiftStorage(), "getGiftRepoStorage", "getInstanceFromString");
        r.missionRepository = new fr.testudo.spacecorsair.business.mission.MissionRepository();
        stockCodec(new MissionRepoStorage(), "getMissionRepoJsonRepres", "getMissionRepoFromString");
        r.levelProperties = new fr.testudo.spacecorsair.game.levels.LevelsGlobalProperties();
        stockCodec(new LevelPropertiesStorage(), "getLevelPropertiesJsonRepres", "getLevelPropertiesFromString");
        r.priceConf = new PriceListRepresentation();
        stockCodec(new PriceStorage(), "getPricesJsonRepresentation", "getPricesListFromJson");
        stockCodec(AchievementStorage.getInstance(), "getAchievementsJsonRepresentation", "getAchievementRepresFromJson");
    }

    static void signature(Disk ctx) throws Exception {
        Field context = ModSaveSig.class.getDeclaredField("ctx");
        context.setAccessible(true);
        context.set(null, ctx);
        Method sign = ModSaveSig.class.getDeclaredMethod("signAll");
        sign.setAccessible(true);
        File file = new File(ctx.files, "pilot");
        byte[] original = Files.readAllBytes(file.toPath());
        String first = (String) sign.invoke(null);
        check(!first.isEmpty(), "save signature");
        byte[] changed = original.clone();
        for (int i = 0; i < changed.length; i++) {
            changed[i] ^= 1;
            Files.write(file.toPath(), changed);
            check(!first.equals(sign.invoke(null)), "changed save signature");
            changed[i] ^= 1;
        }
        Files.write(file.toPath(), original);
        check(first.equals(sign.invoke(null)), "restored save signature");
    }

    static void settings(SharedPreferences p, Field loaded) throws Exception {
        int count = random.nextInt();
        float shake = Float.intBitsToFloat(random.nextInt());
        p.edit().putFloat("shake", shake).putString("inbox", "one\ntwo\n").putInt("inboxRead", count).putInt("modVersion", 31).commit();
        loaded.setBoolean(null, false);
        check(ModQol.unread() == 2 - Math.max(0, Math.min(2, count)), "unread count");
        check(ModQol.shakeLevel() == (shake >= 0 && shake <= 1.5f ? shake : 0.6f), "camera shake");
    }

    static void counts(SharedPreferences p) {
        int count = random.nextInt(), gain = 1 + random.nextInt(100);
        p.edit().putInt("v35_core_neutral", count).commit();
        int cores = ModV35.cores("neutral");
        check(cores == Math.max(0, count), "negative core balance");
        check(ModV35.addCount(cores, gain) == Math.min(Integer.MAX_VALUE, (long) cores + gain), "wrapped balance");
    }

    static void declaration() throws Exception {
        ModLanCheck.Decl d = new ModLanCheck.Decl();
        d.level = 1 + random.nextInt(40);
        d.refit = random.nextInt(11);
        d.maxHull = random.nextInt(10000);
        d.maxShield = random.nextInt(5000);
        d.ship = "hull" + random.nextInt(999);
        int op = iteration % 5;
        if (op == 1) d.maxShield = Float.NaN;
        if (op == 2) d.maxHull = Float.POSITIVE_INFINITY;
        byte[] b = ModLanCheck.encode(d);
        if (op == 3) b = Arrays.copyOf(b, random.nextInt(b.length));
        if (op == 4) b = Arrays.copyOf(b, 601);
        if (op == 0) check(d.same(ModLanCheck.decode(b)), "declaration round trip");
        else {
            try { ModLanCheck.decode(b); throw new AssertionError("invalid declaration accepted"); }
            catch (IOException expected) { }
        }
    }

    static void render() throws Exception {
        int x = random.nextInt(30000) - 15000, y = random.nextInt(30000) - 15000, size = random.nextInt(256);
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(bo);
        check(ModLanSync.point(out, x, y, 255, 255, 255, 255, size / 4f), "point writer");
        byte[] b = bo.toByteArray();
        if (iteration % 3 == 1) {
            int at = 1 + random.nextInt(4); // mutate a coordinate and compare with the signed on-wire short
            b[at] ^= 1 << random.nextInt(8);
        }
        int len = iteration % 3 == 2 ? random.nextInt(b.length) : b.length;
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(b, 0, len));
        if (len < b.length) {
            try { ModLanSync.read(in, 1, 0, 0); throw new AssertionError("short point accepted"); }
            catch (EOFException expected) { }
        } else {
            ModLan.Rec r = ModLanSync.read(in, 1, 0, 0)[0];
            java.nio.ByteBuffer body = java.nio.ByteBuffer.wrap(b);
            check(r.kind == 3 && r.x == body.getShort(1) / 2f && r.y == body.getShort(3) / 2f && r.psize == size / 4f && in.available() == 0, "point decode");
        }
    }

    static void attributes() {
        byte[] value = new byte[random.nextInt(64) + 1];
        random.nextBytes(value);
        int tag = random.nextInt(65536);
        byte[] packet = ModNet.stunMsg(1, new byte[12], ModNet.attr(tag, value), ModNet.attr(tag, new byte[0]));
        int n = 20 + random.nextInt(packet.length - 19);
        Map<Integer, byte[]> parsed = ModNet.attrs(packet, n);
        if (n < 24 + value.length) check(parsed.isEmpty(), "short attribute");
        else check(parsed.size() == 1 && Arrays.equals(parsed.get(tag), value), "first complete attribute");
    }

    static void frames() throws Exception {
        fr.testudo.spacecorsair.engine.RenderQueue queue = new fr.testudo.spacecorsair.engine.RenderQueue();
        fr.testudo.spacecorsair.engine.Vector2 point = new fr.testudo.spacecorsair.engine.Vector2(3, 4);
        for (int i = 0; i < 24; i++) queue.addTextToTextWaitingQueue(point, false, "zone", 1, 1, 1, 1,
                fr.testudo.spacecorsair.textengine.TextSize.NORMAL);
        Method receive = ModLan.class.getDeclaredMethod("receive", int.class, byte[].class);
        receive.setAccessible(true);
        ModLan.role = ModLan.GUEST;
        try {
            for (boolean lean : new boolean[]{false, true}) {
                ModLanSync.on = lean;
                ByteArrayOutputStream records = new ByteArrayOutputStream();
                int n = ModLan.captureForTest(queue, 0, ModLan.queueSizeOf(queue), 0, 0, 0, 0, new DataOutputStream(records));
                check(n == 24, "render records captured");
                ByteArrayOutputStream body = new ByteArrayOutputStream();
                DataOutputStream out = new DataOutputStream(body);
                if (lean) out.writeByte(1); // include the slow-changing fields on the first frame
                else out.writeUTF("sector");
                out.writeFloat(0); out.writeFloat(0);
                if (lean) out.writeUTF("sector");
                out.writeFloat(0); out.writeLong(0);
                if (lean) {
                    out.writeBoolean(false); out.writeInt(0); out.writeShort(0); out.writeShort(0);
                    out.writeUTF(""); out.writeBoolean(false);
                }
                out.writeShort(n);
                records.writeTo(body);
                byte[] packet = ModLan.packedForTest(lean ? 10 : 2, body.toByteArray());
                int before = ModLan.gotFrames;
                receive.invoke(null, (int) packet[0], Arrays.copyOfRange(packet, 5, packet.length));
                check(ModLan.gotFrames == before + 1 && ModLan.lastRecs == n, "packed frame accepted");
            }
        } finally {
            ModLanSync.on = false;
            ModLan.role = ModLan.NONE;
        }
    }

    static void lobbyText() {
        String val = "sector Δ " + random.nextInt();
        ModLobby.Reply reply = ModLobby.parse("ok\nname=old\nname=" + val + "\na\tb\t\n", 200);
        check(reply.ok() && reply.get("name").equals(val) && reply.rows.size() == 1 && reply.rows.get(0).length == 3, "lobby rows");
    }

    static void dictionary() {
        String value = "Δ" + random.nextInt();
        String json = "{\"label\":\"" + value + "\",\"k\":\"v\"}";
        boolean whole = iteration % 2 == 0;
        if (!whole) json = json.substring(0, random.nextInt(json.length()));
        Map<String, String> out = new HashMap<>();
        ModLang.parseFlat(json, out);
        check(whole ? value.equals(out.get("label")) && out.size() == 2 : out.isEmpty(), "partial dictionary");
    }

    static void config(ConfigStorage storage, Method write, Method read) throws Exception {
        Config seed = ObjectRegistry.INSTANCE.config;
        seed.defaultZoom = 1 + random.nextInt(4);
        String json = (String) write.invoke(storage);
        boolean truncated = iteration % 2 == 1;
        if (truncated) json = json.substring(0, 1 + random.nextInt(json.length() - 1));
        try {
            Config copy = (Config) read.invoke(storage, json);
            check(!truncated && copy.defaultZoom == seed.defaultZoom, "config round trip");
        } catch (InvocationTargetException e) {
            if (!truncated || !(e.getCause() instanceof JsonParseException)) throw e;
        }
    }

    public static void main(String[] args) throws Exception {
        System.out.println("JVM seed=0x" + Long.toHexString(SEED));
        check(!ModSave.strictInputs, "flag default");
        ModSave.strictInputs = true;
        File root = Files.createTempDirectory("b205-").toFile();
        try {
            Disk ctx = shell(Disk.class);
            ctx.files = new File(root, "live");
            check(ctx.files.mkdir(), "temporary storage");
            ctx.stores = new HashMap<>();
            File backups = new File(root, "profiles");
            check(backups.mkdir(), "temporary profiles");
            profiles(ctx, backups);
            File localSwitch = new File(root, "command");
            ModTestMode.write(localSwitch, "  mode  \nignored");
            check("mode".equals(ModDev.switchValue(localSwitch)), "switch first line");
            Files.write(localSwitch.toPath(), new byte[4097]);
            check(ModDev.switchValue(localSwitch) == null, "oversized switch line");
            for (int n : new int[]{65535, 65536, 65537}) {
                byte[] reply = new byte[n];
                reply[0] = 'o'; reply[1] = 'k'; reply[2] = '\n';
                check(ModLobby.readReply(new ByteArrayInputStream(reply), 200).ok() == (n <= 65536), "HTTP response limit");
            }
            ObjectRegistry.INSTANCE.game = shell(Game.class);
            ObjectRegistry.INSTANCE.game.context = ctx;
            ObjectRegistry.INSTANCE.gson = new Gson();
            ObjectRegistry.INSTANCE.config = new Config();
            stockSaves();
            signature(ctx);
            frames();
            ConfigStorage store = new ConfigStorage();
            Method write = ConfigStorage.class.getDeclaredMethod("getConfigJsonRepres");
            Method read = ConfigStorage.class.getDeclaredMethod("getConfigFromString", String.class);
            write.setAccessible(true);
            read.setAccessible(true);
            SharedPreferences prefs = ModQol.prefs();
            prefs.edit().putFloat("rep_kretari", Float.NaN).commit();
            check(ModRep.standing("kretari") == -20f, "nonfinite standing");
            ctx.getSharedPreferences("corsair_audio", 0).edit().putFloat("sfx", Float.NaN).putBoolean("bal42", true).commit();
            Method loadSound = ModSound.class.getDeclaredMethod("loadSfx", Context.class);
            loadSound.setAccessible(true);
            loadSound.invoke(null, ctx);
            Field effects = ModSound.class.getDeclaredField("sfx");
            effects.setAccessible(true);
            check(effects.getFloat(null) == ModSound.SFX_DEFAULT, "nonfinite effects volume");
            Field loaded = ModQol.class.getDeclaredField("loaded");
            loaded.setAccessible(true);
            prefs.edit().putString("shake", "bad").putInt("fixedStick", -1).putInt("modVersion", 31).commit();
            check(ModQol.fixedStick() && ModQol.shakeLevel() == 0.6f, "typed option defaults");
            prefs.edit().putString("inbox", String.join("\n", Collections.nCopies(41, "entry"))).putInt("inboxRead", 2).commit();
            loaded.setBoolean(null, false);
            check(ModQol.unread() == 39, "oldest read entry dropped");
            Field inbox = ModQol.class.getDeclaredField("inbox");
            inbox.setAccessible(true);
            check(((List<?>) inbox.get(null)).size() == 40, "writer retention bound");
            Map<String, String> dictionary = new HashMap<>();
            ModLang.parseFlat("\"\"\"", dictionary);
            check(dictionary.isEmpty(), "unfinished key/value");
            ModLang.parseFlat("{\"a\":\"old\",\"a\":\"new\"}", dictionary);
            check("new".equals(dictionary.get("a")), "last dictionary value");
            check(ModV35.addCount(Integer.MAX_VALUE, 1) == Integer.MAX_VALUE, "max count");
            for (iteration = 0; iteration < 125000; iteration++) {
                settings(prefs, loaded);
                counts(prefs);
                declaration();
                render();
                attributes();
                lobbyText();
                dictionary();
                config(store, write, read);
            }
            System.out.println("JVM OK families=8 casesPerFamily=" + iteration + " total=" + iteration * 8);
        } finally {
            ModTestMode.delete(root);
            ModSave.strictInputs = false;
        }
    }
}
