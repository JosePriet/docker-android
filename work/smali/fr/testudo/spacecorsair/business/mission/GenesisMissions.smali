.class public Lfr/testudo/spacecorsair/business/mission/GenesisMissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static GENESIS_ASTEROID_GATHER:Ljava/lang/String; = null

.field static final GENESIS_ATTAQUE_PILLARD_ID:Ljava/lang/String; = "GENESIS_ATTAQUE_PILLARD"

.field public static final GENESIS_BOUNTY_RPB_3:Ljava/lang/String; = "GENESIS_BOUNTY_RPB_3"

.field public static final GENESIS_CONTREBANDE_PLANCK:Ljava/lang/String; = "GENESIS_CONTREBANDE_PLANCK"

.field public static final GENESIS_DESROY_PIRATE_STATION:Ljava/lang/String; = "GENESIS_DESROY_PIRATE_STATION"

.field public static final GENESIS_DESROY_TOURELLE_PLANCK:Ljava/lang/String; = "GENESIS_DESROY_TOURELLE_PLANCK"

.field public static final GENESIS_GOTO_VENTOHIGH:Ljava/lang/String; = "GENESIS_GOTO_VENTOHIGH"

.field public static final GENESIS_KILL_CHEF_PILLARD_ID:Ljava/lang/String; = "GENESIS_TUER_CHEF_PILLARD"

.field public static final GENESIS_MISSIONS_ID_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUTORIAL:Ljava/lang/String; = "GENESIS_TUTORIAL"

.field public static genesisMission:Ljava/util/List;
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
    .line 40
    const-string v0, "GENESIS_ASTEROID_GATHER"

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_ASTEROID_GATHER:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    .line 241
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_ASTEROID_GATHER:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_CONTREBANDE_PLANCK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_ATTAQUE_PILLARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_TUER_CHEF_PILLARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_DESROY_PIRATE_STATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_DESROY_TOURELLE_PLANCK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_BOUNTY_RPB_3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_GOTO_VENTOHIGH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    const-string v1, "GENESIS_TUTORIAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGenesisMission()Ljava/util/List;
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
    .line 216
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    if-nez v0, :cond_7

    .line 217
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->loadGenesisMission()V

    .line 220
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    return-object v0
.end method

.method private static getMission0AsteroidMining()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 44
    const-string v1, "GENESIS_ASTEROID_GATHER"

    .line 45
    new-instance v12, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$1;

    invoke-direct {v12}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$1;-><init>()V

    .line 51
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->stone:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const v6, 0x7f070124

    const v7, 0x7f070125

    const/16 v8, 0x14

    const-string v10, "mining Corp"

    const-string v11, "genesis Command Center"

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IIIZLjava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;)V

    .line 52
    const/16 v2, 0x1f4

    const/16 v3, 0x5dc

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v12

    .line 53
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/Mission;

    const v6, 0x7f07012a

    const v7, 0x7f07012b

    const v8, 0x7f07012c

    const/4 v13, 0x1

    move-object v5, v1

    move v10, v9

    move-object v11, v0

    invoke-direct/range {v4 .. v13}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 54
    return-object v4
.end method

.method private static getMission1GatherContrebandeBox()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 16

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 64
    new-instance v9, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$2;

    invoke-direct {v9}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$2;-><init>()V

    .line 80
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;

    const-string v1, "GENESIS_CONTREBANDE_PLANCK"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionContrebandeBox:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const v6, 0x7f070126

    const/16 v7, 0x8

    const-string v8, "genesis Command Center"

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;ZIILjava/lang/String;Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const/16 v2, 0x258

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v14

    .line 84
    new-instance v6, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v7, "GENESIS_CONTREBANDE_PLANCK"

    const v8, 0x7f07012e

    const v9, 0x7f07012f

    const v10, 0x7f070130

    move v12, v5

    move-object v13, v0

    move v15, v11

    invoke-direct/range {v6 .. v15}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 85
    return-object v6
.end method

.method public static getMission2DefenseAttaquePillard()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 13

    .prologue
    const/4 v12, 0x0

    .line 95
    new-instance v10, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$3;

    invoke-direct {v10}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$3;-><init>()V

    .line 116
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;

    const-string v1, "GENESIS_ATTAQUE_PILLARD"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "genesis Command Center"

    const v5, 0x7f070134

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->PLANCK_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v7, 0x78

    const/16 v8, 0xc

    const/4 v9, 0x4

    const/16 v11, 0x190

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;IIILfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;I)V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const/16 v2, 0x2d5

    const/16 v3, 0x9c4

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 120
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "GENESIS_ATTAQUE_PILLARD"

    const v3, 0x7f070131

    const v4, 0x7f070132

    const v5, 0x7f070133

    const/4 v7, 0x2

    move v6, v12

    move-object v8, v0

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 121
    return-object v1
.end method

