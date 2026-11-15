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
        j.join(6000);
        is("link: guest connected", ModLan.connected && ModLan.role == ModLan.GUEST);
        ModLan.stop();
        DataInputStream hin = new DataInputStream(hs.getInputStream());
        int type = hin.readUnsignedByte();
        is("stop: guest says bye (" + type + ")", type == 5);
        is("stop: link down", !ModLan.connected && ModLan.role == ModLan.NONE);
        hs.close(); ss.close();
        System.out.println(bad == 0 ? "V49 VALUES-OK" : "V49 VALUES-FAIL " + bad);
        System.exit(0);
    }
}
