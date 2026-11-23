package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.RadarDrawType;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.RenderQueue;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.Game;
import fr.testudo.spacecorsair.game.levels.*;
import java.io.*;
import java.lang.reflect.Field;
import java.util.*;

/** Headless world and the queue it would present to capture. No Android context or sockets. */
final class Battle {
    final List<Element> ships = new ArrayList<>();
    final Level level = new Level(LevelId.GALACTIC_ARENA, ships, null);
    final PlayerShip player;
    final RenderQueue source = new RenderQueue(), target = new RenderQueue();
    final ByteArrayOutputStream buffer = new ByteArrayOutputStream(16384);
    final DataOutputStream out = new DataOutputStream(buffer);
    final Field size = field(RenderQueue.class, "queueSize"), marks = field(ModLan.class, "marksOut");
    final Texture texture = new Texture();
    final ModLan.InFrame previous = new ModLan.InFrame(), next = new ModLan.InFrame();
    final byte[] packet;
    final int n;

    static Field field(Class<?> type, String name) throws Exception {
        Field f = type.getDeclaredField(name);
        f.setAccessible(true);
        return f;
    }

    // V34 fixture convention: constructors that require an Android Activity/player save.
    static <T> T shell(Class<T> type) throws Exception {
        Class<?> unsafe = Class.forName("sun.misc.Unsafe");
        Object allocator = field(unsafe, "theUnsafe").get(null);
        return type.cast(unsafe.getMethod("allocateInstance", Class.class).invoke(allocator, type));
    }

    @SuppressWarnings("unchecked")
    Battle(int seed) throws Exception {
        Random random = new Random(seed);
        Game game = shell(Game.class);
        player = shell(PlayerShip.class);
        field(Element.class, "position").set(player, new Vector2());
        ObjectRegistry.INSTANCE.game = game;
        ObjectRegistry.INSTANCE.playerShip = player;
        ObjectRegistry.INSTANCE.renderQueue = target;
        game.currentLevel = level;
        texture.resource = 12345;
        Map<String, Texture> textures = (Map<String, Texture>) field(ModArt.class, "textures").get(null);
        textures.put("fx_glow", texture);
        Drawable[] hulls = new Drawable[20];
        for (int i = 0; i < hulls.length; i++) {
            Texture skin = new Texture();
            skin.resource = 900 + i;
            hulls[i] = new Drawable(new Vector2(64 + i * 2, 64 + i * 2), skin);
        }
        ModFx.Sprite layer = new ModFx.Sprite();
        layer.myTexture = texture;
        layer.w = layer.h = 72;
        for (int i = 0; i < 60; i++) {
            // Player, 2 flagships and a police titan, 5 drones, 3 guest stand-ins, ordinary ships.
            Element e = i == 0 ? player : i <= 3 ? new GuardianCivilShip() : new BasicEnnemyShip();
            if (i == 4 || i == 5) Mod.playerDrones()[i - 4] = (BasicEnnemyShip) e;
            e.position.set(random.nextInt(6000) - 3000, random.nextInt(6000) - 3000);
            e.spin = random.nextInt(360);
            e.drawOnRadar = true;
            e.radarDrawType = RadarDrawType.POINT;
            e.radarColorR = random.nextFloat();
            ships.add(e);
            source.addToWaitingQueue(e.position, false, hulls[i % hulls.length], e.spin);
            int overlays = i >= 1 && i <= 3 ? 12 : i >= 4 && i <= 11 ? 3 : 2;
            for (int j = 0; j < overlays; j++) source.addToWaitingQueue(e.position, false, layer, e.spin + j);
        }
        for (int gun = 0; gun < 4; gun++) source.addToWaitingQueue(new Vector2(gun * 24, 150), false, layer, gun * 45);
        ModLanSync.on = true;
        n = capture();
        if (n != ModLan.queueSizeOf(source)) throw new AssertionError("incomplete render fixture");
        packet = buffer.toByteArray();
        previous.recs = read();
        previous.n = next.n = n;
        next.recs = read();
        previous.indexRecords();
        next.indexRecords();
        for (ModLan.Rec r : next.recs) {
            ModLan.defineForTest(r.id, texture);
            r.tx += 8;
        }
        pair();
        ModFx.clear();
        for (int i = 0; i < 180; i++) {
            ModFx.part("fx_glow", i, i, i % 7, 2, 1e9f, 6, 12, 1, 1, 1, 1, true, i % 2 == 0);
            ModFx.plife[i] *= 0.5f;
        }
        Mod.frameCounter++;
    }

    int capture() throws Exception {
        buffer.reset();
        return ModLan.captureForTest(source, 0, ModLan.queueSizeOf(source), 0, 0, 0, 0, out);
    }

    ModLan.Rec[] read() throws IOException {
        return ModLanSync.read(new DataInputStream(new ByteArrayInputStream(packet)), n, 0, 0);
    }

    void pair() {
        ModLanSync.pair(next.recs, n, previous.recs, previous.idx, previous.recordIndex);
    }

    void resetTarget() throws Exception {
        size.setInt(target, 0);
        ModFx.budget = 1000;
    }
}
