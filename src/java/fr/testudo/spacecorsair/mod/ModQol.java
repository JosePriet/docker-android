package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.mission.MissionObjectiveColor;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.player.XpBuilder;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.civil.CivilFactory;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.PoliceShip;
import fr.testudo.spacecorsair.display.hud.Button;
import fr.testudo.spacecorsair.display.hud.HudImages;
import fr.testudo.spacecorsair.display.hud.Joystick;
import fr.testudo.spacecorsair.display.hud.Radar;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;

/**
 * v16 quality-of-life layer: options, HUD numbers, damage numbers, screen shake, gate level labels,
 * level-up notices + inbox, Tech I free repairs, bigger buttons, floating joystick, galaxy-map extras,
 * sector police response and Highway police scaling, and where-to-get texts. Every entry point is
 * called from a one-line smali hook and swallows its own errors.
 */
public class ModQol {

    // ================================================================== options (SharedPreferences, defaults below)
    private static SharedPreferences prefs;
    private static boolean optStick = true, optBars = true, optDmg = true, optBig = false, optThreat = false, optEdge = false;
    private static float optShake = 0.6f;
    private static boolean loaded;

    static SharedPreferences prefs() {
        if (prefs == null) {
            try {
                prefs = ObjectRegistry.INSTANCE.game.context.getSharedPreferences("modqol", Context.MODE_PRIVATE);
            } catch (Exception e) {
                return null;
            }
        }
        return prefs;
    }

