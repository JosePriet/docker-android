import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
public class V23 {
    public static void main(String[] a) throws Exception {
        System.out.println("values " + SpaceObjectType.values().length + " images " + PlayerShipSpec.Image.values().length);
        for (String n : new String[]{"hullSecretSpartan", "hullSecretReaver", "hullSecretKretari", "hullSecretVarn", "hullSecretIronclad", "hullSecretHelion", "hullSecretWarden"}) {
            SpaceObjectType t = SpaceObjectType.valueOf(n);
            PlayerShipSpec s = (PlayerShipSpec) t.getGearSpec();
            System.out.println(n + " ord " + t.ordinal() + " ship " + SpaceObjectType.ALL_SHIPS.contains(t) + " canons " + s.canonCount + " img " + s.image + " lvl " + s.level);
        }
        System.out.println(PlayerShipSpec.Image.valueOf("MOD_SECRET_WARDEN").ordinal());
    }
}
