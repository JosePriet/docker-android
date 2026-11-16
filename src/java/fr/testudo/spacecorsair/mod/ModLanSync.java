package fr.testudo.spacecorsair.mod;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * v45 internet data diet for the co-op stream (SPEC-FINAL section 3 target: 6-12 KB/s host to guest).
 *
 * <p>The same render-list records as the LAN stream, sent small:
 * <ul>
 * <li>positions as 16-bit steps of half a unit around the sender's ship, headings as 16 bits, white opaque colours left out;</li>
 * <li>a sprite's fixed part (texture, size, texture window, flags) is sent once as a "style" on the reliable channel and
 * then named by a 16-bit number; a style is only made for a sprite that looked the same two frames running, so animated
 * effects stay inline;</li>
 * <li>15 frames a second (10 in data saver) instead of 30, radar marks twice a second, slow values only when they change;</li>
 * <li>the receiver draws one frame behind and glides every record from its previous place to the new one.</li>
 * </ul>
 */
final class ModLanSync {
    private ModLanSync() {}

    /** This link uses the small format (internet links; LAN keeps the v45 LAN stream). Set before the link starts. */
    static volatile boolean on;
    /** Data saver: 10 frames a second, marks once a second. */
    static volatile boolean saver;

    static final float Q = 2.0f;                 // steps per world unit
    static final int MAX_STYLES = 16384;
    static final int K_WHITE = 8, K_STYLED = 16, K_SPIN0 = 32;

    static int hz() { return !on ? ModLan.SEND_HZ : saver ? 10 : 15; }

    static int marksEveryMs() { return saver ? 1000 : 500; }

    // ------------------------------------------------------------------ sender
    static final class Style {
        int kind, tex, flags;
        float w, h, u0, v0, u1, v1, e0, e1;

        Style copy() {
            Style s = new Style();
            s.kind = kind; s.tex = tex; s.flags = flags; s.w = w; s.h = h; s.u0 = u0; s.v0 = v0; s.u1 = u1; s.v1 = v1; s.e0 = e0; s.e1 = e1;
            return s;
        }

        @Override public int hashCode() {
            int x = kind * 31 + tex;
            x = x * 31 + flags;
            x = x * 31 + Float.floatToIntBits(w); x = x * 31 + Float.floatToIntBits(h);
            x = x * 31 + Float.floatToIntBits(u0); x = x * 31 + Float.floatToIntBits(v0);
            x = x * 31 + Float.floatToIntBits(u1); x = x * 31 + Float.floatToIntBits(v1);
            x = x * 31 + Float.floatToIntBits(e0); x = x * 31 + Float.floatToIntBits(e1);
            return x;
        }

        @Override public boolean equals(Object o) {
            if (!(o instanceof Style)) return false;
            Style s = (Style) o;
            return kind == s.kind && tex == s.tex && flags == s.flags && same(w, s.w) && same(h, s.h) && same(u0, s.u0) && same(v0, s.v0)
                && same(u1, s.u1) && same(v1, s.v1) && same(e0, s.e0) && same(e1, s.e1);
        }

        private static boolean same(float a, float b) { return Float.floatToIntBits(a) == Float.floatToIntBits(b); }
    }

    private static final HashMap<Style, Integer> styleOut = new HashMap<Style, Integer>();
    private static HashMap<Style, Boolean> seenLast = new HashMap<Style, Boolean>(), seenNow = new HashMap<Style, Boolean>();
    private static final Style probe = new Style();
    private static final long[] styleAt = new long[MAX_STYLES];
    static final int STYLE_WAIT_MS = 600;
    /** Bodies of new style messages, in order; the caller sends them on the reliable channel before the frame. */
    static final ArrayList<byte[]> newStyles = new ArrayList<byte[]>();

    static synchronized void reset() {
        styleOut.clear();
        seenLast.clear();
        seenNow.clear();
        newStyles.clear();
        synchronized (stylesIn) { stylesIn.clear(); }
    }

    /** Start of one captured frame (sender thread). */
    static synchronized void frameStart() {
        HashMap<Style, Boolean> t = seenLast;
        seenLast = seenNow;
        seenNow = t;
        seenNow.clear();
    }

    private static boolean pos(float v) { return v >= -16000f && v <= 16000f; }

    private static int q(float v) { return Math.round(v * Q); }