.method public static getMission2TuerChefPillard()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v9, 0x0

    .line 131
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    new-instance v6, Lfr/testudo/spacecorsair/engine/Vector2;

    const v7, 0x463b8000    # 12000.0f

    const/high16 v8, -0x3b060000    # -2000.0f

    invoke-direct {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v8, 0x7f070139

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "genesis Command Center"

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v2, v5, v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const/16 v2, 0x320

    const/16 v4, 0x7d0

    invoke-static {v1, v2, v4}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v12

    .line 136
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v5, "GENESIS_TUER_CHEF_PILLARD"

    const v6, 0x7f070136

    const v7, 0x7f070137

    const v8, 0x7f070138

    move v10, v3

    move-object v11, v0

    move v13, v9

    invoke-direct/range {v4 .. v13}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 137
    const-string v0, "GENESIS_ATTAQUE_PILLARD"

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 138
    return-object v4
.end method

.method private static getMission3BoutyHunterRPB3()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 13

    .prologue
    const/4 v2, 0x3

    const/4 v8, 0x0

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, -0x3aa54000    # -3500.0f

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const-string v6, "Red Peter Blackman"

    const-string v7, "genesis Command Center"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->newStaticPlacement(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;

    move-result-object v10

    .line 179
    iput-boolean v8, v10, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->configAddTourelle:Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const/16 v1, 0x4b0

    const/16 v3, 0xbb8

    invoke-static {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v11

    .line 183
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v4, "GENESIS_BOUNTY_RPB_3"

    const v5, 0x7f070127

    const v6, 0x7f070128

    const v7, 0x7f070129

    move v9, v2

    move v12, v8

    invoke-direct/range {v3 .. v12}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 184
    return-object v3
.end method

.method public static getMission3DestroyPirateStation()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x2

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 147
    new-array v8, v11, [Lfr/testudo/spacecorsair/engine/PopPoint;

    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    const/high16 v1, -0x3c6a0000    # -300.0f

    const/high16 v3, -0x3ed00000    # -11.0f

    const/high16 v5, -0x3ccc0000    # -180.0f

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(FFFFF)V

    aput-object v0, v8, v13

    const/4 v6, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(FFFFF)V

    aput-object v0, v8, v6

    .line 148
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;

    const-string v1, "GENESIS_DESROY_PIRATE_STATION"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "genesis Command Center"

    const v5, 0x7f07013f

    new-instance v6, Lfr/testudo/spacecorsair/engine/Vector2;

    const v7, 0x466a6000    # 15000.0f

    const/high16 v10, 0x44fa0000    # 2000.0f

    invoke-direct {v6, v7, v10}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const v7, 0x7f07013e

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;I[Lfr/testudo/spacecorsair/engine/PopPoint;I)V

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v2, v3, v11}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/16 v2, 0x5dc

    const/16 v3, 0xfa0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v11

    .line 155
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v4, "GENESIS_DESROY_PIRATE_STATION"

    const v5, 0x7f07013b

    const v6, 0x7f07013c

    const v7, 0x7f07013d

    move v8, v13

    move-object v10, v0

    move v12, v13

    invoke-direct/range {v3 .. v12}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 156
    return-object v3
.end method

.method public static getMission4DestroyTourelleThorPassing()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 166
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;

    const-string v1, "GENESIS_DESROY_TOURELLE_PLANCK"

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "genesis Command Center"

    const v5, 0x7f070144

    const-class v6, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    const/16 v7, 0x1e

    new-instance v8, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v8, v9, v9}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;-><init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 167
    const/16 v1, 0x352

    const/16 v2, 0x5dc

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v9

    .line 168
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v2, "GENESIS_DESROY_TOURELLE_PLANCK"

    const v3, 0x7f070141

    const v4, 0x7f070142

    const v5, 0x7f070143

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 169
    return-object v1
.end method

.method public static getMissionGotoVentohigh()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 191
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "ventohigh Command Center"

    invoke-direct {v7, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    const/16 v1, 0xc8

    const/16 v2, 0x9c4

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 195
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "GENESIS_GOTO_VENTOHIGH"

    const v2, 0x7f070149

    const v3, 0x7f07014a

    const v4, 0x7f07014b

    const/4 v6, 0x4

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 196
    return-object v0
.end method

.method public static getMissionTutorial()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 204
    new-instance v7, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "genesis Command Center"

    invoke-direct {v7, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 205
    const v0, 0x7f070148

    invoke-virtual {v7, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->setOverrideDockToMessage(I)V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    const/16 v1, 0x64

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    .line 209
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    const-string v1, "GENESIS_TUTORIAL"

    const v2, 0x7f070145

    const v3, 0x7f070146

    const v4, 0x7f070147

    move v6, v5

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 210
    return-object v0
.end method

.method private static loadGenesisMission()V
    .registers 2

    .prologue
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMissionTutorial()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission0AsteroidMining()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission1GatherContrebandeBox()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission2DefenseAttaquePillard()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission2TuerChefPillard()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission3BoutyHunterRPB3()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission3DestroyPirateStation()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMission4DestroyTourelleThorPassing()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->genesisMission:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getMissionGotoVentohigh()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method
