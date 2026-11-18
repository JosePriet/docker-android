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
        ModLan.hashForTest("00ff00ff00ff00ff");   // no APK in the JVM
        java.net.ServerSocket ss = new java.net.ServerSocket(ModLan.PORT);
        Thread j = new Thread(new Runnable() { public void run() { ModLan.join("127.0.0.1"); } });
        j.start();
        java.net.Socket hs = ss.accept();
        DataInputStream hin = new DataInputStream(hs.getInputStream());
        byte[] hb = new byte[6]; hin.readFully(hb);
        is("link: guest opens with the HELLO tag", "SCLAN2".equals(new String(hb, "UTF-8")));
        String gv = hin.readUTF(); hin.readUTF(); hin.readUTF();
        is("link: guest sends an empty room code for a public room", hin.readUTF().length() == 0);
        is("link: guest sends its content hash", hin.readUTF().equals(ModLan.contentHash()));
        is("link: guest sends its version (" + gv + ")", gv.equals(ModLan.myVersion()));
        { DataOutputStream ok = new DataOutputStream(hs.getOutputStream()); ok.writeByte(0); ok.writeUTF("Ana"); ok.writeUTF("ESP"); ok.flush(); }   // host reply: accepted, then its name
        j.join(6000);
        Thread.sleep(300);
        is("link: guest connected", ModLan.connected && ModLan.role == ModLan.GUEST);
        is("link: host name kept (" + ModLan.peerLabel() + ")", ModLan.peerLabel().equals("Ana ESP"));
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
        go.write("SCLAN2".getBytes("UTF-8")); go.writeUTF(ModLan.myVersion()); go.writeUTF("Ana"); go.writeUTF("ESP"); go.writeUTF(""); go.writeUTF(ModLan.contentHash()); go.flush();
        g.setSoTimeout(3000);
        is("host: same version accepted", g.getInputStream().read() == 0);
        Thread.sleep(300);
        is("host: linked", ModLan.connected && ModLan.role == ModLan.HOST);
        go.writeByte(3); go.writeInt(64 << 20); go.flush();   // a 64 MB message header
        Thread.sleep(500);
        is("host: oversize message ends the link", !ModLan.connected);
        g.close();
        ModLan.stop();
        // owner 2026-11-18: a private local room needs its code; public rooms do not
        ModLan.lanPub = false; ModLan.lanCode = "AB3K";
        ModLan.hostForTest();
        Thread.sleep(400);
        int[] codeAns = new int[4];
        String[] tries = {"", "ZZZZ", "ab3k"};
        for (int i = 0; i < tries.length; i++) {
            g = new java.net.Socket("127.0.0.1", ModLan.PORT);
            go = new DataOutputStream(g.getOutputStream());
            go.write("SCLAN2".getBytes("UTF-8")); go.writeUTF(ModLan.myVersion()); go.writeUTF("Ana"); go.writeUTF("ESP"); go.writeUTF(tries[i]); go.writeUTF(ModLan.contentHash()); go.flush();
            g.setSoTimeout(3000);
            codeAns[i] = g.getInputStream().read();
            if (i < 2) g.close();
        }
        is("room: private, no code -> asked for it (" + codeAns[0] + ")", codeAns[0] == 4);
        is("room: private, wrong code refused (" + codeAns[1] + ")", codeAns[1] == 4);
        Thread.sleep(300);
        is("room: private, right code (any case) accepted (" + codeAns[2] + ")", codeAns[2] == 0 && ModLan.connected && ModLan.role == ModLan.HOST);
        g.close();
        ModLan.stop();
        ModLan.lanPub = false; ModLan.lanCode = "AB3K";
        ModLan.hostForTest();
        Thread.sleep(400);
        int last = -1;
        for (int i = 0; i < 6; i++) {
            g = new java.net.Socket("127.0.0.1", ModLan.PORT);
            go = new DataOutputStream(g.getOutputStream());
            go.write("SCLAN2".getBytes("UTF-8")); go.writeUTF(ModLan.myVersion()); go.writeUTF("Ana"); go.writeUTF("ESP"); go.writeUTF(i < 5 ? "QQQQ" : "AB3K"); go.writeUTF(ModLan.contentHash()); go.flush();
            g.setSoTimeout(3000);
            last = g.getInputStream().read();
            g.close();
        }
        is("room: 5 wrong codes lock the address out, even with the right one (" + last + ")", last == 3 && !ModLan.connected);
        ModLan.stop();
        ModLan.lanPub = true; ModLan.lanCode = "";
        ModLan.hostForTest();
        Thread.sleep(400);
        g = new java.net.Socket("127.0.0.1", ModLan.PORT);
        go = new DataOutputStream(g.getOutputStream());
        go.write("SCLAN2".getBytes("UTF-8")); go.writeUTF(ModLan.myVersion()); go.writeUTF("Ana"); go.writeUTF("ESP"); go.writeUTF(""); go.writeUTF("0123456789abcdef"); go.flush();
        g.setSoTimeout(3000);
        is("files: same version, other content hash refused", g.getInputStream().read() == 5 && !ModLan.connected);
        g.close();
        ModLan.stop();
        is("room: new codes are 4 characters of the code alphabet", ModLan.newCode().length() == 4 && ModLanUi.codeChars(ModLan.newCode(), 4).length() == 4);
        // v45: texture keys and shot classes
        is("def: stock drawable ok", ModLan.defOk("R" + 0x7f020010) && ModLan.defOk("Lhull_mantis_s5") && ModLan.defOk("Mfx.glow"));
        is("def: others refused", !ModLan.defOk("R5") && !ModLan.defOk("R" + 0x01080000) && !ModLan.defOk("L../x") && !ModLan.defOk("Xabc") && !ModLan.defOk("L a"));
        is("shot class: projectile ok", ModLan.shotClassForTest(EnergyBullet.class.getName()) == EnergyBullet.class);
        is("shot class: others refused", ModLan.shotClassForTest("java.lang.Runtime") == null && ModLan.shotClassForTest("fr.testudo.spacecorsair.mod.ModLan") == null
            && ModLan.shotClassForTest("fr.testudo.spacecorsair.business.projectiles.Projectile") == null && ModLan.shotClassForTest("fr.testudo.spacecorsair.business.projectiles.LaserBeam") == null);
        {
            EnergyBullet eb = new EnergyBullet();
            eb.position.set(100, 100); eb.speed.set(1, 1); eb.damage = 5.0e8f; eb.lifeTimeInMilli = 999999;
            is("shot: life clamped, damage left to the weapon tables (no flat cap)", ModLan.shotOk(eb, 0, 0) && eb.damage == 5.0e8f && eb.lifeTimeInMilli == 60000);
            eb.position.set(290, 0);
            is("shot: 290 from the ship ok, 310 refused (spec 300)", ModLan.shotOk(eb, 0, 0) && !ModLan.shotOk(eb, -20, 0));
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
        is("nick: kept", ModLanUi.safeNick("Maykel_01").equals("Maykel_01") && ModLanUi.safeNick("  Ana  ").equals("Ana"));
        is("nick: bad ones replaced", ModLanUi.safeNick("x").startsWith("Player") && ModLanUi.safeNick("p.u.t.a").startsWith("Player") && ModLanUi.safeNick("<b>!!</b>").equals("bb"));
        is("country: list only", ModLanUi.safeCountry("PAN").equals("PAN") && ModLanUi.safeCountry("XXX").equals("") && ModLanUi.label("Ana", "").equals("Ana ?"));
        is("flags: 249 sorted codes", ModFlagData.CODES.length == 249 && ModLanUi.flagIndex("PAN") > ModLanUi.flagIndex("ESP") && ModFlagData.EN.length == 249 && ModFlagData.ES.length == 249);
        is("clean: control characters and length", ModLan.clean("a\nb\u0007cdef", 4).equals("abcd"));
        netTests();
        System.out.println(bad == 0 ? "V49 VALUES-OK" : "V49 VALUES-FAIL " + bad);
        System.exit(0);
    }

    static void netTests() throws Exception {
        // ---- v45 internet: small stream codec
        {
            ModLanSync.reset();
            java.io.ByteArrayOutputStream bo = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream o = new java.io.DataOutputStream(bo);
            int n = 0;
            ModLanSync.frameStart();
            if (ModLanSync.sprite(o, false, 7, 100.25f, -200.5f, 45f, 255, 255, 255, 255, 1, 64, 32, 0, 0, 1, 1, false, 0, 0)) n++;
            if (ModLanSync.sprite(o, true, 9, 3f, 4f, 0f, 128, 255, 0, 64, 2 | 16, 300, 120, 0.25f, 0f, 0.5f, 1f, true, 0.1f, 0.2f)) n++;
            if (ModLanSync.text(o, 10, 20, 255, 255, 0, 0, 1, 2, "1234")) n++;
            if (ModLanSync.point(o, -5, 6, 255, 255, 255, 255, 3.5f)) n++;
            if (ModLanSync.bar(o, 1, 2, 0.5f, -30f, 80f, 6f, 62.5f, new int[]{255, 0, 255, 0, 255, 10, 20, 30})) n++;
            boolean far = ModLanSync.sprite(o, false, 7, 99999f, 0, 0, 255, 255, 255, 255, 0, 1, 1, 0, 0, 1, 1, false, 0, 0);
            int size1 = bo.size();
            ModLan.Rec[] r = ModLanSync.read(new java.io.DataInputStream(new java.io.ByteArrayInputStream(bo.toByteArray())), n, 1000, 2000);
            is("lean: 5 records, far one refused, " + size1 + " bytes", n == 5 && !far && size1 < 120);
            is("lean: sprite place, heading, size", r[0].kind == 0 && Math.abs(r[0].x - 1100.25f) <= 0.26f && Math.abs(r[0].y - 1799.5f) <= 0.26f && Math.abs(r[0].spin - 45f) < 0.01f && r[0].w == 64 && r[0].h == 32 && r[0].a == 1f && r[0].id == 7);
            is("lean: fx window, edge, colour", r[1].kind == 1 && r[1].u0 == 0.25f && r[1].u1 == 0.5f && r[1].e1 == 0.2f && (r[1].flags & 2) != 0 && Math.abs(r[1].a - 128 / 255f) < 0.01f && r[1].spin == 0);
            is("lean: text, point, bar", "1234".equals(r[2].text) && r[2].tsize == 2 && r[3].psize == 3.5f && r[4].w == 80f && r[4].h == 6f && r[4].psize == 62.5f && r[4].v0 == -30f);
            // a sprite that looks the same two frames running gets a style; it is used once the style had time to arrive
            ModLanSync.frameStart();
            bo.reset();
            ModLanSync.sprite(o, false, 7, 1, 1, 0, 255, 255, 255, 255, 1, 64, 32, 0, 0, 1, 1, false, 0, 0);
            is("lean: style made on the second frame, not used yet", ModLanSync.newStyles.size() == 1 && bo.size() > 10);
            byte[] st = ModLanSync.newStyles.get(0);
            ModLanSync.style(st);
            Thread.sleep(ModLanSync.STYLE_WAIT_MS + 50);
            ModLanSync.frameStart();
            bo.reset();
            ModLanSync.sprite(o, false, 7, 1, 1, 0, 255, 255, 255, 255, 1, 64, 32, 0, 0, 1, 1, false, 0, 0);
            ModLan.Rec[] r2 = ModLanSync.read(new java.io.DataInputStream(new java.io.ByteArrayInputStream(bo.toByteArray())), 1, 0, 0);
            is("lean: styled sprite is 7 bytes and reads back", bo.size() == 7 && r2[0].kind == 0 && r2[0].id == 7 && r2[0].w == 64 && r2[0].h == 32 && r2[0].flags == 1);
            boolean threw = false;
            try { ModLanSync.style(new byte[5]); } catch (java.io.IOException e) { threw = true; }
            is("lean: bad style refused", threw);
            // gliding: paired by look and order, not across a jump
            ModLan.Rec a0 = new ModLan.Rec(), a1 = new ModLan.Rec(), b0 = new ModLan.Rec(), b1 = new ModLan.Rec();
            a0.key = 5; a0.tx = 0; a0.ty = 0; a0.ts = 350; a1.key = 5; a1.tx = 100; a1.ty = 0;
            b0.key = 5; b0.tx = 10; b0.ty = 20; b0.ts = 10; b1.key = 5; b1.tx = 5000; b1.ty = 0;
            ModLan.Rec[] pa = {a0, a1}, pb = {b0, b1};
            java.util.HashMap<Long, Integer> ia = ModLanSync.index(pa, 2);
            ModLanSync.index(pb, 2);
            ModLanSync.pair(pb, 2, pa, ia);
            ModLanSync.glide(pb, 2, 0.5f);
            is("lean: glide halfway, heading the short way, jump not glided", b0.x == 5 && b0.y == 10 && Math.abs(b0.spin - 360f) < 0.01f && b1.x == 5000 && b1.from == null);
        }
        // ---- v45 internet: the handshake over a UDP link, both roles
        {
            ModNet.Wire wh = new ModNet.Wire(0), wg = new ModNet.Wire(0);
            ModNet.Link lh = new ModNet.Link(wh, 4242), lg = new ModNet.Link(wg, 4242);
            lh.connectTo(new java.net.InetSocketAddress("127.0.0.1", wg.port()));
            lg.connectTo(new java.net.InetSocketAddress("127.0.0.1", wh.port()));
            ModLan.hostNetForTest();
            final ModNet.Link flh = lh;
            final boolean[] acc = new boolean[1];
            Thread t = new Thread() { public void run() { acc[0] = ModLan.acceptNet(flh, "abc"); } };
            t.start();
            DataOutputStream go2 = new DataOutputStream(lg.getOutputStream());
            go2.write("SCLAN2".getBytes("UTF-8")); go2.writeUTF(ModLan.myVersion()); go2.writeUTF("Bo"); go2.writeUTF("PAN"); go2.writeUTF("ZZZZ"); go2.writeUTF(ModLan.contentHash()); go2.flush();   // internet: the lobby checked the code, the host ignores it
            lg.setSoTimeout(5000);
            int ans = lg.getInputStream().read();
            t.join(5000);
            is("net host: guest accepted over the UDP link", ans == 0 && acc[0] && ModLan.connected && ModLan.role == ModLan.HOST && ModLan.internet);
            is("net host: small stream on", ModLanSync.on);
            ModLan.stop();
            boolean bye = false;
            try { DataInputStream gi = new DataInputStream(lg.getInputStream()); gi.readUTF(); gi.readUTF(); for (int i = 0; i < 20; i++) { byte[] m = lg.next(1 << 18); if (m[0] == 5) bye = true; } } catch (java.io.IOException e) { /* end */ }
            is("net host: goodbye reaches the guest", bye || lg.finSeen());
            is("net host: stopped", !ModLan.connected && !ModLan.internet);
            lg.close();
            // guest role against a scripted host
            final ModNet.Wire wh2 = new ModNet.Wire(0), wg2 = new ModNet.Wire(0);
            final ModNet.Link lh2 = new ModNet.Link(wh2, 99), lg2 = new ModNet.Link(wg2, 99);
            lh2.connectTo(new java.net.InetSocketAddress("127.0.0.1", wg2.port()));
            lg2.connectTo(new java.net.InetSocketAddress("127.0.0.1", wh2.port()));
            Thread hs = new Thread() { public void run() { try {
                lh2.setSoTimeout(5000);
                DataInputStream hi2 = new DataInputStream(lh2.getInputStream());
                byte[] tag = new byte[6]; hi2.readFully(tag); hi2.readUTF(); hi2.readUTF(); hi2.readUTF(); hi2.readUTF(); hi2.readUTF();
                DataOutputStream ho2 = new DataOutputStream(lh2.getOutputStream());
                ho2.writeByte(0); ho2.writeUTF("Ana"); ho2.writeUTF("ESP"); ho2.flush();
            } catch (Throwable e) { e.printStackTrace(); } } };
            hs.start();
            boolean joined = ModLan.joinNet(lg2);
            hs.join(5000);
            is("net guest: joined over the UDP link (" + ModLan.peerLabel() + ")", joined && ModLan.connected && ModLan.role == ModLan.GUEST && ModLan.internet && ModLan.peerLabel().equals("Ana ESP"));
            is("net guest: no death fee as an internet guest", ModLan.guestFeeFree());
            ModLan.stop();
            is("net guest: fee back after leaving", !ModLan.guestFeeFree());
            lh2.close();
        }
        // ---- v45 internet: service answers, addresses, save signature
        {
            ModLobby.Reply rp = ModLobby.parse("ok\ncode=ABCD\nn=1\njoin\tj1\t-5\tid\tBo\t?\t1.2.3.4:5,[2001:db8::1]:6\t\n" + new String(new char[5000]).replace('\0', 'x') + "\n", 200);
            is("lobby: answer parsed, oversize line dropped", rp.ok() && rp.get("code").equals("ABCD") && rp.rows.size() == 1 && rp.rows.get(0).length == 8 && rp.rows.get(0)[2].equals("-5"));
            is("lobby: addresses are literals only", ModLobby.addrs("1.2.3.4:5000,[2001:db8::1]:6000,evil.example:8000,999.1.1.1:5000,1.2.3.4:70000").size() == 2);
            String[] badAddr = {"127.0.0.1:5000", "0.0.0.0:5000", "255.255.255.255:5000", "224.0.0.1:5000", "169.254.1.1:5000", "1.2.3.4:80", "1.2.3.4:+5000", "1.2.3:5000", "1.2.3.4.5:5000",
                "[::1]:5000", "[::]:5000", "[ff02::1]:5000", "[fe80::1]:5000", "[1:2:3]:5000", "[0:0:0:0:0:ffff:ffff:ffff]:5000", "[::ffff:7f00:1]:5000", "[::ffff:e000:1]:5000", "[::ffff:0:1]:5000", "[a:b.c0ffee.de]:5000", "[1::2::3]:5000", "[12345::1]:5000", "[1:2:3:4:5:6:7:8:9]:5000", "[::ffff:1.2.3.4]:5000", "[g::1]:5000", "x:5000", ":5000", "1.2.3.4:"};
            int refused = 0;
            for (String x : badAddr) if (ModNet.parse(x) == null) refused++; else System.out.println("  accepted: " + x);
            is("net: loopback, any, broadcast, multicast, link-local, low ports and non-literals are refused (" + refused + "/" + badAddr.length + ")", refused == badAddr.length);
            java.net.InetSocketAddress p6 = ModNet.parse("[2001:db8::a:1]:6000"), p6f = ModNet.parse("[2001:db8:0:0:0:0:a:1]:6000");
            is("net: IPv6 literals parse without a lookup and round-trip", p6 != null && p6.equals(p6f) && ModNet.show(p6).equals("[2001:db8:0:0:0:a:1]:6000".replace("0:0:0:a", "0:0:0:0:a")) && ModNet.parse("192.168.1.20:40000") != null && ModNet.parse("[2001:db8::]:6000") != null);
            is("lobby: form encoding", ModLobby.form("a", "x y&z", "b", null, "c", "ñ").equals("a=x+y%26z&c=%C3%B1"));
            is("lobby: refusal texts", ModLobby.refusal(ModLobby.parse("gone\n", 404)).length() > 0 && ModLobby.refusal(new ModLobby.Reply()).length() > 0);
            is("save: signature is stable and changes with the content", ModSaveSig.sign("abc".getBytes()).equals(ModSaveSig.sign("abc".getBytes())) && !ModSaveSig.sign("abc".getBytes()).equals(ModSaveSig.sign("abd".getBytes())) && ModSaveSig.sign("abc".getBytes()).length() == 64);
            is("pvp room: the other player can be hit in sectors only when on", true);
        }
        // ---- v45: checks against the tables, code entry, guest position
        {
            ModLanCheck.Limits top = ModLanCheck.limits(null);
            is("check: no declaration = the top of the tables (" + (int) top.shot + " a shot, " + (int) top.dps + " a second, hull " + (int) top.hull + ")", top.shot > 0 && top.dps > 0 && top.hull > 0 && !top.exact);
            ModLanCheck.Decl d = new ModLanCheck.Decl();
            d.level = 5;
            fr.testudo.spacecorsair.business.loot.SpaceObjectType laserT = null, shipT = null;
            for (fr.testudo.spacecorsair.business.loot.SpaceObjectType t : fr.testudo.spacecorsair.business.loot.SpaceObjectType.values()) {
                fr.testudo.spacecorsair.business.loot.stuff.GearSpec g;
                try { g = t.getGearSpec(); } catch (Throwable e) { continue; }
                if (laserT == null && g instanceof fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec && ((fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec) g).damage > 0) laserT = t;
                if (shipT == null && g instanceof fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec) shipT = t;
            }
            is("check: the item list has lasers and hulls", laserT != null && shipT != null);
            d.laser = laserT.name(); d.ship = shipT.name();
            fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec ls = (fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec) laserT.getGearSpec();
            fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec ss = (fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec) shipT.getGearSpec();
            ModLanCheck.Limits m = ModLanCheck.limits(d);
            float hullWant = fr.testudo.spacecorsair.business.player.XpBuilder.PLAYER_SHIP_LIFE[5] * Math.max(0.1f, ss.lifeBooster) * ModLanCheck.HULL_SLACK;
            is("check: a declared laser and hull give ceilings from this phone's tables (shot " + (int) m.shot + ", hull " + (int) m.hull + ")",
                m.exact && m.flags == 0 && m.shot >= ModLanCheck.DMG_SLACK * ls.damage && m.shot <= top.shot * 100 && Math.abs(m.hull - hullWant) < 1f);
            ModLanCheck.Decl lie = new ModLanCheck.Decl();
            lie.level = 99999; lie.laser = "noSuchLaser"; lie.ship = "java.lang.Runtime"; lie.maxHull = 1.0e9f; lie.maxShield = Float.NaN;
            ModLanCheck.Limits lm = ModLanCheck.limits(lie);
            is("check: unknown items, an impossible level and impossible hull numbers are flagged, ceilings stay finite (flags " + lm.flags + ")", lm.flags >= 5 && !lm.exact && lm.shot > 0 && lm.shot < 1.0e9f && lm.hull < 1.0e9f);
            ModLanCheck.Decl rt = ModLanCheck.decode(ModLanCheck.encode(d));
            is("check: declaration round-trip", rt.same(d));
            boolean big = false;
            try { ModLanCheck.decode(new byte[700]); } catch (java.io.IOException e) { big = true; }
            is("check: an oversized declaration is refused", big);
            ModLanCheck.reset();
            long t0 = 1000000;
            float one = ModLanCheck.allow(m, 1.0e9f, t0);
            is("check: one shot is cut to the shot ceiling", one == Math.min(m.shot, 3 * m.dps));
            float sum = one;
            for (int i = 0; i < 100000; i++) sum += ModLanCheck.allow(m, m.shot, t0);
            is("check: a burst cannot pass three seconds of the damage-per-second ceiling", sum <= 3 * m.dps * 1.001f && ModLanCheck.allow(m, m.shot, t0) == 0);
            float later = ModLanCheck.allow(m, m.shot, t0 + 1000);
            is("check: damage room comes back with time", later > 0 && later <= m.dps * 1.001f);
            is("check: a normal shot passes untouched", ModLanCheck.allow(m, ls.damage * 0.5f, t0 + 60000) == ls.damage * 0.5f);
            is("code entry: only the code alphabet, upper case, 4 at most", ModLanUi.codeChars("a0b1c-d2e", 4).equals("ABCD") && ModLanUi.codeChars("oO0iI1", 4).equals("") && ModLanUi.codeChars("zz99zz", 4).equals("ZZ99"));
            long now = 5000000000L;
            float[] at = ModLan.posOf(ModLan.posLine("Vector 3", 120.5f, -40f, now), "Vector 3", now + 5000);
            is("guest position: read back for the same sector", at != null && at[0] == 120.5f && at[1] == -40f);
            is("guest position: another sector, an old record or bad numbers give nothing", ModLan.posOf(ModLan.posLine("Vector 3", 1, 2, now), "Vector 4", now) == null
                && ModLan.posOf(ModLan.posLine("Vector 3", 1, 2, now), "Vector 3", now + 8L * 24 * 3600 * 1000) == null
                && ModLan.posOf("Vector 3|NaN|2|" + now, "Vector 3", now) == null && ModLan.posOf("x", "x", now) == null);
            is("text: English stays English when the phone is not Spanish", "CO-OP".equals(ModLang.en("CO-OP")));
        }
    }
}