    private static int head(int kind, int a, int r, int g, int b) {
        return kind | (a == 255 && r == 255 && g == 255 && b == 255 ? K_WHITE : 0);
    }

    private static void colour(DataOutputStream o, int head, int a, int r, int g, int b) throws IOException {
        if ((head & K_WHITE) == 0) { o.writeByte(a); o.writeByte(r); o.writeByte(g); o.writeByte(b); }
    }

    /** One sprite record. x, y are relative to the frame origin. False = out of range, nothing written. */
    static synchronized boolean sprite(DataOutputStream o, boolean fx, int tex, float x, float y, float spin, int a, int r, int g, int b, int flags,
                                       float w, float h, float u0, float v0, float u1, float v1, boolean edge, float e0, float e1) throws IOException {
        if (!pos(x) || !pos(y)) return false;
        Style p = probe;
        p.kind = fx ? 1 : 0; p.tex = tex; p.flags = flags; p.w = w; p.h = h;
        p.u0 = fx ? u0 : 0; p.v0 = fx ? v0 : 0; p.u1 = fx ? u1 : 1; p.v1 = fx ? v1 : 1; p.e0 = edge ? e0 : 0; p.e1 = edge ? e1 : 0;
        Integer id = styleOut.get(p);
        long now = System.currentTimeMillis();
        if (id == null && styleOut.size() < MAX_STYLES) {
            if (seenLast.containsKey(p)) {   // looked the same last frame too: worth a style
                id = styleOut.size();
                styleAt[id] = now;
                Style keep = p.copy();
                styleOut.put(keep, id);
                java.io.ByteArrayOutputStream bo = new java.io.ByteArrayOutputStream(40);
                DataOutputStream so = new DataOutputStream(bo);
                so.writeShort(id); so.writeByte(keep.kind); so.writeShort(keep.tex); so.writeByte(keep.flags);
                so.writeFloat(keep.w); so.writeFloat(keep.h); so.writeFloat(keep.u0); so.writeFloat(keep.v0); so.writeFloat(keep.u1); so.writeFloat(keep.v1);
                so.writeFloat(keep.e0); so.writeFloat(keep.e1);
                newStyles.add(bo.toByteArray());
            } else if (seenNow.size() < 512 && !seenNow.containsKey(p)) {
                seenNow.put(p.copy(), Boolean.TRUE);
            }
        }
        if (id != null && now - styleAt[id] < STYLE_WAIT_MS) id = null;   // the style travels on the reliable channel: inline until it has surely arrived
        int hd = head(fx ? 1 : 0, a, r, g, b) | (id != null ? K_STYLED : 0) | (spin == 0 ? K_SPIN0 : 0);
        o.writeByte(hd);
        o.writeShort(q(x)); o.writeShort(q(y));
        if (id != null) o.writeShort(id);
        else {
            o.writeShort(tex); o.writeByte(flags); o.writeFloat(w); o.writeFloat(h);
            if (fx) {
                o.writeFloat(u0); o.writeFloat(v0); o.writeFloat(u1); o.writeFloat(v1);
                if (edge) { o.writeFloat(e0); o.writeFloat(e1); }
            }
        }
        if (spin != 0) o.writeShort(spinQ(spin));
        colour(o, hd, a, r, g, b);
        return true;
    }

    static int spinQ(float deg) {
        float d = deg % 360f;
        if (d < 0) d += 360f;
        return Math.round(d * (65536f / 360f)) & 0xFFFF;
    }

    static boolean text(DataOutputStream o, float x, float y, int a, int r, int g, int b, int flags, int tsize, String txt) throws IOException {
        if (!pos(x) || !pos(y)) return false;
        int hd = head(2, a, r, g, b);
        o.writeByte(hd); o.writeShort(q(x)); o.writeShort(q(y));
        colour(o, hd, a, r, g, b);
        o.writeByte(flags); o.writeByte(tsize); o.writeUTF(txt);
        return true;
    }

    static boolean point(DataOutputStream o, float x, float y, int a, int r, int g, int b, float size) throws IOException {
        if (!pos(x) || !pos(y)) return false;
        int hd = head(3, a, r, g, b);
        o.writeByte(hd); o.writeShort(q(x)); o.writeShort(q(y));
        colour(o, hd, a, r, g, b);
        o.writeByte(Math.max(0, Math.min(255, Math.round(size * 4f))));
        return true;
    }