    private static void load() {
        if (loaded) return;
        SharedPreferences p = prefs();
        if (p == null) return;
        loaded = true;
        optStick = p.getBoolean("fixedStick", true);
        optBars = p.getBoolean("barNumbers", true);
        optDmg = p.getBoolean("damageNumbers", true);
        optBig = p.getBoolean("bigButtons", false);
        optThreat = p.getBoolean("threatReadout", false);
        optEdge = p.getBoolean("radarEdge", false);   // QoL prototype P4 (default off)
        optShake = p.getFloat("shake", 0.6f);
        loadInbox(p);
        // audit C7 (owner 2026-11-17): a new pilot gets one summary post instead of the old changelog posts;
        // existing profiles keep their inbox as it is
        if (p.getInt("modVersion", 0) == 0 && !ModPrologue.active) {
            p.edit().putInt("modVersion", 31).commit();
            note(ModLang.tr("Welcome, pilot. This version of Space Corsair adds faction standings and faction missions (Standings button), "
                + "refits at every station (REFIT), new hulls up to titans, faction flagships and sector police, bosses and elite enemies, "
                + "the Ship tree on the Ships screen, and options in Settings such as damage numbers, bar numbers, screen shake and a floating joystick. "
                + "New notices arrive here in the Inbox (Ships or Station screen)."));
        }
        if (p.getInt("modVersion", 0) < 16) {
            p.edit().putInt("modVersion", 16).commit();
            note(ModLang.tr("Mod v16: Ship tree (Ships screen), Inbox, Sort and Sell junk buttons in shops, confirm before selling Rare+ items, "
                + "where-to-find lines in item descriptions, ship comparisons, gate and galaxy-map level ranges, damage numbers, bar numbers, "
                + "screen shake, optional floating joystick and bigger buttons (Settings), free repairs for Tech I hulls, sector police, "
                + "and two titans at level 17: Leviathan and the new Crimson Throne."));
        }
        if (p.getInt("modVersion", 0) < 17) {
            p.edit().putInt("modVersion", 17).commit();
            note(ModLang.tr("Mod v16.5 economy: enemies now pay a credit bounty that grows with their level (bosses pay 8x, elites 2x; "
                + "nothing for enemies 4+ levels below you), story missions pay 3x credits, gear sells for 25% of its value "
                + "instead of 15%, and ship prices were rebalanced (battleships about 1.1-2M, Nebula Moth 3.5M, "
                + "Crimson Throne 6M, Leviathan 7M)."));
        }
        if (p.getInt("modVersion", 0) < 18) {
            p.edit().putInt("modVersion", 18).commit();
            note(ModLang.tr("Mod v16.6: shop and inventory lists now scroll clear of the mod toolbar, so the last BUY/SELL/DETAILS buttons are "
                + "always reachable. Stations have a new Gift code button."));
        }
        if (p.getInt("modVersion", 0) < 19) {
            p.edit().putInt("modVersion", 19).commit();
            note(ModLang.tr("Mod v16.8: scrollbars stay visible on every scrollable screen (item details, missions, lists, settings), "
                + "and long ship descriptions scroll inside their box with a scrollbar. Fixed the Ships screen crash."));
        }
        if (p.getInt("modVersion", 0) < 20) {
            p.edit().putInt("modVersion", 20).commit();
            note(ModLang.tr("Mod v17 capital ships: engine plumes, running lights, auras and wakes on the top tier of every class; big hulls now show "
                + "smoke, fire, scorch marks and hull cracks as they take damage (they disappear once repaired), plus a visible self-repair effect. "
                + "Titans get new turrets with heavier shots, siege missiles with a wider blast, and a manual EVE-style doomsday: "
                + "Leviathan and X-0 fire a sustained lance, the Crimson Throne a furnace nova. Press DOOMSDAY at the bottom of the screen."));
        }
        if (p.getInt("modVersion", 0) < 21) {
            p.edit().putInt("modVersion", 21).commit();
            note(ModLang.tr("Mod v19: six new weapon families (Railgun, Autocannon, Artillery, Blaster, Disintegrator, Arc Projector) in 4 tiers at laser shops "
                + "(Ventohigh, Spartan HQ, smugglers, Omicron Prime) and as rare drops. Each faction now keeps a flagship at its HQ "
                + "(Spartan HQ, Pirate Bay, The Hive, Omicron Prime, Ore Belt, Heliostat, Highway): neutral unless you deal 10% of its hull or attack "
                + "civilians near it. The DEV kit now only fits the X-0 and swaps in and out with it. Doomsday lances are as wide as 60% of the titan."));
        }
        if (p.getInt("modVersion", 0) < 22) {
            p.edit().putInt("modVersion", 22).commit();
            note(ModLang.tr("Mod v20: the doomsday lance is now a solid band as wide as its damage area. Railgun slugs and artillery shells are larger "
                + "and leave trails. Fixed a crash when Android restored the Ships screen after closing the game in the background."));
        }
        if (p.getInt("modVersion", 0) < 23) {
            p.edit().putInt("modVersion", 23).commit();
            note(ModLang.tr("Mod v21: the seven factions now have commanders and story chains (21 missions). Fly to a faction HQ and press TALK TO COMMANDER "
                + "to talk to its commander aboard the flagship: Spartan HQ, Pirate Bay, The Hive, Omicron Prime, Ore Belt, Heliostat, Highway. "
                + "Chains open from level 10 and end in battles beside, or against, the flagships. The Leviathan and Crimson Throne have new hulls "
                + "and turrets, and every faction flagship has new turrets."));
        }
        if (p.getInt("modVersion", 0) < 24) {
            p.edit().putInt("modVersion", 24).commit();
            note(ModLang.tr("Mod v22: faction STANDINGS (toolbar button). Missions (+15, finale +20) and contracts (+8) raise your standing; "
                + "allies share half, enemies lose half. Friendly: +10% payouts, the flagship forgives 25% friendly fire. Trusted: +20%, "
                + "the flagship gives fire support and its HQ sells a secret faction weapon. Honored: +35% and a secret ship (coming next). "
                + "Each HQ now offers two daily contracts, or amends jobs if you are Unfriendly. New flagship, Nebula Moth and faction emblem art, "
                + "weapon-family icons, and combat sounds (alerts, all clear, disengaging enemies, low hull alarm, shield collapse)."));
        }
        if (p.getInt("modVersion", 0) < 25) {
            p.edit().putInt("modVersion", 25).commit();
            note(ModLang.tr("Mod v23: 21 Exceptional hulls redrawn (each with its own engine glow; Shade, Hornet, Raptor, Sanctum, Bulwark, Warlord, "
                + "Harbinger and Tempest now belong to factions). Weapon families bring their own turrets: rails, rotary cannons, artillery barrels, "
                + "blasters, prism emitters and tesla coils, sized to the hull. Seven secret faction ships appear on the Ships screen at Trusted "
                + "and can be bought at Honored: SRS Resolute, Pillager's Due, Cradle of Echoes, Indemnity Crown, Foundry Sentinel, Far Meridian, Wayfarer Prime."));
        }
        if (p.getInt("modVersion", 0) < 26) {
            p.edit().putInt("modVersion", 26).commit();
            note(ModLang.tr("Mod v24: the Ships screen is now a faction tech tree (tap a faction emblem, tap a ship for its card, OPEN for its page; "
                + "BACK returns to the tree). My Ship is a fitting view: hull art with hardpoints, slots around it, full stats; CLASSIC switches back. "
                + "Shields hug the hull and glow on it while up. A collapsed shield reboots in 1.3 s once above 50% hull and once more below; "
                + "after that it recharges at half speed until you use a repair. The original alien hulls (Rat, Ufo, Blatte) now sit in the "
                + "Kre'tari Brood tree. Ship art is back at full resolution and loads only when needed."));
        }
        if (p.getInt("modVersion", 0) < 27) {
            p.edit().putInt("modVersion", 27).commit();
            note(ModLang.tr("Mod v25: Spanish! Settings > Language / Idioma (Auto, English, Espanol); restart the game after switching. "
                + "15 more hulls redrawn in their new factions' styles (Viper, Bastion, Albatros, Mule, Tortoise, Monolith, Comet, Kite, Seraph, "
                + "Bulldog, Ironside, Tidewarden, Mantis, Verdant, Imperator) with new lore; new Ships tree and fitting screen art; "
                + "a new shield bubble with hit ripples; new doomsday charge, nova ring, lance core and explosion effects."));
        }
        if (p.getInt("modVersion", 0) < 28) {
            p.edit().putInt("modVersion", 28).commit();
            note(ModLang.spanish()
                ? "Mod v26: todo el mod en espanol: misiones de faccion, contratos, reputacion, descripciones y lore de naves, armas y avisos. "
                    + "Las 15 naves del lote 3 tienen el nuevo acabado hibrido."
                : "Mod v26: the whole mod is now in Spanish when Spanish is selected (faction missions, contracts, standings, ship and weapon "
                    + "descriptions, lore, alerts). All 15 batch-3 hulls now use the new hybrid finish.");
        }
        if (p.getInt("modVersion", 0) < 29) {
            p.edit().putInt("modVersion", 29).commit();
            note(ModLang.spanish()
                ? "Mod v28: las naves originales del juego (Corsair one, Condor, Hullraiser, Cosmowarrior, Enforcer, Arwing, Regent y el crucero Guardian) "
                    + "tienen arte remasterizado con el acabado hibrido, tambien como enemigos. El OVNI conserva su animacion original."
                : "Mod v28: the original game ships (Corsair one, Condor, Hullraiser, Cosmowarrior, Enforcer, Arwing, Regent and the Guardian cruiser) "
                    + "are remastered in the hybrid finish, as enemies too. The UFO keeps its original spin animation.");
        }
        if (p.getInt("modVersion", 0) < 30) {
            p.edit().putInt("modVersion", 30).commit();
            note(ModLang.spanish()
                ? "Mod v29: el mapa galactico muestra el territorio de cada faccion (capital con emblema y nombre, sectores controlados con su color; "
                    + "el espacio sin reclamar queda neutral). Arreglados los textos de bonificaciones de objetos (missingString) y el escudo ahora cubre todo el casco."
                : "Mod v29: the galaxy map shows faction territory (capitals with emblem and name, controlled sectors in faction colours; unclaimed space "
                    + "stays neutral). Fixed item bonus texts showing missingString, and the shield bubble now covers the whole hull.");
        }
        if (p.getInt("modVersion", 0) < 31) {
            p.edit().putInt("modVersion", 31).commit();
            note(ModLang.spanish()
                ? "Mod v30: escudos por segmentos que se apagan al perder carga (sin grietas), pulso de recarga y onda en el punto de impacto; "
                    + "la recarga es mas rapida cuanto mas bajo esta el escudo (estilo EVE). Los enemigos recargan a la mitad y no se recuperan desde cero. "
                    + "Las naves grandes se parten en restos fisicos que puedes destruir para obtener botin; tu nave se despedaza antes de reaparecer. "
                    + "Nuevas tablas de botin (casco, nivel, elites, jefes, sector), 12 sitios de restos con historia, jefes con placa de calavera, "
                    + "habilidades unicas y furia, buques insignia con habilidades propias, y naves vivas: luces, motores y criaturas animadas."
                : "Mod v30: segmented shields that power down as they drain (no cracks), a recharge pulse and impact ripples; "
                    + "recharge is fastest when the shield is low (EVE style). Enemies recharge at half rate and never from zero. "
                    + "Big hulls break into physical wrecks you can shoot for loot; your own ship breaks apart before the respawn. "
                    + "New loot tables (hull, level, elites, bosses, sector), 12 lore derelict sites, boss skull plates with unique skills and "
                    + "a one-time enrage, flagship skills, and living ships: lights, engines and animated alien hulls.");
        }
    }

