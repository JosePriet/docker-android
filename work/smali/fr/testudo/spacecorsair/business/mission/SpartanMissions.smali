.class public Lfr/testudo/spacecorsair/business/mission/SpartanMissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SPARTAN_BOUNTY_ALIVE:Ljava/lang/String; = "SPARTAN_BOUNTY_ALIVE"

.field public static final SPARTAN_DELIVERY_TRANSFORMER:Ljava/lang/String; = "SPARTAN_DELIVERY_TRANSFORMER"

.field public static final SPARTAN_DESTROY_GUARDIAN:Ljava/lang/String; = "SPARTAN_DESTROY_GUARDIAN"

.field public static final SPARTAN_DESTROY_MINES:Ljava/lang/String; = "SPARTAN_DESTROY_MINES"

.field public static final SPARTAN_DESTROY_SENTRIES:Ljava/lang/String; = "SPARTAN_DESTROY_SENTRIES"

.field public static final SPARTAN_DESTROY_WAVE_FRELON:Ljava/lang/String; = "SPARTAN_DESTROY_WAVE_FRELON"

.field public static final SPARTAN_DISCOVER_ARENA:Ljava/lang/String; = "SPARTAN_DISCOVER_ARENA"

.field public static final SPARTAN_GOTO_OMICRON:Ljava/lang/String; = "SPARTAN_GOTO_OMICRON"

.field public static final SPARTAN_ID_MISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static spartanMissions:Ljava/util/List;
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
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    .line 291
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_DELIVERY_TRANSFORMER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_DISCOVER_ARENA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_DESTROY_WAVE_FRELON"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_DESTROY_GUARDIAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_BOUNTY_ALIVE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_DESTROY_SENTRIES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_DESTROY_MINES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "SPARTAN_GOTO_OMICRON"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLevel10DestroyMines()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 11

    .prologue
    const/16 v7, 0xa

    const/4 v10, 0x1

    .line 205
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    const-string v1, "SPARTAN_DESTROY_MINES"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "spartan headquarters"

    const v5, 0x7f0701bb

    const-class v6, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 206
    iput-boolean v10, v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->doNotCountClassicDeath:Z

    .line 208
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/SpartanMissions$3;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions$3;-><init>()V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->withTargetZoneEnterListener(Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;)Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    const/16 v2, 0x3e8

    const/16 v3, 0xfa0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 221
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "SPARTAN_DESTROY_MINES"

    const v3, 0x7f0701b9

    const v4, 0x7f0701ba

    const v5, 0x7f0701bc

    const/4 v6, 0x0

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 222
    return-object v1
.end method

.method private static getLevel10DestroySentries()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v11, 0x0

    .line 185
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    const-string v1, "SPARTAN_DESTROY_SENTRIES"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "spartan headquarters"

    const v5, 0x7f0701b4

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 187
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/SpartanMissions$2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions$2;-><init>()V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->withTargetZoneEnterListener(Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;)Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->tungstenMissileModLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const/16 v2, 0xfa0

    const/16 v3, 0x4e20

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 198
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "SPARTAN_DESTROY_SENTRIES"

    const v3, 0x7f0701b6

    const v4, 0x7f0701b7

    const v5, 0x7f0701b8

    const/16 v7, 0xa

    move v6, v11

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 199
    return-object v1
.end method

