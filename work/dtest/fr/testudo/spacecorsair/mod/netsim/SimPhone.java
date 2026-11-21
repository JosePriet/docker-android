package fr.testudo.spacecorsair.mod;

import netsim.Phone;
import java.io.*;
import java.lang.reflect.*;
import java.net.*;
import java.util.*;
import fr.testudo.spacecorsair.engine.*;
import fr.testudo.spacecorsair.game.*;
import fr.testudo.spacecorsair.game.levels.*;
import fr.testudo.spacecorsair.business.*;
import fr.testudo.spacecorsair.business.player.*;
import fr.testudo.spacecorsair.business.ennemis.*;
import fr.testudo.spacecorsair.business.projectiles.*;
import fr.testudo.spacecorsair.business.world.Portal;

/** Test adapter for one phone. The scheduler steps the production reader, writer and
 * frame callbacks serially, using a real Link on a controlled datagram wire. */
public class SimPhone implements Phone {
    static long time = 1000000;
    static int loot;
    static PlayerShip ship;
    static Game game;
    static RenderQueue queue;
    static final Map<String, Field> fields = new HashMap<>();
    static final Map<String, Method> methods = new HashMap<>();
    Transport transport;
    int number;
    boolean fixed;
    ModNet.Link link;
    static Field field(Class<?> c, String name) throws Exception {
        String key = c.getName() + "." + name;
        Field f = fields.get(key);
        if (f == null) { f = c.getDeclaredField(name); f.setAccessible(true); fields.put(key, f); }
        return f;
    }
    static Object get(String name) throws Exception { return field(ModLan.class, name).get(null); }
    static void set(String name, Object value) throws Exception { field(ModLan.class, name).set(null, value); }
    static Object call(String name, Class<?>[] types, Object... args) throws Exception {
        Method m = methods.get(name);
        if (m == null) { m = ModLan.class.getDeclaredMethod(name, types); m.setAccessible(true); methods.put(name, m); }
        try { return m.invoke(null, args); }
        catch (InvocationTargetException e) { throw new IllegalStateException(name, e.getCause()); }
    }
    static <T> T blank(Class<T> type) throws Exception {
        // Skip Android constructors only for the closed game boot objects.
        Class<?> unsafe = Class.forName("sun.misc.Unsafe");
        Object allocator = field(unsafe, "theUnsafe").get(null);
        return type.cast(unsafe.getMethod("allocateInstance", Class.class).invoke(allocator, type));
    }
    public void init(int number, boolean fixed, Transport transport) {
        this.number = number;
        this.fixed = fixed;
        this.transport = transport;
        try {
            ModNet.FIX_NS01 = fixed;
            for (int i = 1; i <= 10; i++) field(ModNet.class, String.format(Locale.ROOT, "FIX_BH%02d", i)).setBoolean(null, fixed);
        } catch (Exception e) { throw new IllegalStateException(e); }
    }
    public void configureRegistry(Map<String, String> env) {
        env.put("FIX_BH02", ModNet.FIX_BH02 ? "1" : "0");
        env.put("FIX_BH09", ModNet.FIX_BH09 ? "1" : "0");
    }
    public void clock(long now) { time = now; }
    public static void roll() { loot++; }
    public static void jump(String sector, String gate) {
        if (!game.currentLevel.name.equals(sector) || !"gate".equals(gate)) throw new AssertionError("wrong return sector");
        world(game.currentLevel.id);
    }
    static void world(LevelId id) {
        BasicEnnemyShip npc = new BasicEnnemyShip();
        npc.removed = false;
        Portal p = new Portal();
        p.portalName = "gate";
        game.currentLevel = new Level(id, new ArrayList<Element>(Arrays.asList(ship, npc, p)), null);
    }
    static void boot() throws Exception {
        game = blank(Game.class);
        ObjectRegistry.INSTANCE.game = game;
        ship = blank(PlayerShip.class);
        ship.position = new Vector2(); ship.speed = new Vector2(); ship.life = ship.maxLife = 100;
        ObjectRegistry.INSTANCE.playerShip = ship;
        game.playerInfo = blank(PlayerInfo.class);
        game.playerInfo.level = 5;
        game.playerInfo.nextLevelXp = 1000;
        queue = new RenderQueue(); ObjectRegistry.INSTANCE.renderQueue = queue;
        world(LevelId.HIGHWAY);
        loot = 0;
    }
    static InetSocketAddress address(int id) { return new InetSocketAddress(InetAddress.getLoopbackAddress(), 10000 + id); }
    class Wire extends ModNet.Wire {
        @Override void send(SocketAddress to, byte[] data, int length) {
            transport.send(number, ((InetSocketAddress) to).getPort() - 10000, Arrays.copyOf(data, length));
        }
        @Override void close() { closed = true; }
    }
    public void start(int other, int sid, boolean host) throws Exception {
        boot();
        ModLobby.leave();
        ModLan.stop();
        ModLan.role = host ? ModLan.HOST : ModLan.GUEST;
        ModLan.internet = true;
        ModLan.connected = true;
        ModLanSync.on = true;
        call("resetTables", new Class<?>[0]);
        ModLanCheck.reset();
        set("lastSendMs", 0L);
        set("declSent", null); set("declSentAt", 0L);
        ModLan.pvpRoom = false;
        game.playerInfo.curXp = host ? 990 : 0;
        link = new ModNet.Link(new Wire(), sid, false);
        link.connectTo(address(other));
    }
    public void stop(boolean crash) throws Exception {
        if (link != null) {
            if (crash) link.abandon(); else link.close();
            link = null;
        }
        ModLobby.leave();
        ModLan.stop();
        ModLan.preFrame();
    }
    public String lobby(String encoded, String query) {
        String text = new String(Base64.getDecoder().decode(encoded), java.nio.charset.StandardCharsets.UTF_8);
        ModLobby.Reply reply = ModLobby.parse(text, 200);
        if (!reply.ok()) return reply.first;
        if (query.equals("join")) return reply.get("sid");
        if (query.equals("beat")) {
            List<String> sids = new ArrayList<>();
            for (String[] row : reply.rows) if (row.length >= 3) sids.add(row[2]);
            return String.join(",", sids);
        }
        return reply.first;
    }
    public boolean disconnected() {
        if (link == null) return true;
        try {
            if (!link.finSeen() && !field(ModNet.Link.class, "dead").getBoolean(link)) return false;
            link.next(ModLan.MAX_MSG);
            return false;
        } catch (IOException expected) { return true; }
        catch (Exception e) { throw new IllegalStateException(e); }
    }
    public void timers() { if (link != null) link.tickOnce(); }
    @SuppressWarnings("unchecked")
    public void flush() throws Exception {
        if (link == null) return;
        List<byte[]> reliable = (List<byte[]>)get("reliable");
        for (byte[] m : reliable) link.getOutputStream().write(m);
        reliable.clear();
        link.getOutputStream().flush();
        byte[] latest = (byte[]) get("latest");
        if (latest != null) { link.sendLatest(latest); set("latest", null); }
    }
    public void datagram(int from, byte[] b) throws Exception {
        if (link == null || !link.onPeer(address(from), b, b.length, false)) return;
        byte[] m;
        while ((m = link.pollMessage(ModLan.MAX_MSG)) != null) {
            call("receive", new Class<?>[]{int.class, byte[].class}, m[0] & 255, Arrays.copyOfRange(m, 5, m.length));
        }
    }
    public void frame() throws Exception {
        if (!ModLan.connected) return;
        if (ModLan.role == ModLan.GUEST) {
            call("guestFrame", new Class<?>[]{PlayerShip.class}, ship);
        } else {
            call("hostFrame", new Class<?>[]{PlayerShip.class, long.class}, ship, 16L);
        }
        ModLan.beforeSwap(queue);
    }
    public void play(int xp, int damage, int kills) throws Exception {
        PlayerInfo pilot = game.playerInfo;
        pilot.curXp += xp;
        if (pilot.curXp >= pilot.nextLevelXp) {
            pilot.curXp -= pilot.nextLevelXp;
            pilot.nextLevelXp = XpBuilder.getNextLevelXp(++pilot.level);
        }
        set("dmgSent", (Float) get("dmgSent") + damage);
        if (kills > 0) {
            set("proxy", new BasicEnnemyShip());
            for (int i = 0; i < kills; i++) ModLan.killed(new BasicEnnemyShip());
            set("proxy", null);
        }
    }
    public void duel(boolean loss) throws Exception {
        world(LevelId.FFA_THE_PLAYER_PAY);
        ModLan.setPvpRoom(true); ModLan.duel(true);
        ModLan.InState s = new ModLan.InState(); s.life = s.maxLife = 100;
        hostDuel(s);
        if (loss) { ModLan.duelFloor(ship, 200); hostDuel(s); }
    }
    static void hostDuel(ModLan.InState s) throws Exception {
        call("hostDuel", new Class<?>[]{PlayerShip.class, Level.class, ModLan.InState.class}, ship, game.currentLevel, s);
    }
    public Snapshot state() throws Exception {
        int enemies = 0;
        for (Element e : game.currentLevel.elements) if (e instanceof Ennemis && !e.removed) enemies++;
        return new Snapshot((int)game.playerInfo.curXp, (int)ship.life, loot, enemies, ModLan.round,
            ((Long)get("xpSent")).intValue(), ModLan.killsOut, ModLan.guestWins);
    }
    public void finding(int id) throws Exception { Findings.run(this, id); }
}
