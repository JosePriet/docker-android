.class public Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static VENTOHIGH_DESTROY_HUGO:Ljava/lang/String; = null

.field public static VENTOHIGH_DESTROY_PIRATE_TWIN:Ljava/lang/String; = null

.field public static VENTOHIGH_DESTROY_TOURELLES_CONSTELL:Ljava/lang/String; = null

.field public static VENTOHIGH_DETAUPE:Ljava/lang/String; = null

.field public static VENTOHIGH_FAKE_MISSION:Ljava/lang/String; = null

.field public static VENTOHIGH_FIND_PIRATE_TWIN:Ljava/lang/String; = null

.field public static final VENTOHIGH_GOTO_SPARTAN:Ljava/lang/String; = "VENTOHIGH_GOTO_SPARTAN"

.field public static VENTOHIGH_HERMES_TRAINING:Ljava/lang/String;

.field public static final VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static VENTOHIGH_MISSILE_TEST:Ljava/lang/String;

.field public static VENTOHIGH_RESCUE:Ljava/lang/String;

.field public static VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

.field public static ventoHighMissions:Ljava/util/List;
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
    .line 23
    const-string v0, "VENTOHIGH_DESTROY_TOURELLES_CONSTELL"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_TOURELLES_CONSTELL:Ljava/lang/String;

    .line 24
    const-string v0, "VENTOHIGH_FIND_PIRATE_TWIN"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FIND_PIRATE_TWIN:Ljava/lang/String;

    .line 25
    const-string v0, "VENTOHIGH_DESTROY_PIRATE_TWIN"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_PIRATE_TWIN:Ljava/lang/String;

    .line 26
    const-string v0, "VENTOHIGH_SCAN_CIVIL"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    .line 27
    const-string v0, "VENTOHIGH_RESCUE"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_RESCUE:Ljava/lang/String;

    .line 28
    const-string v0, "VENTOHIGH_DETAUPE"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DETAUPE:Ljava/lang/String;

    .line 29
    const-string v0, "VENTOHIGH_DESTROY_HUGO"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_HUGO:Ljava/lang/String;

    .line 30
    const-string v0, "VENTOHIGH_MISSILE_TEST"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_MISSILE_TEST:Ljava/lang/String;

    .line 31
    const-string v0, "VENTOHIGH_HERMES_TRAINING"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_HERMES_TRAINING:Ljava/lang/String;

    .line 34
    const-string v0, "VENTOHIGH_FAKE_MISSION"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FAKE_MISSION:Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    .line 263
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FIND_PIRATE_TWIN:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_PIRATE_TWIN:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_RESCUE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DETAUPE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_HUGO:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_MISSILE_TEST:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_HERMES_TRAINING:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    const-string v1, "VENTOHIGH_GOTO_SPARTAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFakeMission()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v9, 0x1

    const v2, 0x7f07017f

    const/4 v5, 0x0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v1, v3, v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0, v5, v5}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 64
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FAKE_MISSION:Ljava/lang/String;

    const/4 v6, 0x3

    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 65
    return-object v0
.end method

.method public static getMission3MissileTest()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 84
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "shipyard"

    const-string v3, "ventohigh Command Center"

    invoke-direct {v7, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/16 v1, 0x9c4

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 90
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_MISSILE_TEST:Ljava/lang/String;

    const v2, 0x7f070170

    const v3, 0x7f070171

    const v4, 0x7f070172

    const/4 v6, 0x3

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 91
    return-object v0
.end method

.method private static getMission4FindStation()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/16 v5, 0x7d0

    const/4 v11, 0x0

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702bc

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v6, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions$1;

    invoke-direct {v6, v0}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions$1;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v3, 0x7f070155

    const-string v4, "ventohigh Command Center"

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;ILjava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;)V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const/16 v2, 0x2710

    invoke-static {v1, v5, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 223
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FIND_PIRATE_TWIN:Ljava/lang/String;

    const v3, 0x7f070152

    const v4, 0x7f070153

    const v5, 0x7f070154

    const/4 v7, 0x4

    move v6, v11

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 224
    return-object v1
.end method

.method public static getMission4HermesTraning()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 11

    .prologue
    const/4 v10, 0x1

    .line 72
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_HERMES_TRAINING:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ventohigh Command Center"

    const v5, 0x7f070183

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/16 v7, 0x32

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v2, v3, v10}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const/16 v2, 0x4e2

    const/16 v3, 0x708

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 78
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_HERMES_TRAINING:Ljava/lang/String;

    const v3, 0x7f070180

    const v4, 0x7f070181

    const v5, 0x7f070182

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 79
    return-object v1