    static boolean bar(DataOutputStream o, float x, float y, float cx, float cy, float w, float h, float pct, int[] c) throws IOException {
        if (!pos(x) || !pos(y)) return false;
        o.writeByte(4); o.writeShort(q(x)); o.writeShort(q(y));
        o.writeFloat(cx); o.writeFloat(cy);
        o.writeShort(Math.max(0, Math.min(65535, Math.round(w * 8f)))); o.writeShort(Math.max(0, Math.min(65535, Math.round(h * 8f))));
        o.writeByte(Math.max(0, Math.min(200, Math.round(pct * 2f))));
        for (int i = 0; i < 8; i++) o.writeByte(c[i]);
        return true;
    }

    // ------------------------------------------------------------------ receiver
    private static final HashMap<Integer, Style> stylesIn = new HashMap<Integer, Style>();

    private static float fin(float v) throws IOException {
        if (Float.isNaN(v) || Float.isInfinite(v)) throw new IOException("not a number");
        return v;
    }

    private static float dim(float v) throws IOException { return Math.max(-20000f, Math.min(20000f, fin(v))); }

    /** A style message from the peer (reader thread). */
    static void style(byte[] b) throws IOException {
        if (b.length != 38) throw new IOException("bad style");
        DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
        int id = in.readUnsignedShort();
        Style s = new Style();
        s.kind = in.readUnsignedByte(); s.tex = in.readUnsignedShort(); s.flags = in.readUnsignedByte();
        s.w = dim(in.readFloat()); s.h = dim(in.readFloat());
        s.u0 = fin(in.readFloat()); s.v0 = fin(in.readFloat()); s.u1 = fin(in.readFloat()); s.v1 = fin(in.readFloat());
        s.e0 = fin(in.readFloat()); s.e1 = fin(in.readFloat());
        if (s.kind > 1 || id >= MAX_STYLES) throw new IOException("bad style");
        synchronized (stylesIn) { stylesIn.put(id, s); }
    }

    /**
     * Reads n records. Offsets become positions around (ox, oy). A record whose style has not arrived is read and
     * left out (kind -1), never an error: over UDP a frame can pass its style.
     */
    static ModLan.Rec[] read(DataInputStream in, int n, float ox, float oy) throws IOException {
        ModLan.Rec[] out = new ModLan.Rec[n];
        for (int i = 0; i < n; i++) {
            ModLan.Rec r = new ModLan.Rec();
            int hd = in.readUnsignedByte();
            int kind = hd & 7;
            r.kind = kind;
            r.tx = r.x = ox + in.readShort() / Q;
            r.ty = r.y = oy + in.readShort() / Q;
            boolean white = (hd & K_WHITE) != 0;
            if (kind == 0 || kind == 1) {
                if ((hd & K_STYLED) != 0) {
                    int id = in.readUnsignedShort();
                    Style s;
                    synchronized (stylesIn) { s = stylesIn.get(id); }
                    if (s == null) r.kind = -1;
                    else {
                        r.kind = s.kind; r.id = s.tex; r.flags = s.flags; r.w = s.w; r.h = s.h;
                        r.u0 = s.u0; r.v0 = s.v0; r.u1 = s.u1; r.v1 = s.v1; r.e0 = s.e0; r.e1 = s.e1;
                    }
                    r.key = 0x40000 | id;
                } else {
                    r.id = in.readUnsignedShort();
                    r.flags = in.readUnsignedByte();
                    r.w = dim(in.readFloat()); r.h = dim(in.readFloat());
                    if (kind == 1) {
                        r.u0 = fin(in.readFloat()); r.v0 = fin(in.readFloat()); r.u1 = fin(in.readFloat()); r.v1 = fin(in.readFloat());
                        if ((r.flags & 16) != 0) { r.e0 = fin(in.readFloat()); r.e1 = fin(in.readFloat()); }
                    } else {
                        r.u0 = 0; r.v0 = 0; r.u1 = 1; r.v1 = 1;
                    }
                    r.key = (kind << 16) | r.id;
                }
                r.ts = r.spin = (hd & K_SPIN0) != 0 ? 0 : in.readUnsignedShort() * (360f / 65536f);
                colour(in, r, white);
            } else if (kind == 2) {
                colour(in, r, white);
                r.flags = in.readUnsignedByte();
                r.tsize = in.readUnsignedByte();
                r.text = ModLang.tr(ModLan.clean(in.readUTF(), 200));   // sent in English, shown in this phone's language
                r.key = 0x80000 | (r.text.hashCode() & 0xFFFF);
            } else if (kind == 3) {
                colour(in, r, white);
                r.psize = in.readUnsignedByte() / 4f;
                r.key = 0xC0000;
            } else if (kind == 4) {
                r.u0 = fin(in.readFloat()); r.v0 = fin(in.readFloat());
                r.w = Math.max(1f, Math.min(512f, in.readUnsignedShort() / 8f)); r.h = Math.max(1f, Math.min(512f, in.readUnsignedShort() / 8f));
                r.psize = in.readUnsignedByte() / 2f;
                r.a = in.readUnsignedByte() / 255f; r.r = in.readUnsignedByte() / 255f; r.g = in.readUnsignedByte() / 255f; r.b = in.readUnsignedByte() / 255f;
                r.xa = in.readUnsignedByte() / 255f; r.xr = in.readUnsignedByte() / 255f; r.xg = in.readUnsignedByte() / 255f; r.xb = in.readUnsignedByte() / 255f;
                r.key = 0x100000;
            } else {
                throw new IOException("bad record " + kind);
            }
            out[i] = r;
        }
        return out;
    }

