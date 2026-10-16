.class public Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$5;
    }
.end annotation


# static fields
.field public static final OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OMICRON_PRIME_DEFEND_CIVILIANS:Ljava/lang/String; = "OMICRON_PRIME_DEFEND_CIVILIANS"

.field private static final OMICRON_PRIME_DELIVER_LOST_PARADIZE_ENERGY:Ljava/lang/String; = "OMICRON_PRIME_DELIVER_LOST_PARADIZE_ENERGY"

.field private static final OMICRON_PRIME_ESCORT_NIKO_JAIL:Ljava/lang/String; = "OMICRON_PRIME_ESCORT_NIKO_JAIL"

.field private static final OMICRON_PRIME_FIND_SECRET_DEVICE:Ljava/lang/String; = "OMICRON_PRIME_FIND_SECRET_DEVICE"

.field private static final OMICRON_PRIME_FIND_SURVIVORS:Ljava/lang/String; = "OMICRON_PRIME_FIND_SURVIVORS"

.field private static final OMICRON_PRIME_GATHER_ALIENS_EGG:Ljava/lang/String; = "OMICRON_PRIME_GATHER_ALIEN_EGG"

.field private static final OMICRON_PRIME_GATHER_ALIENS_JELLY:Ljava/lang/String; = "OMICRON_PRIME_GATHER_ALIEN_JELLY"

.field private static final OMICRON_PRIME_GATHER_ALIENS_JELLY2:Ljava/lang/String; = "OMICRON_PRIME_GATHER_ALIEN_JELLY2"

.field private static final OMICRON_PRIME_KILL_ALIEN_MOTHERSHIP:Ljava/lang/String; = "OMICRON_PRIME_KILL_ALIEN_MOTHERSHIP"

.field private static final OMICRON_PRIME_KILL_STRAVOS_NAME:Ljava/lang/String; = "OMICRON_PRIME_KILL_STRAVOS"

.field private static final OMICRON_PRIME_SPEED_CONTROL:Ljava/lang/String; = "OMICRON_PRIME_SPEED_CONTROL"

.field public static omicronPrimeMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    .line 524
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_ESCORT_NIKO_JAIL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_FIND_SURVIVORS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_DELIVER_LOST_PARADIZE_ENERGY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_KILL_STRAVOS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_FIND_SECRET_DEVICE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_GATHER_ALIEN_JELLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_GATHER_ALIEN_JELLY2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_GATHER_ALIEN_EGG"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_KILL_ALIEN_MOTHERSHIP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_SPEED_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->OMICRONPRIME_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "OMICRON_PRIME_DEFEND_CIVILIANS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    return-void
.end method

