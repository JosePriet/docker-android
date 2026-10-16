.class public Lfr/testudo/spacecorsair/game/achievements/StatModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STAT_ITEMS:[Lfr/testudo/spacecorsair/game/achievements/StatItem;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 18
    const/16 v0, 0x2c

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/achievements/StatItem;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finish_10_mission:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->unlock_10_achievements:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07020d

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->die_10_times:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07020e

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->explore_10_sectors:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070224

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->jump20Times:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070226

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getThrough500gates:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070219

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->unlock5Secret:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07021c

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buyNewShip:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07022f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->player10KDamage:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070213

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_1000_ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070209

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_20_albatros:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07020f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill100Aliens:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070230

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killAnAlienMotherShip:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070231

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->oneShoot50Ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070217

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy50Civils:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07021a

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy10Stations:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070225

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->critical1000:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070227

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->eliteKiller20:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070229

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->shoot_500_missiles:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070211

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill500WithMissile:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070221

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->player_100_missiles_hit:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070212

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_10_missiles:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07020c

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getHit1000TimeByMissile:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070222

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->boomerang:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07022a

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killedBySentry10:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07021d

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->booster100K:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070223

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killed_by_civil:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07022c

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killedByMine:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07022d

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishOneArena:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07022e

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->astroid_crash:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07020a

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->astroid_hit100:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07020b

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_100_asteroid:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070206

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy50AsteGold:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070220

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->dock100Station:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07021e

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->loot_1000:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070210

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->miss500Loot:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07021f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_10_items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070208

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buy100Items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070214

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->sell1000Items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070215

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->use25repairExpress:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070216

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->earn1MCredit:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070218

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buyInApp:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07022b

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->cumulate10KdeathPenalty:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f07021b

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->useThreeMobileShopTicket:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    const v3, 0x7f070228

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/achievements/StatModule;->STAT_ITEMS:[Lfr/testudo/spacecorsair/game/achievements/StatItem;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method