    private static void colour(DataInputStream in, ModLan.Rec r, boolean white) throws IOException {
        if (white) { r.a = 1; r.r = 1; r.g = 1; r.b = 1; }
        else { r.a = in.readUnsignedByte() / 255f; r.r = in.readUnsignedByte() / 255f; r.g = in.readUnsignedByte() / 255f; r.b = in.readUnsignedByte() / 255f; }
    }

    /** Drops the records left out by {@link #read} (style not here yet). Returns the new count. */
    static int compact(ModLan.Rec[] recs, int n) {
        int k = 0;
        for (int i = 0; i < n; i++) if (recs[i].kind >= 0) recs[k++] = recs[i];
        return k;
    }

    // ------------------------------------------------------------------ gliding between frames (receiver, game thread)
    static final float GLIDE_MAX = 500f;         // farther than this between two frames is a different object: no glide

    /** Index of the k-th record of each kind+look in a frame, for pairing with the next frame. Reader thread. */
    static HashMap<Long, Integer> index(ModLan.Rec[] recs, int n) {
        HashMap<Long, Integer> idx = new HashMap<Long, Integer>(n * 2 + 2);
        HashMap<Integer, Integer> count = new HashMap<Integer, Integer>();
        for (int i = 0; i < n; i++) {
            Integer c = count.get(recs[i].key);
            int k = c == null ? 0 : c;
            count.put(recs[i].key, k + 1);
            recs[i].ord = k;
            idx.put(((long) recs[i].key << 20) | k, i);
        }
        return idx;
    }

    /** Pairs each record of the new frame with the same-numbered record of the same look in the previous frame. */
    static void pair(ModLan.Rec[] recs, int n, ModLan.Rec[] prev, HashMap<Long, Integer> prevIdx) {
        if (prev == null || prevIdx == null) return;
        for (ModLan.Rec p : prev) if (p != null) p.from = null;   // one frame of history only
        for (int i = 0; i < n; i++) {
            ModLan.Rec r = recs[i];
            Integer j = prevIdx.get(((long) r.key << 20) | r.ord);
            if (j == null || j >= prev.length) continue;
            ModLan.Rec p = prev[j];
            float dx = r.tx - p.tx, dy = r.ty - p.ty;
            if (dx * dx + dy * dy > GLIDE_MAX * GLIDE_MAX) continue;
            r.from = p;
        }
    }

    /** Sets every record's drawn place for progress t (0 = where it was a frame ago, 1 = where the newest frame has it). */
    static void glide(ModLan.Rec[] recs, int n, float t) {
        if (recs == null) return;
        for (int i = 0; i < n; i++) {
            ModLan.Rec r = recs[i];
            ModLan.Rec p = r.from;
            if (p == null || t >= 1f) { r.x = r.tx; r.y = r.ty; r.spin = r.ts; continue; }
            r.x = p.tx + (r.tx - p.tx) * t;
            r.y = p.ty + (r.ty - p.ty) * t;
            float d = r.ts - p.ts;
            if (d > 180f) d -= 360f; else if (d < -180f) d += 360f;
            r.spin = p.ts + d * t;
        }
    }
}