.method public static getDefendCivilians()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 70
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "omicron spaceport"

    invoke-direct {v7, v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const/16 v1, 0x2328

    const v2, 0x13880

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 78
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "OMICRON_PRIME_DEFEND_CIVILIANS"

    const v2, 0x7f0701fb

    const v3, 0x7f0701fc

    const v4, 0x7f0701fd

    const/16 v6, 0xe

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 79
    return-object v0
.end method

.method public static getDeliverLostParadise()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 13

    .prologue
    const/16 v12, 0x14

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x2

    .line 279
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v2, v5, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v2, v6, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v2, v9, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v1, v4, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v2, v5, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v9, v1, v4, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v2, -0x2

    invoke-static {v9, v1, v2, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    .line 289
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v6, v2, v9, v6, v12}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v2, v5, v5, v12}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x28

    invoke-static {v6, v2, v6, v6, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x28

    invoke-static {v9, v2, v9, v9, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    .line 295
    new-instance v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v6, v3, v5, v9, v12}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v9, v3, v6, v6, v12}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v2

    .line 301
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;-><init>()V

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v8, 0x32

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newBuy(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v4

    new-instance v6, Lfr/testudo/spacecorsair/game/CharacterDialog;

    const v7, 0x7f020059

    const v8, 0x7f0701d2

    const v10, 0x7f0701d3

    const/16 v11, 0xfa0

    invoke-direct {v6, v7, v8, v10, v11}, Lfr/testudo/spacecorsair/game/CharacterDialog;-><init>(IIII)V

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addEndDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v6, "missile factory"

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v8, 0x32

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newSell(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->setStaticWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludeLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v0

    .line 318
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702c4

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->enemiesName:Ljava/lang/String;

    .line 322
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "omicron spaceport"

    invoke-direct {v7, v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1, v12}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const/16 v1, 0x5dc

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 329
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "OMICRON_PRIME_DELIVER_LOST_PARADIZE_ENERGY"

    const v2, 0x7f0701cf

    const v3, 0x7f0701d0

    const v4, 0x7f0701d1

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 330
    return-object v0
.end method

.method public static getEscortNikoJail()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v11, 0x0

    .line 337
    new-instance v6, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;-><init>()V

    .line 425
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->PRISON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x3c6a0000    # -300.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v8

    .line 427
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "omicron spaceport"

    const v5, 0x7f0701c4

    const v7, 0x7f0701c7

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    const/16 v2, 0xbb8

    const/16 v3, 0x4e20

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 432
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "OMICRON_PRIME_ESCORT_NIKO_JAIL"

    const v3, 0x7f0701c6

    const v4, 0x7f0701cd

    const v5, 0x7f0701ce

    const/16 v7, 0xb

    move v6, v11

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 434
    return-object v1
.end method

.method public static getFindSecretDevice()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 11

    .prologue
    .line 170
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$1;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$1;-><init>()V

    .line 210
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v3, 0x7f0701df

    const v4, 0x7f0701e0

    const-string v5, "omicron spaceport"

    const/16 v6, 0x190

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->secretTransmeter:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILjava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 212
    const/16 v1, 0xfa0

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 214
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "OMICRON_PRIME_FIND_SECRET_DEVICE"

    const v3, 0x7f0701dc

    const v4, 0x7f0701dd

    const v5, 0x7f0701de

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 215
    return-object v1
.end method

.method public static getFindSurvivors()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v11, 0x0

    .line 222
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$2;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$2;-><init>()V

    .line 264
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v3, 0x7f0701d7

    const v4, 0x7f0701d8

    const-string v5, "omicron spaceport"

    const/16 v6, 0x190

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueCivilPilot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILjava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 267
    const/16 v1, 0x1388

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 269
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "OMICRON_PRIME_FIND_SURVIVORS"

    const v3, 0x7f0701d4

    const v4, 0x7f0701d5

    const v5, 0x7f0701d6

    const/16 v7, 0xb

    move v6, v11

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 270
    return-object v1
.end method

.method public static getGatherAlienEgg()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 117
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;

    const-string v1, "OMICRON_PRIME_GATHER_ALIEN_EGG"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->alien_egg:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v5, 0x1

    const v6, 0x7f070126

    const/16 v7, 0x14

    const-string v8, "omicron spaceport"

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;ZIILjava/lang/String;Z)V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootInapp:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v2, 0x3e8

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v12

    .line 125
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v5, "OMICRON_PRIME_GATHER_ALIEN_EGG"

    const v6, 0x7f0701e9

    const v7, 0x7f0701ea

    const v8, 0x7f0701eb

    const/16 v10, 0xd

    move-object v11, v0

    move v13, v9

    invoke-direct/range {v4 .. v13}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 126
    const-string v0, "OMICRON_PRIME_GATHER_ALIEN_JELLY2"

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 127
    return-object v4
.end method

.method public static getGatherAlienJelly()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;

    const-string v1, "OMICRON_PRIME_GATHER_ALIEN_JELLY"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->alien_jelly:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v5, 0x1

    const v6, 0x7f070203

    const/16 v7, 0x1e

    const-string v8, "omicron spaceport"

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;ZIILjava/lang/String;Z)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->souteIncrease300:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const/16 v2, 0x1388

    const/16 v3, 0x2710

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v12

    .line 94
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v5, "OMICRON_PRIME_GATHER_ALIEN_JELLY"

    const v6, 0x7f0701e3

    const v7, 0x7f0701e4

    const v8, 0x7f0701e5

    const/16 v10, 0xd

    move-object v11, v0

    move v13, v9

    invoke-direct/range {v4 .. v13}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 95
    return-object v4
