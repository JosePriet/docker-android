package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.RenderQueue;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.io.*;
import java.lang.reflect.Field;

/** v49 LAN co-op JVM checks: render-list capture/replay round trip, shot field mirror, loopback link. Ends with V49 VALUES-OK. */
public class V49 {
    static int bad = 0;
    static void is(String n, boolean ok) { if (!ok) bad++; System.out.println((ok ? "ok V49 " : "FAIL V49 ") + n); }

    public static void main(String[] a) throws Exception {
        RenderQueue src = new RenderQueue(), dst = new RenderQueue();
        Texture t = new Texture(); t.resource = 0x7f020001;
        Drawable d = new Drawable(new Vector2(64, 64), t);
        src.addToWaitingQueue(new Vector2(100, 200), false, d, 45f, 1f, 0.5f, 0.25f, 1f);
        src.addToWaitingQueue(new Vector2(5, 5), true, d, 0f, 1f, 1f, 1f, 1f);   // HUD: not streamed
        src.addTextToTextWaitingQueue(new Vector2(-30, 40), false, "1234", 1f, 0.2f, 0.2f, 1f, TextSize.NORMAL);
        ModFx.Sprite s = new ModFx.Sprite(); s.myTexture = t; s.w = 300; s.h = 120; s.u0 = 0.25f; s.u1 = 0.5f; s.additive = true;
        src.addToWaitingQueue(new Vector2(7, 8), false, s, 10f, 0.5f, 1f, 1f, 1f);
        int n0 = ModLan.queueSizeOf(src);
        is("source queue holds 4 entries (" + n0 + ")", n0 == 4);
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        int n = ModLan.captureForTest(src, 0, n0, 0, 0, 0, 0, new DataOutputStream(bo));
        is("3 world-space records captured, HUD skipped (" + n + ")", n == 3);
        ModLan.Rec[] r = ModLan.readRecsForTest(bo.toByteArray(), n);
        is("sprite position/spin/size", r[0].kind == 0 && r[0].x == 100 && r[0].y == 200 && r[0].spin == 45f && r[0].w == 64 && r[0].h == 64);
        is("sprite colour (a=1 r=.5 g=.25)", Math.abs(r[0].a - 1) < 0.01 && Math.abs(r[0].r - 0.5f) < 0.01 && Math.abs(r[0].g - 0.25f) < 0.01);
        is("text record", r[1].kind == 2 && "1234".equals(r[1].text) && r[1].tsize == TextSize.NORMAL.ordinal());
        is("fx sprite uv/scale/additive", r[2].kind == 1 && r[2].w == 300 && r[2].h == 120 && r[2].u0 == 0.25f && r[2].u1 == 0.5f && (r[2].flags & 2) != 0);
        // replay at an offset into another queue: needs the texture id known on the receiving side
        ModLan.defineForTest(r[0].id, t);
        ObjectRegistry.INSTANCE.renderQueue = dst;
        ModLan.replayForTest(r, n, 1000, 0);
        int m = ModLan.queueSizeOf(dst);
        is("replayed 3 entries (" + m + ")", m == 3);
        // shot mirror
        EnergyBullet b = new EnergyBullet();
        b.damage = 321f; b.lifeTimeInMilli = 777; b.position.set(11, 22); b.speed.set(3, -4); b.spin = 90; b.level = 17; b.isCrit = true;
        ByteArrayOutputStream so = new ByteArrayOutputStream();
        DataOutputStream sd = new DataOutputStream(so);
        for (Field f : ModLan.shotFields(EnergyBullet.class)) ModLan.writeFieldForTest(sd, f, b);
        EnergyBullet c = new EnergyBullet();
        DataInputStream si = new DataInputStream(new ByteArrayInputStream(so.toByteArray()));
        for (Field f : ModLan.shotFields(EnergyBullet.class)) ModLan.readFieldForTest(si, f, c);
        is("shot mirror: damage, life, position, speed, spin, level, crit", c.damage == 321f && c.lifeTimeInMilli == 777 && c.position.x == 11 && c.position.y == 22
            && c.speed.x == 3 && c.speed.y == -4 && c.spin == 90 && c.level == 17 && c.isCrit);
        is("shot mirror: all bytes read", si.available() == 0);
        {   // shot template for tests/lan_peer.py: class name + fields, with the byte offsets of position and speed
            EnergyBullet tb = new EnergyBullet();
            tb.damage = 5000f; tb.lifeTimeInMilli = 2500; tb.level = 30; tb.destroyedOnImpact = true;
            ByteArrayOutputStream to = new ByteArrayOutputStream();
            DataOutputStream td = new DataOutputStream(to);
            td.writeUTF(EnergyBullet.class.getName());
            int po = -1, vo = -1;
            for (Field f : ModLan.shotFields(EnergyBullet.class)) {
                if (f.getName().equals("position") && f.getDeclaringClass().getSimpleName().equals("Element")) po = to.size();
                if (f.getName().equals("speed") && f.getDeclaringClass().getSimpleName().equals("Element")) vo = to.size();
                ModLan.writeFieldForTest(td, f, tb);
            }
            td.flush();
            StringBuilder hex = new StringBuilder();
            for (byte x : to.toByteArray()) hex.append(String.format("%02x", x & 255));
            java.io.PrintWriter pw = new java.io.PrintWriter("lan_shot.txt");
            pw.println(po + " " + vo + " " + hex);
            pw.close();
            is("shot template has position and speed offsets", po > 0 && vo > 0);
        }
        System.out.println("info V49 shot fields " + ModLan.shotFields(EnergyBullet.class).length + ", bytes " + so.size());
        // link: the guest connects to a listening host and sends its state frames
        java.net.ServerSocket ss = new java.net.ServerSocket(ModLan.PORT);
        Thread j = new Thread(new Runnable() { public void run() { ModLan.join("127.0.0.1"); } });
        j.start();
        java.net.Socket hs = ss.accept();
        DataInputStream hin = new DataInputStream(hs.getInputStream());
        byte[] hb = new byte[6]; hin.readFully(hb);
        is("link: guest opens with the HELLO tag", "SCLAN2".equals(new String(hb, "UTF-8")));
        String gv = hin.readUTF(); hin.readUTF(); hin.readUTF();
        is("link: guest sends its version (" + gv + ")", gv.equals(ModLan.myVersion()));
        hs.getOutputStream().write(0); hs.getOutputStream().flush();   // host reply: accepted
        j.join(6000);
        Thread.sleep(300);
        is("link: guest connected", ModLan.connected && ModLan.role == ModLan.GUEST);
        ModLan.stop();
        int type = hin.readUnsignedByte();
        is("stop: guest says bye (" + type + ")", type == 5);
        is("stop: link down", !ModLan.connected && ModLan.role == ModLan.NONE);
        hs.close(); ss.close();
        // v45: a host on another version refuses; the guest ends unlinked with a message
        ss = new java.net.ServerSocket(ModLan.PORT);
        j = new Thread(new Runnable() { public void run() { ModLan.join("127.0.0.1"); } });
        j.start();
        hs = ss.accept();
        DataOutputStream ho = new DataOutputStream(hs.getOutputStream());
        ho.writeByte(2); ho.writeUTF("mod v1"); ho.flush();
        j.join(6000);
        is("version: refused join leaves no link", !ModLan.connected && ModLan.role == ModLan.NONE && ModLan.status.contains("mod v1"));
        hs.close(); ss.close();
        // v45: the host side. Old tag and wrong version are turned away, the right one is let in, garbage ends the link without a crash
        ModLan.hostForTest();
        Thread.sleep(400);
        java.net.Socket g = new java.net.Socket("127.0.0.1", ModLan.PORT);
        g.getOutputStream().write("SCLAN1".getBytes("UTF-8")); g.getOutputStream().flush();
        g.setSoTimeout(3000);
        is("host: v44 tag is dropped", g.getInputStream().read() == -1);
        g.close();
        g = new java.net.Socket("127.0.0.1", ModLan.PORT);
        DataOutputStream go = new DataOutputStream(g.getOutputStream());
        go.write("SCLAN2".getBytes("UTF-8")); go.writeUTF("other"); go.writeUTF("x"); go.writeUTF(""); go.flush();
        g.setSoTimeout(3000);
        is("host: other version refused", g.getInputStream().read() == 2);
        g.close();
        g = new java.net.Socket("127.0.0.1", ModLan.PORT);
        go = new DataOutputStream(g.getOutputStream());
        go.write("SCLAN2".getBytes("UTF-8")); go.writeUTF(ModLan.myVersion()); go.writeUTF("Ana"); go.writeUTF("ESP"); go.flush();
        g.setSoTimeout(3000);
        is("host: same version accepted", g.getInputStream().read() == 0);
        Thread.sleep(300);
        is("host: linked", ModLan.connected && ModLan.role == ModLan.HOST);
        go.writeByte(3); go.writeInt(64 << 20); go.flush();   // a 64 MB message header
        Thread.sleep(500);
        is("host: oversize message ends the link", !ModLan.connected);
        g.close();
        ModLan.stop();
        // v45: texture keys and shot classes
        is("def: stock drawable ok", ModLan.defOk("R" + 0x7f020010) && ModLan.defOk("Lhull_mantis_s5") && ModLan.defOk("Mfx.glow"));
        is("def: others refused", !ModLan.defOk("R5") && !ModLan.defOk("R" + 0x01080000) && !ModLan.defOk("L../x") && !ModLan.defOk("Xabc") && !ModLan.defOk("L a"));
        is("shot class: projectile ok", ModLan.shotClassForTest(EnergyBullet.class.getName()) == EnergyBullet.class);
        is("shot class: others refused", ModLan.shotClassForTest("java.lang.Runtime") == null && ModLan.shotClassForTest("fr.testudo.spacecorsair.mod.ModLan") == null
            && ModLan.shotClassForTest("fr.testudo.spacecorsair.business.projectiles.Projectile") == null && ModLan.shotClassForTest("fr.testudo.spacecorsair.business.projectiles.LaserBeam") == null);
        {
            EnergyBullet eb = new EnergyBullet();
            eb.position.set(100, 100); eb.speed.set(1, 1); eb.damage = 5.0e8f; eb.lifeTimeInMilli = 999999;
            is("shot: clamped", ModLan.shotOk(eb, 0, 0) && eb.damage == ModLan.MAX_SHOT_DMG && eb.lifeTimeInMilli == 60000);
            eb.position.set(5000, 0);
            is("shot: far from the ship refused", !ModLan.shotOk(eb, 0, 0));
            eb.position.set(0, 0); eb.damage = Float.NaN;
            is("shot: NaN refused", !ModLan.shotOk(eb, 0, 0));
        }
        {   // v45 stream diet: a captured frame deflates and still parses as a message header
            byte[] raw = new byte[20000];
            for (int i = 0; i < raw.length; i++) raw[i] = (byte) (i % 28 == 0 ? 0 : (i * 7) % 5);
            byte[] pm = ModLan.packedForTest(2, raw);
            int len = ((pm[1] & 255) << 24) | ((pm[2] & 255) << 16) | ((pm[3] & 255) << 8) | (pm[4] & 255);
            java.util.zip.Inflater z = new java.util.zip.Inflater();
            z.setInput(pm, 10, pm.length - 10);
            byte[] back = new byte[raw.length];
            int got = z.inflate(back);
            is("diet: packed frame is smaller (" + pm.length + " of " + raw.length + ") and round-trips", pm[0] == 6 && pm[5] == 2 && len == pm.length - 5 && got == raw.length && java.util.Arrays.equals(raw, back));
            byte[] small = ModLan.packedForTest(3, new byte[40]);
            is("diet: small messages stay plain", small[0] == 3 && small.length == 45);
        }
        is("clean: control characters and length", ModLan.clean("a\nb\u0007cdef", 4).equals("abcd"));
        System.out.println(bad == 0 ? "V49 VALUES-OK" : "V49 VALUES-FAIL " + bad);
        System.exit(0);
    }
}
