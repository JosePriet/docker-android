package fr.testudo.spacecorsair.mod;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;

/** v22 item icons (ChatGPT badges) for the weapon families and the faction secret weapons, at every getDrawableId() site (hooks17). */
public final class ModIcons {
    private ModIcons() {}

    private static SpaceObjectType last;

    /** Replaces SpaceObjectType.getDrawableId(): remembers the item for the apply call that follows. */
    public static int id(SpaceObjectType t) {
        last = t;
        return t.getDrawableId();
    }

    public static void applyBackground(ImageView iv) {
        Bitmap b = icon(iv);
        if (b != null) iv.setBackgroundDrawable(new BitmapDrawable(iv.getResources(), b));
    }

    public static void applyImage(ImageView iv) {
        Bitmap b = icon(iv);
        if (b != null) iv.setImageBitmap(b);
    }

    private static Bitmap icon(ImageView iv) {
        try {
            SpaceObjectType t = last;
            last = null;
            if (t == null || iv == null) return null;
            GearSpec g = t.getGearSpec();
            if (!(g instanceof LaserSpec)) return null;
            int f = ModWeapons.family((LaserSpec) g);
            return f < 0 ? null : ModComms.asset(iv.getContext(), ModWeapons.ICONS[f]);
        } catch (Throwable e) {
            return null;
        }
    }
}
