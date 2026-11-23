package fr.testudo.spacecorsair.mod;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class BatchArt {
    public static void main(String[] args) {
        BatchChecks c = new BatchChecks();
        Map<String,ModPoliceGen.Img> art = new HashMap<>();
        int[] pixels = {0,0xffab2233,0xffcccccc,0x80808080};
        ModPoliceGen.Img base = new ModPoliceGen.Img(2,2,pixels.clone(),false);
        for (String faction : BatchRules.FACTIONS) {
            String cap = "cap_" + faction;
            art.put(cap,base);
            art.put(cap + "_glow_e",base);
            art.put(cap + "_glow_l",base);
            ModPoliceGen.Img skin = ModPoliceGen.make("pol_" + cap,art::get);
            c.check(cap + " recoloured", skin.w == 2 && skin.h == 2 && !Arrays.equals(skin.px,pixels));
            c.check(cap + " alpha mask", (skin.px[0] >>> 24) == 0 && (skin.px[3] >>> 24) == 128);
            c.check(cap + " deterministic", Arrays.equals(skin.px,ModPoliceGen.make("pol_" + cap,art::get).px));
            c.check(cap + " engine", (ModPoliceGen.make("pol_" + cap + "_glow_e",art::get) == null)
                    == faction.equals("kretari"));
            c.check(cap + " lights", ModPoliceGen.make("pol_" + cap + "_glow_l",art::get).px[1] != pixels[1]);
            c.check(cap + " outline pairs", ModPoliceEdges.get(cap).length % 2 == 0);
            float[] mounts = ModCapitalData.mounts(faction);
            c.check(cap + " paired mount coordinates", mounts != null && mounts.length >= 2 && mounts.length % 2 == 0);
        }
        c.check("source immutability", Arrays.equals(pixels,base.px));
        art.put("wrd_cap_spartan_l",new ModPoliceGen.Img(2,2,new int[]{0,0xffff00ff,0,0xff334455},false));
        int[] wreck = ModPoliceGen.make("wreck_cap_spartan_l",art::get).px;
        c.check("wreck delta copy/hole/paint", Arrays.equals(wreck,new int[]{0,0,pixels[2],0xff334455}));
        art.put("bastion_stage5",base);
        c.check("stage V livery uses stage V hull", "bastion_stage5".equals(ModPoliceGen.sourceOf("pol_bastion",art.keySet())));
        c.check("discover composed wreck", ModPoliceGen.virtualNames(art.keySet()).contains("pol_wreck_cap_spartan_l"));
        c.check("unknown outline", ModPoliceEdges.get("absent") == null);
        c.check("no flavour for unknown hull", ModShipFlavour.of("absent") == null);
        c.check("Viper flavour", ModShipFlavour.of("hullViper").contains("Reaver"));
        c.near("shade engine colour",ModShipStyle.engine("shade"),0x78cfff);
        c.near("mod-only engine colour",ModShipStyle.engine("absent"),-1);
        c.check("atlas box per UV pair",ModLevData.SEG_BOX.length == 2*ModLevData.SEG_UV.length);
        c.check("emitter angle and length pairs",ModMonoData.TE_ANG.length == ModMonoData.TE_LEN.length);
        for (String name : ModFxData.KEYS) {
            int i = ModFxData.index(name);
            c.check("FX radius " + name,i >= 0 && ModFxData.RADIUS[i] > 0 && ModFxData.RADIUS[i] <= 1);
        }
        c.finish();
    }
}