    public static boolean fixedStick() { load(); return optStick; }
    public static boolean barNumbers() { load(); return optBars; }
    public static boolean damageNumbers() { load(); return optDmg; }
    public static boolean bigButtons() { load(); return optBig; }
    public static boolean threatReadout() { load(); return optThreat; }
    public static boolean radarEdge() { load(); return optEdge; }
    public static float shakeLevel() { load(); return optShake; }

    // ---- economy (v16.5)

    /** Hook: Price.getSellPrice for fixed-price items. Original factor was 0.15. */
    public static float sellFactor() { return 0.25f; }

    /** Hook: MissionReward constructor, credit amount. v35: keeps the stock amount; the payout is worked out when read (missionPay). */
    public static int missionCredits(int c) { return c; }

    /**
     * v35 (v34 req 13) hook on every read of MissionReward.creditReward (mission list, details, payout): 3 same-level
     * bounties x the mission's size, at the pilot's level when it is shown or paid.
     */
    public static int missionPay(int stock) {
        int lv = 0;
        try { lv = ObjectRegistry.INSTANCE.game.playerInfo.level; } catch (Throwable t) { lv = 0; }
        return ModV35.missionCredits(stock, lv);
    }

    /** v42: a flat credit reward with the gold "+N c" message at e (or the player). */
    static void addCredits(int credits, Element e) {
        try {
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCredit(credits);
            Element at = e != null && fr.testudo.spacecorsair.engine.GameThread.isElementVisible(e) ? e : ObjectRegistry.INSTANCE.playerShip;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(
                fr.testudo.spacecorsair.business.factory.GamePools.newGoldMessage().init("+" + credits + " c", at));
        } catch (Throwable t) {
            // no reward shown
        }
    }

    /** Hook: Ennemis.onDestroyed after the XP grant. Credit bounty scaled by enemy level; xp is the mitigated XP. */
    public static void bounty(Ennemis e, int xp) {
        if (ModAegisDrones.isDrone(e)) return;   // v43a-6: drones are a skill, not ships: no loot, parts, salvage or bounty
        try {
            if (e == null || xp <= 0 || e.xp <= 0) return;
            if (ModPolice.isPolice(e)) { addCredits(ModPolice.CREDITS_PER_SHIP, e); return; }   // v42 owner: flat 1,000 cr, nothing else
            float c = ModV34.bounty(e.getLevel());
            c *= Math.min(1.45f, xp / (float) e.xp);
            if (ModBoss.isBoss(e) || e.xp >= 500) c *= 8f;
            else if (e.elite) c *= 2f;
            c *= ModChain.onKill(e);   // kill chain (owner OK 2026-11-18)
            int credits = Math.max(1, Math.round(c));
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCredit(credits);
            ModV34.rareSalvage(e, credits);
            ModV35.partsFromKill(e);
            Element at = fr.testudo.spacecorsair.engine.GameThread.isElementVisible(e) ? e : ObjectRegistry.INSTANCE.playerShip;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(
                fr.testudo.spacecorsair.business.factory.GamePools.newGoldMessage().init("+" + credits + " c", at));
        } catch (Throwable t) {
            // never break a kill
        }
    }

    private static void save(String k, boolean v) { SharedPreferences p = prefs(); if (p != null) p.edit().putBoolean(k, v).commit(); }

