package fr.testudo.spacecorsair.mod;

public class BatchHooks {
    public static void main(String[] args) throws Exception {
        BatchChecks c = new BatchChecks();
        for (boolean test : new boolean[]{false,true}) for (boolean intro : new boolean[]{false,true}) {
            ModTestMode.on = test;
            ModPrologue.active = intro;
            c.check("mission jump gate " + test + "/" + intro, ModTestMode.missionAllowsJump(false) == (test && !intro));
            c.check("stock jump allowed", ModTestMode.missionAllowsJump(true));
            c.check("prologue save gate", ModPrologue.blockSave() == intro);
            c.near("jump override", ModTestMode.couldJump(null), intro ? 0 : test ? 1 : -1);
            c.near("jump timer", ModTestMode.jumpTime(), test ? 0 : 5000);
        }
        ModTestMode.on = ModPrologue.active = false;
        c.near("legacy intro passes frame time",ModIntro.dt(17),17);
        c.check("retired intro ignores touches",!ModIntro.touch(null) && !ModIntro.isActive());
        c.near("idle Leviathan engine",ModLevDoom.engineMul(),1);
        c.near("idle Leviathan lights",ModLevDoom.lightMul(),1);
        c.near("stowed anchor",ModAnchor.deployed(),0);
        c.near("angle wrap clockwise",ModLive.normDelta(541),-179);
        c.near("angle wrap anticlockwise",ModLive.normDelta(-541),179);
        c.near("passthrough mass floor",ModWreck.massFor(80),20);
        c.near("capital wreck mass",ModWreck.massFor(800),320);
        c.near("blast damping (v37)",ModWreck.damp(10,10),0.5);
        c.near("ram damping",ModWreck.damp(10,0),3);
        c.near("ray crosses wreck",ModWreck.segHit(0,0,10,0,7,0,2),0.5);
        c.near("ray misses wreck",ModWreck.segHit(0,0,10,0,7,3,2),-1);
        c.check("shield bonus label","+25%".equals(ModFitting.pct(1.25f)));
        c.check("reload penalty label","-10%".equals(ModFitting.pct(0.9f)));
        c.near("trim refit integer",ModRefitScreen.num(" 99 "),99);
        c.near("bad refit integer",ModRefitScreen.num("9.0"),0);
        c.check("long credit balance",ModRefitScreen.numL("4000000000") == 4000000000L);
        c.check("short credit label","7.7M".equals(ModRefitScreen.Bay.compact(7700000)));
        c.check("stock source lookup","General store (Highway)".equals(ModSources.shop("water")));
        c.check("unknown source",ModSources.shop("absent") == null);
        for (int i=0; i<BatchRules.FACTIONS.length; i++) {
            c.check("police sector weapon key " + i,BatchRules.FACTIONS[i].equals(ModEnemyGuns.key(i)));
        }
        c.near("Mantis wing",ModWings.artIndex("mantis"),0);
        c.near("Verdant wing",ModWings.artIndex("verdant"),1);
        c.near("Hornet independent art",ModWings.artIndex("hornet"),-1);
        c.check("pre-stage split hulls",!ModWings.useParts("mantis",4) && !ModMonolith.useParts("monolith",3)
                && !ModHornet.useParts("hornet",0));
        c.near("game job returns result",ModGameQueue.run(() -> 17),17);
        Exception sentinel = new Exception("test exception");
        try {
            ModGameQueue.run(() -> { throw sentinel; });
            throw new AssertionError("lost job failure");
        } catch (Exception actual) {
            c.check("game job propagates same exception", actual == sentinel);
        }
        c.finish();
    }
}
