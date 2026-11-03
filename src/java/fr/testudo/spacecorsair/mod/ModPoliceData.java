package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.HashMap;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;

/**
 * v42 police / militia rosters (plan "Police ships"): per faction (ModCapitals.FACTIONS order) the hulls it flies as police,
 * by class FRIGATE..CAPITAL. Player hull art from gpt-handoff-v34/hulls_current.csv (faction_key column; Industrial, titans
 * and the DEV hull left out) plus the ModFleet rv_ / kt_ NPC hulls for the Reavers and the Kre'tari. A class a faction lacks
 * flies its nearest smaller hull drawn larger (nearest larger drawn smaller below its smallest class). Police livery art is
 * "pol_" + art (src/genpolice42.py); without it the plain art is drawn tinted with the police colour.
 */
final class ModPoliceData {
    private ModPoliceData() { }

    static final int CLASSES = 6;   // ModShips.FRIGATE..CAPITAL

    /** Drawn size per class when a hull stands in for another class (inside ModV35.enemyClass's size bands). */
    static final int[] CLASS_SIZE = {95, 160, 300, 410, 580, 800};
    /** Size band per class (ModV35.enemyClass: <=100 F, <=200 D, <=320 C, <=420 BC, <=600 BS, else capital). */
    static final int[] CLASS_MIN = {60, 110, 210, 330, 430, 620};
    static final int[] CLASS_MAX = {100, 200, 320, 420, 600, 900};
    /** ModFleet AI per class: frigate BASIC, destroyer DEFENSOR, cruiser / battlecruiser FRELON, battleship / capital ALBATROS. */
    static final int[] AI = {ModFleet.BASIC, ModFleet.DEFENSOR, ModFleet.FRELON, ModFleet.FRELON, ModFleet.ALBATROS, ModFleet.ALBATROS};

    /** Police livery tint when pol_<art> is missing (light police blue). */
    static final float TINT_R = 0.55f, TINT_G = 0.75f, TINT_B = 1.0f;
    static final String PREFIX = "pol_";

    /** FACTIONS order (spartan, reaver, kretari, varn, ironclad, helion, warden); per class "art:size" entries. */
    static final String[][][] ROSTER = {
        {   // spartan
            {}, {"bastion:130", "hornet:200"}, {"mantis:300"}, {"verdant:420", "secret_spartan:460"}, {"monolith:600"}, {}},
        {   // reaver
            {"viper:80", "rv_raider:90", "rv_gunship:100"}, {"bulldog:150", "rv_hunter:120", "rv_marauder:150"},
            {"albatros:300", "raptor:300", "rv_corsair:160", "rv_lancer:190"}, {"warlord:400", "rv_warlord:300"},
            {"secret_reaver:640", "rv_dreadnought:420"}, {}},
        {   // kretari
            {"kt_scout:90", "kt_bomber:100", "kt_frigate:150"}, {"kt_destroyer:180"}, {"secret_kretari:330", "kt_cruiser:260", "kt_heavycruiser:300"},
            {"harbinger:420", "kt_battlecruiser:380"}, {"kt_battleship:450"}, {"kt_mothership:700"}},
        {   // varn
            {}, {"cobalt:190"}, {"hydra:300", "cardinal:320"}, {"sovereign:440", "sunlance:460", "secret_varn:460"},
            {"wraith:600", "bastille:660"}, {"moth:800"}},
        {   // ironclad
            {}, {}, {"sanctum:300", "ironside:320"}, {}, {"tempest:600", "imperator:640", "secret_ironclad:640"}, {}},
        {   // helion
            {"comet:90", "talon:85", "nightjar:95"}, {"aurora:150", "raven:150"}, {}, {"secret_helion:460"}, {}, {}},
        {   // warden
            {"shade:70", "kite:90"}, {"seraph:140", "tidewarden:130"}, {"secret_warden:330"}, {}, {}, {}},
    };

    /** One police hull: art key (without pol_), drawn size, ModFleet AI kind. */
    static final class Hull {
        final String art;
        final int cls, size, ai;
        Hull(String art, int cls, int size) { this.art = art; this.cls = cls; this.size = size; this.ai = AI[cls]; }
    }

    /** Roster class whose hulls fly as class cls for faction fi: cls itself, else the nearest smaller, else the nearest larger (-1 none). */
    static int sourceClass(int fi, int cls) {
        if (fi < 0 || fi >= ROSTER.length) return -1;
        String[][] r = ROSTER[fi];
        if (r[cls].length > 0) return cls;
        for (int c = cls - 1; c >= 0; c--) if (r[c].length > 0) return c;
        for (int c = cls + 1; c < CLASSES; c++) if (r[c].length > 0) return c;
        return -1;
    }

    /** Drawn size: a native hull keeps its art size inside the class band; a stand-in is drawn at the class size. */
    static int sizeFor(int cls, int src, int nativeSize) {
        if (src != cls) return CLASS_SIZE[cls];
        return Math.max(CLASS_MIN[cls], Math.min(CLASS_MAX[cls], nativeSize));
    }

    /** Hull number pick (0..n-1) of faction fi, class cls (null if the faction has no hulls at all). */
    static Hull hull(int fi, int cls, int pick) {
        int src = sourceClass(fi, cls);
        if (src < 0) return null;
        String[] row = ROSTER[fi][src];
        String e = row[Math.max(0, pick) % row.length];
        int k = e.indexOf(':');
        return new Hull(e.substring(0, k), cls, sizeFor(cls, src, Integer.parseInt(e.substring(k + 1))));
    }

    static Hull randomHull(int fi, int cls) {
        int src = sourceClass(fi, cls);
        if (src < 0) return null;
        return hull(fi, cls, (int) (Math.random() * ROSTER[fi][src].length));
    }

    /** Every art key the rosters use (agent C's pol_ livery list). */
    static java.util.List<String> arts() {
        java.util.ArrayList<String> out = new java.util.ArrayList<String>();
        for (String[][] f : ROSTER) for (String[] row : f) for (String e : row) {
            String a = e.substring(0, e.indexOf(':'));
            if (!out.contains(a)) out.add(a);
        }
        return out;
    }

    // ------------------------------------------------------------------ drawables
    /** The plain hull art drawn in the police colour (pol_<art> not shipped yet). */
    static final class Tinted extends Drawable {
        final Drawable base;

        Tinted(Vector2 dim, Drawable base) {
            super(dim, base.myTexture);
            this.base = base;
        }

        @Override
        public void draw(GL10 gl, Vector2 p, float spin, boolean cameraRelative, float a, float r, float g, float b, boolean zoomInsensitive, boolean background) {
            base.draw(gl, p, spin, cameraRelative, a, r * TINT_R, g * TINT_G, b * TINT_B, zoomInsensitive, background);
        }
    }

    private static final Map<String, Drawable> drawables = new HashMap<String, Drawable>();

    /** Police livery drawable for a hull: pol_<art>, else the tinted plain art, else null (art not loaded). */
    static Drawable drawable(Hull h) {
        Texture pol = ModArt.texture(PREFIX + h.art);
        Texture tex = pol != null ? pol : ModArt.texture(h.art);
        if (tex == null) return null;
        String key = (pol != null ? PREFIX : "tint:") + h.art + ":" + h.size;
        Drawable d = drawables.get(key);
        if (d == null || d.myTexture != tex) {
            Vector2 dim = new Vector2(h.size, h.size);
            Drawable art = new ModArt.Art(dim, tex, false);   // uploads its (lazy) texture on first draw
            d = pol != null ? art : new Tinted(new Vector2(h.size, h.size), art);
            drawables.put(key, d);
        }
        return d;
    }
}