.method private static getLevel11DiscoverOmicron()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 129
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "omicron spaceport"

    invoke-direct {v7, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const/16 v1, 0xbb8

    const/16 v2, 0x1f40

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 133
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "SPARTAN_GOTO_OMICRON"

    const v2, 0x7f0701c1

    const v3, 0x7f0701c2

    const v4, 0x7f0701c3

    const/16 v6, 0xb

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 134
    return-object v0
.end method

.method private static getLevel6DiscoverArena()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 247
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "spartan headquarters"

    const v3, 0x7f0701af

    invoke-direct {v7, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;I)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    const/16 v1, 0x3e8

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 251
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "SPARTAN_DISCOVER_ARENA"

    const v2, 0x7f0701ac

    const v3, 0x7f0701ad

    const v4, 0x7f0701ae

    const/4 v6, 0x6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 252
    return-object v0
.end method

.method private static getLevel8DeliveryEnergy()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v2, 0x14

    invoke-static {v10, v1, v11, v5, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x14

    invoke-static {v1, v2, v5, v5, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v2, 0x28

    invoke-static {v10, v1, v5, v9, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v2, 0x28

    invoke-static {v9, v1, v8, v8, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    .line 50
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x8

    invoke-static {v2, v3, v8, v11, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v10, v2, v11, v11, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x46

    invoke-static {v10, v2, v5, v5, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, -0x3

    const/4 v6, -0x3

    const/16 v7, 0x19

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->RANDOM:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v1

    .line 57
    new-instance v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    const/4 v3, 0x5

    sget-object v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v6, -0x3

    const/16 v7, 0xf

    invoke-static {v3, v4, v6, v8, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->PLAYER_INTERCEPT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x46

    invoke-static {v10, v3, v5, v5, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v2

    .line 62
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;-><init>()V

    const/16 v4, 0x8

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v6, v5, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    const/4 v4, 0x4

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v6, v8, v8}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    const/4 v4, 0x5

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v6, v8, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    const/4 v4, 0x3

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v6, v9, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    const/4 v4, 0x5

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v4, v6, v5, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v9, v4, v8, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v6, -0x3

    invoke-static {v9, v4, v6, v11}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->AREA_END:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v3

    .line 75
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    invoke-direct {v4}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;-><init>()V

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v9, 0x28

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newBuy(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v7, "mining Corp"

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newSell(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->setStaticWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    sget-object v7, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludeLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->STATION_SHIPYARD_NAME:Ljava/lang/String;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newSell(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->setStaticWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    sget-object v7, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludeLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v7, "mining Corp"

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newSell(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->setStaticWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    sget-object v7, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludeLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_SHIELD_NAME:Ljava/lang/String;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->newSell(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v6

    invoke-virtual {v6, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->setStaticWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludeLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    move-result-object v0

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    move-result-object v0

    .line 111
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702c4

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->enemiesName:Ljava/lang/String;

    .line 115
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "spartan headquarters"

    invoke-direct {v7, v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    const/16 v1, 0x3e8

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 121
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "SPARTAN_DELIVERY_TRANSFORMER"

    const v2, 0x7f070197

    const v3, 0x7f070198

    const v4, 0x7f070199

    const/16 v6, 0x8

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 122
    return-object v0
.end method

.method private static getLevel8KillGuardian()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 230
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "spartan headquarters"

    invoke-direct {v7, v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel7:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v1, 0x1388

    const/16 v2, 0x1b58

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 237
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "SPARTAN_DESTROY_GUARDIAN"

    const v2, 0x7f07019e

    const v3, 0x7f07019f

    const v4, 0x7f0701a0

    const/16 v6, 0x8

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 238
    return-object v0
.end method

.method private static getLevel9BountyAlive()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 140
    new-instance v5, Lfr/testudo/spacecorsair/business/mission/SpartanMissions$1;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions$1;-><init>()V

    .line 165
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v3, "spartan headquarters"

    const v4, 0x7f0701a9

    const/16 v6, 0xa

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionBountyAliveSpartan:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;ILfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V

    .line 166
    const/16 v1, 0x7d0

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v11

    .line 167
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v4, "SPARTAN_BOUNTY_ALIVE"

    const v5, 0x7f0701a6

    const v6, 0x7f0701a7

    const v7, 0x7f0701a8

    const/16 v9, 0x9

    move-object v10, v0

    move v12, v8

    invoke-direct/range {v3 .. v12}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 168
    return-object v3
.end method

.method private static getLevel9DestroyWaveFrelon()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v11, 0x0

    .line 173
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    const-string v1, "SPARTAN_DESTROY_WAVE_FRELON"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "spartan headquarters"

    const v5, 0x7f07019d

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/16 v2, 0xbb8

    const/16 v3, 0x2710

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 178
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "SPARTAN_DESTROY_WAVE_FRELON"

    const v3, 0x7f07019a

    const v4, 0x7f07019b

    const v5, 0x7f07019c

    const/16 v7, 0x9

    move v6, v11

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 179
    return-object v1
.end method

.method public static getSpartanMissions()Ljava/util/List;
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
    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    if-nez v0, :cond_7

    .line 260
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->loadSpartanMission()V

    .line 262
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    return-object v0
.end method

.method private static loadSpartanMission()V
    .registers 2

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel6DiscoverArena()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel8DeliveryEnergy()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel8KillGuardian()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel9DestroyWaveFrelon()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel9BountyAlive()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel10DestroySentries()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel10DestroyMines()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getLevel11DiscoverOmicron()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v0, "SPARTAN"
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->addMissions(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