    /** Hook: end of SettingsActivity.bindUI. Adds the mod's options below the original ones. */
    public static void settings(Object activity) {
        try {
            load();
            final Activity a = (Activity) activity;
            Field f = a.getClass().getSuperclass() != null ? findField(a.getClass(), "ckbHideHud") : null;
            if (f == null) return;
            f.setAccessible(true);
            View anchor = (View) f.get(a);
            if (anchor == null || !(anchor.getParent() instanceof ViewGroup)) return;
            ViewGroup parent = (ViewGroup) anchor.getParent();
            if (parent.findViewWithTag("modqolOptions") != null) return;
            LinearLayout box = new LinearLayout(a);
            box.setTag("modqolOptions");
            box.setOrientation(LinearLayout.VERTICAL);
            int pad = (int) (8 * a.getResources().getDisplayMetrics().density);
            box.setPadding(0, pad, 0, pad);
            TextView title = new TextView(a);
            title.setText(ModLang.tr("Corsair mod options"));
            title.setTextColor(0xFF6AD0FF);
            title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
            box.addView(title);
            box.addView(ModLang.selector(a));
            box.addView(check(a, ModLang.tr("Fixed joystick (off = joystick appears under your thumb)"), "fixedStick", optStick));
            box.addView(check(a, ModLang.tr("Numbers on hull and shield bars"), "barNumbers", optBars));
            box.addView(check(a, ModLang.tr("Damage numbers"), "damageNumbers", optDmg));
            box.addView(check(a, ModLang.tr("Bigger buttons"), "bigButtons", optBig));
            box.addView(check(a, ModLang.tr("Threat readout (engaging enemies, top level)"), "threatReadout", optThreat));   // QoL prototype P3
            box.addView(check(a, ModLang.tr("Radar edge pointers (bosses, hostile flagships)"), "radarEdge", optEdge));   // QoL prototype P4
            final TextView st = new TextView(a);
            st.setTextColor(Color.WHITE);
            st.setText(ModLang.tr("Screen shake: ") + Math.round(optShake * 100) + "%");
            box.addView(st);
            SeekBar sb = new SeekBar(a);
            sb.setMax(150);
            sb.setProgress(Math.round(optShake * 100));
            sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                public void onProgressChanged(SeekBar s, int v, boolean user) {
                    optShake = v / 100.0f;
                    st.setText(ModLang.tr("Screen shake: ") + v + "%");
                    SharedPreferences p = prefs();
                    if (p != null) p.edit().putFloat("shake", optShake).commit();
                }
                public void onStartTrackingTouch(SeekBar s) { }
                public void onStopTrackingTouch(SeekBar s) { }
            });
            box.addView(sb);
            parent.addView(box, parent.indexOfChild(anchor) + 1);
        } catch (Exception e) {
            // settings screen must keep working
        }
    }

    private static CheckBox check(Activity a, String label, final String key, boolean value) {
        CheckBox c = new CheckBox(a);
        c.setText(label);
        c.setTextColor(Color.WHITE);
        c.setChecked(value);
        c.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton b, boolean v) {
                if ("fixedStick".equals(key)) optStick = v;
                else if ("barNumbers".equals(key)) optBars = v;
                else if ("damageNumbers".equals(key)) optDmg = v;
                else if ("bigButtons".equals(key)) { optBig = v; buttonsDirty = true; }
                else if ("threatReadout".equals(key)) optThreat = v;
                else if ("radarEdge".equals(key)) optEdge = v;
                save(key, v);
            }
        });
        return c;
    }

    static Field findField(Class<?> c, String name) {
        while (c != null && c != Object.class) {
            try {
                return c.getDeclaredField(name);
            } catch (Exception e) {
                c = c.getSuperclass();
            }
        }
        return null;
    }

    // ================================================================== repair fee: Tech I hulls repair for free
    /** Hook: replaces XpBuilder.getDeathMoneyPenality(). */
    public static int deathFee() {
        if (ModLan.guestFeeFree()) { ModDev.ev("death", "no fee (guest of an internet game)"); return 0; }
        ModDev.ev("death", "fee charged (respawn)");
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            SpaceObjectType ship = pi.playerGear.playerShip;
            if (ship != null && ModShips.tech(ship) <= 1) return 0;
            return ModV34.deathFee(pi.level);
        } catch (Exception e) {
            return 0;
        }
    }

    // ================================================================== gate labels: destination level range
    private static final Vector2 gateText = new Vector2();

    // per portal per frame: label text and width cached per sector (width re-measured when the GL font is rebuilt)
    private static String[] gateTexts;
    private static float[] gateHalf;
    private static Object gateFont;

    /** Hook: Portal.registerYourselfToDrawQueue, after the "> sector <" label. */
    public static void gateLabel(Portal p) {
        try {
            LevelId id = levelByName(p.jumpLevelName);
            if (id == null || id == LevelId.GALACTIC_ARENA || id == LevelId.FFA_THE_PLAYER_PAY) return;
            int o = id.ordinal();
            if (gateTexts == null || gateFont != GameRenderer.glTextNormalPlus) {
                int n = LevelId.values().length;
                gateTexts = new String[n];
                gateHalf = new float[n];
                gateFont = GameRenderer.glTextNormalPlus;
            }
            String s = gateTexts[o];
            if (s == null) {
                s = id.levelMin == id.levelMax ? ModLang.tr("Level ") + id.levelMin : ModLang.tr("Level ") + id.levelMin + " - " + id.levelMax;
                gateHalf[o] = GameRenderer.glTextNormalPlus.getLength(s) / 2.0f;
                gateTexts[o] = s;
            }
            MissionObjectiveColor c = MissionObjectiveColor.getOfLevelDifference(id.levelMin, id.levelMax, ObjectRegistry.INSTANCE.game.playerInfo.level);
            float w = gateHalf[o];
            gateText.setSameAs(p.position).add(-w, p.getDrawableObject().dimensions.y / 2.0f - 90.0f);
            ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(gateText, false, s, c.r, c.g, c.b, 1.0f, TextSize.NORMALPLUS);
        } catch (Exception e) {
            // cosmetic
        }
    }

    private static final java.util.Map<String, Object> levelNames = new java.util.concurrent.ConcurrentHashMap<String, Object>();
    private static final Object NO_LEVEL = new Object();

    static LevelId levelByName(String n) {
        if (n == null) return null;
        Object hit = levelNames.get(n);   // per portal per frame: no LevelId.values() copy and scan once a name is known
        if (hit != null) return hit == NO_LEVEL ? null : (LevelId) hit;
        LevelId found = null;
        for (LevelId id : LevelId.values()) {
            if (n.equalsIgnoreCase(id.levelName)) { found = id; break; }
        }
        if (levelNames.size() < 512) levelNames.put(n, found != null ? found : NO_LEVEL);
        return found;
    }

    // ================================================================== HUD (GL thread): bar numbers, inbox badge
    private static String lifeText, shieldText, inboxText;
    private static int lifeA, lifeB, shieldA, shieldB, inboxN;
    private static float inboxHalf;
    private static Object inboxFont;

    /** Hook: end of GameRenderer.drawHud. */
    public static void drawHud(GL10 gl) {
        ModArt.frameEnd(gl);   // lazy mod textures: frame counter, player hull, one prefetched upload (never throws)
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps == null || ObjectRegistry.INSTANCE.game.mapMode || ObjectRegistry.INSTANCE.config.hideHud) return;
            if (barNumbers() && GameRenderer.lifeBar != null && GameRenderer.shieldBar != null) {
                int x = (int) (GameRenderer.lifeBar.centerPosition.x + GameRenderer.lifeBar.witdh / 2.0f + 10.0f);
                int l0 = Math.max(0, Math.round(ps.life)), l1 = Math.round(ps.maxLife);
                if (lifeText == null || l0 != lifeA || l1 != lifeB) {   // per frame: rebuilt only when a number changes
                    lifeText = l0 + " / " + l1;
                    lifeA = l0;
                    lifeB = l1;
                }
                boolean low = l1 > 0 && l0 < l1 * 0.25f;   // QoL prototype P5: hull number pulses red under 25% (matches the hull alarm)
                float la = low ? 0.55f + 0.45f * (float) Math.abs(Math.sin(System.currentTimeMillis() / 180.0d)) : 1.0f;
                GameRenderer.drawText(gl, lifeText, x,
                    GameRenderer.screenWidthY - (int) GameRenderer.lifeBar.centerPosition.y - 7, la, 1.0f, low ? 0.2f : 0.55f, low ? 0.15f : 0.55f, true, TextSize.LITTLE);
                if (ps.shield != null && ps.shield.capacity > 0) {
                    int s0 = Math.max(0, Math.round(ps.shield.currentValue)), s1 = Math.round(ps.shield.capacity);
                    if (shieldText == null || s0 != shieldA || s1 != shieldB) {
                        shieldText = s0 + " / " + s1;
                        shieldA = s0;
                        shieldB = s1;
                    }
                    GameRenderer.drawText(gl, shieldText, x,
                        GameRenderer.screenWidthY - (int) GameRenderer.shieldBar.centerPosition.y - 7, 1.0f, 0.55f, 0.85f, 1.0f, true, TextSize.LITTLE);
                }
            }
            if (threatReadout()) threatLine(gl, ps);   // QoL prototype P3
            int unread = ModPrologue.active ? 0 : unread();   // v46: no inbox banner during the prologue
            if (unread > 0) {
                if (inboxText == null || unread != inboxN || GameRenderer.glTextLittle != inboxFont) {
                    inboxText = ModLang.fmt("INBOX: {0} new  (open from the Ships or Station screen)", unread);   // audit C3
                    inboxN = unread;
                    inboxFont = GameRenderer.glTextLittle;
                    inboxHalf = GameRenderer.glTextLittle.getLength(inboxText) / 2.0f;
                }
                String s = inboxText;
                float w = inboxHalf;
                float pulse = 0.6f + 0.4f * (float) Math.abs(Math.sin(System.currentTimeMillis() / 400.0d));
                GameRenderer.drawText(gl, s, (int) (GameRenderer.screenMidWidthX - w), GameRenderer.screenWidthY - 100, pulse, 0.17f, 0.85f, 0.42f, true, TextSize.LITTLE);
            }
            if (buttonsDirty) { buttonsDirty = false; buttons(); }
        } catch (Exception e) {
            // HUD is cosmetic
        }
    }

    // ================================================================== QoL prototype P3: threat readout
    private static String threatText;
    private static int threatA = -1, threatB = -1;

    /** "HOSTILES 4 · TOP Lv 47" under the shield bar while enemies engage; red when the top one is ModLive.SKULL_GAP+ levels up. */
    private static void threatLine(GL10 gl, PlayerShip ps) {
        int n = ModAlerts.threatN, top = ModAlerts.threatTop;
        if (n <= 0 || GameRenderer.shieldBar == null) return;
        if (threatText == null || n != threatA || top != threatB) {
            threatText = ModLang.fmt("HOSTILES {0}  ·  TOP Lv {1}", n, top);
            threatA = n;
            threatB = top;
        }
        boolean skull = top - ModV34.playerLevel() >= ModLive.SKULL_GAP;
        int x = (int) (GameRenderer.shieldBar.centerPosition.x - GameRenderer.shieldBar.witdh / 2.0f);
        int y = GameRenderer.screenWidthY - (int) GameRenderer.shieldBar.centerPosition.y - 34;
        if (skull) GameRenderer.drawText(gl, threatText, x, y, 1.0f, 1.0f, 0.3f, 0.25f, true, TextSize.LITTLE);
        else GameRenderer.drawText(gl, threatText, x, y, 0.9f, 1.0f, 0.85f, 0.4f, true, TextSize.LITTLE);
    }

    // ================================================================== damage numbers + screen shake
    private static long lastNum;
    private static int numBudget;

    /** Hook: Element.applyProjectileHit, right before applyDamage(f, sender, projectile). */
    public static void onHit(Element target, float dmg, Projectile p) {
        try {
            if (p == null || p.sender == null || dmg <= 0) return;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            boolean byPlayer = p.sender.isPlayer || p.sender == ps || Mod.isDrone(p.sender);
            if (target.isPlayer || target == ps) {
                addShake(Math.min(1.0f, dmg / Math.max(1.0f, target.maxLife) * 6.0f) + 0.08f);
                if (damageNumbers()) number(target, "-" + Math.round(dmg), 1.0f, 0.35f, 0.35f);
            } else if (byPlayer && damageNumbers()) {
                boolean crit = false;
                try { crit = p.isCrit; } catch (Throwable t) { crit = false; }
                if (crit) number(target, Math.round(dmg) + "!", 1.0f, 0.85f, 0.2f);
                else number(target, String.valueOf(Math.round(dmg)), 1.0f, 1.0f, 1.0f);
            }
        } catch (Exception e) {
            // cosmetic
        }
    }

    private static void number(Element at, String s, float r, float g, float b) {
        long now = System.currentTimeMillis();
        if (now - lastNum > 100) { lastNum = now; numBudget = 6; }
        if (numBudget-- <= 0) return;
        Mod.floatText(at, s, r, g, b);
    }

    private static float shake;
    private static final Vector2 shaken = new Vector2();

    public static void addShake(float amount) {
        shake = Math.min(1.5f, shake + amount * shakeLevel());
    }

    /** Hook: Camera.snapToTarget. Returns the target position itself unless the camera is shaking. */
    public static Vector2 camCenter(Vector2 target, float dt) {
        if (shake <= 0.01f || ObjectRegistry.INSTANCE.game.mapMode) {
            shake = 0;
            return target;
        }
        shake = Math.max(0, shake - dt / 450.0f);
        float a = shake * shake * 38.0f;
        shaken.set(target.x + (float) (Math.random() - 0.5d) * a, target.y + (float) (Math.random() - 0.5d) * a);
        return shaken;
    }

    // ================================================================== level-up notices + inbox
    private static final List<String> inbox = new ArrayList<String>();
    private static int readCount;

    /** Settings that are not progress: kept when a fresh save clears the mod's progress (audit A10). */
    private static final String[] KEEP = {"fixedStick", "barNumbers", "damageNumbers", "bigButtons", "shake", ModPrologue.DONE};

    /** Audit A10 (owner 2026-11-17): a fresh save (Main.onFirstStart) clears all mod progress: standings, refits,
     *  Lance unlock, inbox and every other mod record; the settings above stay. */
    static synchronized void clearProgress() {
        SharedPreferences p = prefs();
        if (p == null) return;
        try {
            java.util.Map<String, ?> all = p.getAll();
            SharedPreferences.Editor e = p.edit();
            int n = 0;
            outer:
            for (String k : all.keySet()) {
                for (String keep : KEEP) if (keep.equals(k)) continue outer;
                e.remove(k);
                n++;
            }
            e.commit();
            inbox.clear();
            readCount = 0;
            loaded = false;
            ModDev.ev("fresh", "mod progress cleared: " + n + " keys");
        } catch (Throwable t) {
            ModDev.ev("fresh", "clear failed " + t);
        }
    }

    private static synchronized void loadInbox(SharedPreferences p) {
        inbox.clear();
        String all = p.getString("inbox", "");
        if (all.length() > 0) {
            for (String s : all.split("\n")) if (s.length() > 0) inbox.add(s);
        }
        readCount = Math.min(inbox.size(), p.getInt("inboxRead", 0));
    }

    private static synchronized void saveInbox() {
        if (ModPrologue.active) return;   // v46: nothing the prologue says may reach the player's saved inbox
        SharedPreferences p = prefs();
        if (p == null) return;
        StringBuilder sb = new StringBuilder();
        int from = Math.max(0, inbox.size() - 40);
        for (int i = from; i < inbox.size(); i++) sb.append(inbox.get(i).replace('\n', ' ')).append('\n');
        if (from > 0) {
            List<String> keep = new ArrayList<String>(inbox.subList(from, inbox.size()));
            inbox.clear();
            inbox.addAll(keep);
            readCount = Math.max(0, readCount - from);
        }
        p.edit().putString("inbox", sb.toString()).putInt("inboxRead", readCount).commit();
    }

    public static int unread() { load(); return Math.max(0, inbox.size() - readCount); }

    /** v43a-5: inbox + in-flight pop-up from the ship's astrodroid. */
    public static void post(String msg) {
        post(msg, ModNotify.AI);
    }

    /** v43a-5: inbox + in-flight pop-up from {@code speaker} (faction key, or ModNotify.AI). */
    public static void post(String msg, String speaker) {
        note(msg);
        ModNotify.push(speaker, msg);
    }

    /** Inbox only (mod changelog notes: no pop-up). */
    static void note(String msg) {
        load();
        synchronized (ModQol.class) {   // game thread (level-ups, standings) and UI thread (inbox dialog)
            inbox.add(msg);
            saveInbox();
        }
    }

    /** Hook: end of PlayerInfo.onLevelUp. Lists what the new level unlocks. */
    public static void onLevelUp(PlayerInfo pi) {
        try {
            int lvl = pi.level;
            StringBuilder ships = new StringBuilder();
            for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
                GearSpec g = t.getGearSpec();
                if (g != null && g.level == lvl && !pi.availShips.contains(t) && !ModDev.isDev(t) && !t.name().startsWith("hullSecret")) {
                    String n = t.getLocalizedLabel();
                    if (ships.length() > 0) ships.append(", ");
                    ships.append(n);
                }
            }
            // audit C3 (owner): whole translated sentences
            String msg = ModLang.fmt("Level {0} reached.", lvl);
            if (ships.length() > 0) msg += " " + ModLang.fmt("New ships you can fly: {0}.", ships);
            msg += " " + ModLang.fmt("Level {0} lasers, shields and missiles can now be equipped.", lvl);
            post(msg);
            if (lvl == ModV34.STAT_LEVEL) {
                post(ModLang.tr("Pilot stats unlock at level 10. They are automatic.") + " "
                    + ModLang.tr("ATK: more damage. DEF: less damage taken. REA: dodge.") + " "
                    + ModLang.tr("The last 200 points come from faction storylines."));
            }
            ModUi.markNewShips(lvl);
            fr.testudo.spacecorsair.display.hud.WelcomeMessage.setText(fr.testudo.spacecorsair.display.hud.WelcomeMessage.messageHaut,
                ships.length() > 0 ? ModLang.tr("New ships: ") + ships : ModLang.tr("New gear tier unlocked"));
        } catch (Exception e) {
            // never block a level-up
        }
    }

    /** Inbox dialog (UI thread). */
    public static void showInbox(Activity a) {
        try {
            load();
            StringBuilder sb = new StringBuilder();
            synchronized (ModQol.class) {
                if (inbox.isEmpty()) sb.append(ModLang.tr("No messages yet. Level-ups and new unlocks are listed here."));
                for (int i = inbox.size() - 1; i >= 0; i--) {
                    sb.append(i >= readCount ? ModLang.tr("NEW") + "  " : "").append(inbox.get(i)).append("\n\n");
                }
                readCount = inbox.size();
                saveInbox();
            }
            new AlertDialog.Builder(a).setTitle(ModLang.tr("Inbox")).setMessage(sb.toString()).setPositiveButton(ModLang.tr("OK"), null).show();
        } catch (Exception e) {
            // ignore
        }
    }

    // ================================================================== bigger buttons
    static boolean buttonsDirty;

    /** Hook: end of GameRenderer.initLaserAndMissileButonPos. */
    public static void buttons() {
        try {
            if (!bigButtons()) return;
            float k = 1.35f;
            int i = (int) ((GameRenderer.screenWidthX * 120) / 1200 * k);
            int border = 20;
            try {
                Field f = GameRenderer.class.getDeclaredField("butonsDecalBorder");
                f.setAccessible(true);
                border = f.getInt(null);
            } catch (Exception e) {
                border = 20;
            }
            Button[] main = {HudImages.missileButon, HudImages.laserButon, HudImages.boosterButton, HudImages.jumpButton};
            for (Button b : main) {
                b.imageDim.set(i, i);
                b.demiDim = i / 2;
                if (b.imageDrawable != null) b.imageDrawable.setDimension(b.imageDim);
            }
            HudImages.laserButon.initImagePos(Radar.POSX, (i / 2) + border);
            HudImages.boosterButton.initImagePos(Radar.POSX - (i * 1.5f), (i / 2) + border);
            int y = Math.min(GameRenderer.screenMidWidthY, Radar.POSY - Radar.DEMI_DIM - 20 - (i / 2));
            HudImages.missileButon.initImagePos(Radar.POSX, y);
        } catch (Exception e) {
            // keep default buttons
        }
    }

    // ================================================================== floating joystick (optional)
    private static boolean floating;
    private static int homeX = -1, homeY;

    /** Hook: Joystick.doesTouche prologue. -1 = run the original test, 0 = no, 1 = yes. */
    public static int joyTouch(int x, int y) {
        try {
            if (fixedStick() || floating) return -1;
            int sy = GameRenderer.screenWidthY - y;
            if (x > GameRenderer.screenWidthX * 0.45f || sy > GameRenderer.screenWidthY * 0.75f) return -1;
            if (homeX < 0) { homeX = Joystick.POSX; homeY = Joystick.POSY; }
            Joystick.POSX = x;
            Joystick.POSY = sy;
            Joystick.drawPosition.set(x, sy);
            floating = true;
            return 1;
        } catch (Exception e) {
            return -1;
        }
    }

    /** Hook: Joystick.setFingerUp prologue. */
    public static void joyUp() {
        if (!floating) return;
        floating = false;
        if (homeX >= 0) {
            Joystick.POSX = homeX;
            Joystick.POSY = homeY;
            Joystick.drawPosition.set(homeX, homeY);
        }
    }

    // ================================================================== galaxy map extras
    private static final Vector2 mapText = new Vector2();
    private static String[] mapTexts;
    private static float[] mapHalf;
    private static float missionHalf;
    private static Object mapFont;
    private static final LevelId[] SHOPS = {LevelId.GENESIS, LevelId.VENTOHIGH, LevelId.PIRATE_BAY, LevelId.HELIOSTAT, LevelId.SPARTAN_HQ, LevelId.SOLAR_FIELD,
        LevelId.OMICRON_PRIME, LevelId.HIGHWAY, LevelId.ETERNITY, LevelId.LOST_PARADISE, LevelId.ORE_BELT, LevelId.TUTORIAL};

    /** Hook: GameThread.displayLevelOfGalaxy, after the sector name. */
    public static void galaxyExtra(LevelId id) {
        try {
            if (id == null) return;
            try { ModMap.territory(id); } catch (Throwable t) { /* cosmetic */ }
            int o = id.ordinal();
            if (mapTexts == null || mapFont != GameRenderer.glTextNormalPlus) {
                int n = LevelId.values().length;
                mapTexts = new String[n];
                mapHalf = new float[n];
                mapFont = GameRenderer.glTextNormalPlus;
                missionHalf = GameRenderer.glTextNormalPlus.getLength(ModLang.tr(">> MISSION <<")) / 2.0f;
            }
            String text = mapTexts[o];
            if (text == null) {
                // every sector of the galaxy map, every frame: built and measured once
                StringBuilder s = new StringBuilder();
                if (id != LevelId.GALACTIC_ARENA && id != LevelId.FFA_THE_PLAYER_PAY) s.append(ModLang.tr("Lv") + " " + (id.levelMin == id.levelMax ? "" + id.levelMin : id.levelMin + "-" + id.levelMax));
                for (LevelId sh : SHOPS) if (sh == id) { s.append(ModLang.tr("  $ shop")); break; }
                text = s.toString();
                mapHalf[o] = GameRenderer.glTextNormalPlus.getLength(text) / 2.0f;
                mapTexts[o] = text;
            }
            MissionObjectiveColor c = MissionObjectiveColor.getOfLevelDifference(id.levelMin, id.levelMax, ObjectRegistry.INSTANCE.game.playerInfo.level);
            float w = mapHalf[o];
            mapText.setSameAs(id.mapPos).add(-w, 105.0f);
            ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(mapText, false, text, c.r, c.g, c.b, 1.0f, TextSize.NORMALPLUS);
            if (id == missionSector()) {
                String m = ModLang.tr(">> MISSION <<");
                float mw = missionHalf;
                mapText.setSameAs(id.mapPos).add(-mw, 145.0f);
                float pulse = 0.5f + 0.5f * (float) Math.abs(Math.sin(System.currentTimeMillis() / 300.0d));
                ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(mapText, false, m, 1.0f, 0.85f, 0.25f, pulse, TextSize.NORMALPLUS);
            }
        } catch (Exception e) {
            // cosmetic
        }
    }

    private static Object lastMission;
    private static LevelId lastMissionSector;

    /** Best effort: the first LevelId-typed field of the current mission or its engine. */
    private static LevelId missionSector() {
        try {
            Object m = ObjectRegistry.INSTANCE.currentMission;
            if (m == null) return null;
            if (m == lastMission) return lastMissionSector;
            lastMission = m;
            lastMissionSector = null;
            Object eng = ObjectRegistry.INSTANCE.currentMission.missionEngine;
            for (Object o : new Object[]{eng, m}) {
                if (o == null) continue;
                Class<?> c = o.getClass();
                while (c != null && c != Object.class) {
                    for (Field f : c.getDeclaredFields()) {
                        if (f.getType() == LevelId.class && !java.lang.reflect.Modifier.isStatic(f.getModifiers())) {
                            f.setAccessible(true);
                            Object v = f.get(o);
                            if (v != null) return lastMissionSector = (LevelId) v;
                        }
                    }
                    c = c.getSuperclass();
                }
            }
        } catch (Exception e) {
            // no highlight
        }
        return null;
    }

    // ================================================================== police
    /** Hook: LevelAnimator.onCivilAttackedByPlayer (base class only; Highway and Ventohigh keep their own). v42: ModPolice escalation. */
    public static void civilAttacked(CivilShip c) {
        if (ModPolice.spawning) return;   // police joining the fight (setAtackPlayerMode) is not an offence
        if (ModCcef.calm(c)) return;   // owner 2026-11-22: during a CCEF hunt civilians never join in
        // owner 2026-11-18: mod code turning a ship on the player (pursuits, police titans, flagships) is not an attack by the
        // player; the stock rebellion always follows player damage
        if (c == null || c.damageRecievedByPlayer <= 0) return;
        ModCapitals.civilAttacked(c);
        try { ModRep.civilAttacked(c); } catch (Throwable t) { /* standing is a bonus system */ }
        ModPolice.civilAttacked(c);
    }

    /** Hook: end of CivilFactory.newPolice(int). Highway police always out-level the pilot and keep scaling past the spec table. */
    public static void policeLevel(PoliceShip p, int requested) {
        try {
            int max = fr.testudo.spacecorsair.business.world.civil.CivilSpecByLevel.policeSpec.length - 1;
            int lvl = requested;
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel != null ? ObjectRegistry.INSTANCE.game.currentLevel.id : null;
            if (id == LevelId.HIGHWAY) lvl = Math.max(lvl, ObjectRegistry.INSTANCE.game.playerInfo.level + 2);
            if (id != null && id.levelMax > 0) lvl = Math.min(lvl, id.levelMax);   // v42 (owner): police never above the sector top level
            if (lvl < p.level) p.level = lvl;   // v42: label never above the sector top
            if (lvl <= max) {
                if (lvl != requested && lvl > p.level) {
                    p.level = lvl;
                }
            } else {
                p.level = lvl;
            }
            // audit F16 (owner 2026-11-17): patrols and faction wings follow the enemy rule once: the destroyer base hull
            // of the stock table level x the cruiser class factor x the v34 curve; damage x curve x cruiser damage class
            int L = p.level;
            float base = ModV34.baseHull(L);   // clamps to the stock tables
            float c = ModV34.curve(L);
            if (base > 0) {
                p.maxLife = base * ModV34.classFactor(ModPolice.STOCK_POLICE_CLASS) * c;
                p.life = p.maxLife;
            }
            float dk = c * ModV34.dmgClass(ModPolice.STOCK_POLICE_CLASS);
            p.bulletDamage *= dk;
            for (fr.testudo.spacecorsair.business.ennemis.EnnemisCanon cn : new fr.testudo.spacecorsair.business.ennemis.EnnemisCanon[] {p.canonProue, p.canonPoupe})
                if (cn != null) cn.shootDamage = Math.max(1, Math.round(cn.shootDamage * dk));
            p.xp = Math.round(p.xp * c);
        } catch (Exception e) {
            // keep the stock police
        }
    }

    // ================================================================== where to get it (item and ship descriptions)
    static String source(SpaceObjectType t) {
        try {
            String n = t.name();
            for (String f : ModSpecs.FAMILY_NAMES) {
                if (n.startsWith(f)) {
                    if (n.startsWith("megatron")) return hint(ModLang.tr("Guardian-class cruisers carry this. Pilots who take them down sometimes come home with one."));
                    return hint(ModLang.tr("Alien hulls sometimes carry this. The bigger the alien, the better the odds."));
                }
            }
            String shop = ModSources.shop(n);
            if (shop != null) return ModLang.tr("<br><br><font color='#6ad0ff'><b>Sold at:</b> ") + shop + "</font>";
            GearSpec g = t.getGearSpec();
            if (g != null && t.getRarety() != null && t.getRarety().getRaretySort() >= LootRarety.LEGENDARY.getRaretySort()) {
                return hint(ModLang.tr("Legendary gear is never sold. Elite enemies and bosses near level ") + g.level + ModLang.tr(" are your best chance."));
            }
            if (g != null && !(g instanceof PlayerShipSpec) && t.isEquipable()) {
                return ModLang.tr("<br><br><font color='#c8c8c8'><b>Found:</b> dropped by enemies around level ") + g.level + ".</font>";
            }
        } catch (Exception e) {
            // no source line
        }
        return "";
    }

    private static String hint(String s) {
        return ModLang.tr("<br><br><font color='#e0c88a'><i>Rumour: ") + s + "</i></font>";
    }

    /** Ship page: stat comparison against the ship you are flying. */
    static String compare(SpaceObjectType t) {
        try {
            SpaceObjectType cur = ObjectRegistry.INSTANCE.game.playerInfo.playerGear.playerShip;
            if (cur == null || cur == t || !(t.getGearSpec() instanceof PlayerShipSpec) || !(cur.getGearSpec() instanceof PlayerShipSpec)) return "";
            PlayerShipSpec a = (PlayerShipSpec) t.getGearSpec(), b = (PlayerShipSpec) cur.getGearSpec();
            StringBuilder s = new StringBuilder(ModLang.tr("<br><br><b>Compared with your ship</b><br>"));
            s.append(delta(ModLang.tr("Armour"), a.armorInformational - b.armorInformational));
            s.append(delta(ModLang.tr("Agility"), a.agilityInformational - b.agilityInformational));
            s.append(delta(ModLang.tr("Speed"), a.maxSpeedInformational - b.maxSpeedInformational));
            s.append(delta(ModLang.tr("Hull"), Math.round((a.lifeBooster - b.lifeBooster) * 100)));
            return s.toString();
        } catch (Exception e) {
            return "";
        }
    }

    private static String delta(String name, int d) {
        String col = d > 0 ? "#41ff16" : d < 0 ? "#ff5a4a" : "#c8c8c8";
        return name + ": <font color='" + col + "'>" + (d > 0 ? "+" : "") + d + "</font>&nbsp;&nbsp; ";
    }

    // ================================================================== confirm before selling rare items
    private static boolean sellBypass;

    /** Hook: StationActivity$1.onItemPick prologue. Returns true when a confirm dialog was shown instead. */
    public static boolean confirmSell(final Object listener, final int qty, final SpaceObject so, final Object ctx) {
        try {
            if (sellBypass || so == null || ctx == null || !"SELL".equals(ctx.toString())) return false;
            if (ModDev.isDev(so.getSpaceObjectType())) {
                // the DEV kit only exists through the gift code: it cannot be sold
                try {
                    Field o2 = findField(listener.getClass(), "this$0");
                    if (o2 != null) {
                        o2.setAccessible(true);
                        android.widget.Toast.makeText((Activity) o2.get(listener), ModLang.tr("DEV items cannot be sold."), android.widget.Toast.LENGTH_SHORT).show();
                    }
                } catch (Exception ignored) {
                    // no toast
                }
                return true;
            }
            LootRarety r = so.getSpaceObjectType().getRarety();
            if (r == null || r.getRaretySort() < LootRarety.RARE.getRaretySort() || qty <= 0) return false;
            Field outer = findField(listener.getClass(), "this$0");
            if (outer == null) return false;
            outer.setAccessible(true);
            Activity a = (Activity) outer.get(listener);
            String name = so.getSpaceObjectType().getLocalizedLabel();
            new AlertDialog.Builder(a).setTitle(ModLang.fmt("Sell {0} item?", ModLang.tr(r.name().toLowerCase())))   // audit C6
                .setMessage(ModLang.fmt("Sell {0} x {1}? This cannot be undone.", qty, name))
                .setPositiveButton(ModLang.tr("Sell"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        sellBypass = true;
                        try {
                            Method m = listener.getClass().getMethod("onItemPick", int.class, SpaceObject.class, fr.testudo.spacecorsair.activity.adapters.SpaceObjectAdapter.ItemContext.class);
                            m.setAccessible(true);
                            m.invoke(listener, qty, so, ctx);
                        } catch (Throwable e) {
                            // audit B9 (owner): a failed sale says so, EN and ES, and is logged
                            ModDev.ev("sell", "failed " + so.getSpaceObjectType().name() + " x" + qty + ": " + e);
                            try { android.widget.Toast.makeText(a, ModLang.tr("The sale failed. Nothing was sold."), android.widget.Toast.LENGTH_LONG).show(); } catch (Throwable t2) { /* no toast */ }
                        } finally {
                            sellBypass = false;
                        }
                    }
                })
                .setNegativeButton(ModLang.tr("Keep it"), null).show();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