.end method

.method public static getGatherAlienJelly2()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 101
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;

    const-string v1, "OMICRON_PRIME_GATHER_ALIEN_JELLY2"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->alien_jelly:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v5, 0x1

    const v6, 0x7f070203

    const/16 v7, 0x32

    const-string v8, "omicron spaceport"

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;ZIILjava/lang/String;Z)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->souteIncrease300:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const/16 v2, 0x1388

    const v3, 0x9c40

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v12

    .line 109
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v5, "OMICRON_PRIME_GATHER_ALIEN_JELLY2"

    const v6, 0x7f0701e6

    const v7, 0x7f0701e7

    const v8, 0x7f0701e8

    const/16 v10, 0xd

    move-object v11, v0

    move v13, v9

    invoke-direct/range {v4 .. v13}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 110
    const-string v0, "OMICRON_PRIME_GATHER_ALIEN_JELLY"

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 111
    return-object v4
.end method

.method public static getKillAlienMotherShip()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v11, 0x0

    .line 151
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    const-string v1, "OMICRON_PRIME_KILL_ALIEN_MOTHERSHIP"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "omicron spaceport"

    const v5, 0x7f0701ef

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootInapp:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const/16 v2, 0xbb8

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 160
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "OMICRON_PRIME_KILL_ALIEN_MOTHERSHIP"

    const v3, 0x7f0701ec

    const v4, 0x7f0701ed

    const v5, 0x7f0701ee

    const/16 v7, 0xe

    move v6, v11

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 161
    return-object v1
.end method

.method public static getMissionKillStravos()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 11

    .prologue
    const/16 v5, 0x6d60

    const-wide v6, 0x40a7700000000000L    # 3000.0

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 440
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0x2328

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v4, v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0x3a98

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v4, v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    .line 448
    new-instance v5, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$4;

    invoke-direct {v5, v0}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$4;-><init>(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)V

    .line 476
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/16 v2, 0xb

    const-string v3, "Stravos"

    const-string v4, "omicron spaceport"

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->newDynamicPLacement(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;ILjava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;)Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;

    move-result-object v7

    .line 477
    iput-boolean v10, v7, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->configAddTourelle:Z

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->theVaultTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const/16 v1, 0x1388

    const v2, 0x88b8

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 482
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "OMICRON_PRIME_KILL_STRAVOS"

    const v2, 0x7f0701be

    const v3, 0x7f0701bf

    const v4, 0x7f0701c0

    const/16 v6, 0xe

    move v5, v10

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 484
    return-object v0
.end method

.method public static getOmicronPrimeMissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    if-nez v0, :cond_7

    .line 494
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->loadOmicronPrimeMissions()V

    .line 496
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    return-object v0
.end method

.method public static getSpeedControl()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    .line 135
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "omicron spaceport"

    invoke-direct {v7, v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v1, 0x3e8

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 143
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "OMICRON_PRIME_SPEED_CONTROL"

    const v2, 0x7f0701f0

    const v3, 0x7f0701f1

    const v4, 0x7f0701f2

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 144
    return-object v0
.end method

.method private static loadOmicronPrimeMissions()V
    .registers 2

    .prologue
    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    .line 505
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getEscortNikoJail()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getFindSurvivors()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getDeliverLostParadise()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getMissionKillStravos()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getFindSecretDevice()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getGatherAlienJelly()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getGatherAlienJelly2()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getGatherAlienEgg()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getKillAlienMotherShip()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getSpeedControl()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getDefendCivilians()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    const-string v0, "OMICRON"
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->addMissions(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
