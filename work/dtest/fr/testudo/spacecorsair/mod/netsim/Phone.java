package netsim;

public interface Phone {
    interface Transport { void send(int from, int to, byte[] bytes); }
    void init(int number, boolean fixed, Transport transport);
    void configureRegistry(java.util.Map<String, String> env);
    void clock(long time);
    void start(int other, int sid, boolean host) throws Exception;
    void stop(boolean crash) throws Exception;
    boolean disconnected();
    String lobby(String encoded, String query);
    void timers();
    void datagram(int from, byte[] bytes) throws Exception;
    void frame() throws Exception;
    void flush() throws Exception;
    void play(int xp, int damage, int kills) throws Exception;
    void duel(boolean loss) throws Exception;
    final class Snapshot {
        public final int xp, hull, lootRolls, enemies, round, sharedXp, killsSent, guestWins;
        public Snapshot(int xp, int hull, int lootRolls, int enemies, int round, int sharedXp, int killsSent, int guestWins) {
            this.xp = xp;
            this.hull = hull;
            this.lootRolls = lootRolls;
            this.enemies = enemies;
            this.round = round;
            this.sharedXp = sharedXp;
            this.killsSent = killsSent;
            this.guestWins = guestWins;
        }
    }
    Snapshot state() throws Exception;
    void finding(int id) throws Exception;
}
