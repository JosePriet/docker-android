// Read-only input extractor for the stock enemy missile racks and station reference gun.
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpec;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;

public class Stock {
    public static void main(String[] args) throws Exception {
        System.out.println("table,level,body,damage,reload_ms,missiles,missile_ms,min_range,direct,radius,hull,missile_spec_ms,decent_cap,decent_rate");
        for (String key : new String[]{"albatrosSpec", "alienRatSpec", "UfoSpec", "defensorSpec",
                "BasciEnnemisSpec", "FrelonSpec", "alienBlatteSpec", "TaupeSpec", "rocketTourelleEnemisSpec", "tourelleEnnemisSpec", "alienTourelleSpec"}) {
            EnnemisSpec[] table = (EnnemisSpec[]) EnnemisSpecByLevel.class.getField(key).get(null);
            for (int level = 0; level <= 40; level++) {
                int body = Math.min(level, table.length - 1);
                EnnemisSpec spec = table[body];
                MissileSpec m = spec.missileSpec;
                fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpec[] shields =
                        fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpecBuilder.decentShieldSpecByLevel;
                fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpec shield=shields[Math.min(level,shields.length-1)];
                System.out.printf(java.util.Locale.ROOT, "%s,%d,%d,%d,%d,%d,%d,%d,%.0f,%.0f,%d,%d,%d,%d%n",
                        key, level, body, spec.shootDamage, spec.shootReload, spec.missileCount,
                        spec.missileReloadTime, spec.missileMinDistance,
                        m == null ? spec.missileDamage : m.damage, m == null ? 0 : m.radiusDamage,
                        spec.life, m == null ? 0 : m.reloadSpeedInMilli, shield.capacity, (int)shield.reloadBySec);
            }
        }
    }
}