.end method

.method private static getMission4ScanCivils()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    .line 97
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ventohigh Command Center"

    const v5, 0x7f07014f

    const v6, 0x7f070150

    const v7, 0x7f070151

    const/16 v8, 0xf

    const/4 v9, 0x5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;IIIIID)V

    .line 100
    const/16 v1, 0x1f4

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 101
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    const v3, 0x7f07014c

    const v4, 0x7f07014d

    const v5, 0x7f07014e

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 102
    return-object v1
.end method

.method private static getMission5DestroyPirateStation()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 110
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v2, 0x7f07015e

    const-string v3, "ventohigh Command Center"

    invoke-direct {v7, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;ILjava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ventohighGovLaser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v1, 0xbb8

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 117
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_PIRATE_TWIN:Ljava/lang/String;

    const v2, 0x7f07015a

    const v3, 0x7f07015b

    const v4, 0x7f07015c

    const/4 v6, 0x4

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 118
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FIND_PIRATE_TWIN:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 119
    return-object v0
.end method

.method private static getMission5VentohighDetaupe()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 140
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DETAUPE:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ventohigh Command Center"

    const v5, 0x7f07016b

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    const/16 v7, 0x1e

    new-instance v8, Lfr/testudo/spacecorsair/engine/Vector2;

    const v9, 0x453b8000    # 3000.0f

    const/high16 v11, 0x44480000    # 800.0f

    invoke-direct {v8, v9, v11}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v2, v3, v10}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const/16 v2, 0x5dc

    const/16 v3, 0xdac

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 146
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DETAUPE:Ljava/lang/String;

    const v3, 0x7f070168

    const v4, 0x7f070169

    const v5, 0x7f07016a

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 147
    return-object v1
.end method

.method private static getMission6VentohighRescue()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 126
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "ventohigh"

    invoke-direct {v7, v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel5AntiMissile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/16 v1, 0x9c4

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 132
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_RESCUE:Ljava/lang/String;

    const v2, 0x7f070161

    const v3, 0x7f070162

    const v4, 0x7f070163

    const/4 v6, 0x6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 133
    return-object v0
.end method

.method private static getMission7VentohighDestroyHugo()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 11

    .prologue
    .line 154
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_HUGO:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ventohigh Command Center"

    const v5, 0x7f07016f

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/16 v7, 0x28

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 156
    const/16 v1, 0x9c4

    const/16 v2, 0x10cc

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 157
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_HUGO:Ljava/lang/String;

    const v3, 0x7f07016c

    const v4, 0x7f07016d

    const v5, 0x7f07016e

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 158
    return-object v1
.end method

.method public static getMission8GotoSpartan()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 41
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "spartan headquarters"

    invoke-direct {v7, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "VENTOHIGH_GOTO_SPARTAN"

    const v2, 0x7f070184

    const v3, 0x7f070185

    const v4, 0x7f070186

    const/16 v6, 0x8

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 46
    return-object v0
.end method

.method public static getVentoHighMission()Ljava/util/List;
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
    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    if-nez v0, :cond_7

    .line 231
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->loadVentoHighMission()V

    .line 234
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    return-object v0
.end method

.method private static loadVentoHighMission()V
    .registers 2

    .prologue
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission3MissileTest()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission4HermesTraning()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission4ScanCivils()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission4FindStation()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission5DestroyPirateStation()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission5VentohighDetaupe()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission6VentohighRescue()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission7VentohighDestroyHugo()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getMission8GotoSpartan()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v0, "VENTOHIGH"
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->addMissions(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
