.class public Lfr/testudo/spacecorsair/business/world/PathFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/world/PathFinder$1;
    }
.end annotation


# static fields
.field private static jumpCostByLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCostByLevel:Ljava/util/Map;

    .line 1031
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/PathFinder;->initJumpCostMap()V

    .line 1032
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static canJumpTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1096
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 1098
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    if-eqz v1, :cond_1f

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, p0, :cond_21

    :cond_1f
    move v0, v2

    .line 1112
    :goto_20
    return v0

    .line 1104
    :cond_21
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    .line 1106
    sget-object v1, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCostByLevel:Ljava/util/Map;

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1108
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1112
    if-gt v0, v3, :cond_50

    const/4 v0, 0x1

    goto :goto_20

    :cond_50
    move v0, v2

    goto :goto_20
.end method

.method public static couldJump(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 2

    .prologue
    .line 1087
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 1089
    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, p0, :cond_20

    .line 1090
    :cond_1e
    const/4 v0, 0x0

    .line 1092
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private static estimateLeafAndDive(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/Stack",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1067
    if-nez p1, :cond_4

    .line 1082
    :goto_3
    return-void

    .line 1072
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1073
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, p3, 0x1

    if-le v0, v2, :cond_2a

    move v0, v1

    .line 1078
    :goto_19
    if-eqz v0, :cond_24

    .line 1079
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_24
    add-int/lit8 v0, p3, 0x1

    invoke-static {p1, p2, v0, p4}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getJumpCostMap(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V

    goto :goto_3

    .line 1073
    :cond_2a
    const/4 v0, 0x0

    goto :goto_19

    :cond_2c
    move v0, v1

    .line 1076
    goto :goto_19
.end method

.method private static findInAeriaPassing(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 294
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 330
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 324
    :pswitch_d
    const-string v0, "> omicron prime <"

    goto :goto_c

    .line 326
    :pswitch_10
    const-string v0, "> eternity <"

    goto :goto_c

    .line 294
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInConstellation(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 767
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 799
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 791
    :pswitch_d
    const-string v0, "> ventohigh <"

    goto :goto_c

    .line 793
    :pswitch_10
    const-string v0, "> pirate bay <"

    goto :goto_c

    .line 797
    :pswitch_13
    const-string v0, "> heliostat <"

    goto :goto_c

    .line 767
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInDeltaNode(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 210
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 205
    :pswitch_d
    const-string v0, "> green border <"

    goto :goto_c

    .line 207
    :pswitch_10
    const-string v0, "> the hive <"

    goto :goto_c

    .line 176
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static findInEternity(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 357
    const-string v0, "> aeria passing <"

    .line 361
    :goto_d
    return-object v0

    :pswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 351
    :pswitch_data_10
    .packed-switch 0x15
        :pswitch_e
    .end packed-switch
.end method

.method private static findInGallacticSpeedway(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 487
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 520
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 517
    :pswitch_d
    const-string v0, "> heliostat <"

    goto :goto_c

    .line 487
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInGenesis(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 954
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 986
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 980
    :pswitch_d
    const-string v0, "> thor passing <"

    goto :goto_c

    .line 982
    :pswitch_10
    const-string v0, "> planck Pride <"

    goto :goto_c

    .line 984
    :pswitch_13
    const-string v0, "> tutorial <"

    goto :goto_c

    .line 954
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_b
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInGreenBorder(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 248
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 242
    :pswitch_d
    const-string v0, "> lost paradise <"

    goto :goto_c

    .line 245
    :pswitch_10
    const-string v0, "> delta node <"

    goto :goto_c

    .line 214
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static findInHeliostat(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 611
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 647
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 625
    :pswitch_d
    const-string v0, "> constellation <"

    goto :goto_c

    .line 641
    :pswitch_10
    const-string v0, "> hermes <"

    goto :goto_c

    .line 643
    :pswitch_13
    const-string v0, "> galactic arena <"

    goto :goto_c

    .line 611
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private static findInHermes(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 651
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 687
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 677
    :pswitch_d
    const-string v0, "> ore belt <"

    goto :goto_c

    .line 682
    :pswitch_10
    const-string v0, "> heliostat <"

    goto :goto_c

    .line 651
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInHighway(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 134
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 131
    :pswitch_d
    const-string v0, "> lost paradise <"

    goto :goto_c

    .line 101
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private static findInHugoWisdom(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 843
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 876
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 855
    :pswitch_d
    const-string v0, "> twin stars <"

    goto :goto_c

    .line 860
    :pswitch_10
    const-string v0, "> ore belt <"

    goto :goto_c

    .line 874
    :pswitch_13
    const-string v0, "> spartan headquarters <"

    goto :goto_c

    .line 843
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_d
        :pswitch_13
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private static findInLostParadise(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 289
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 279
    :pswitch_d
    const-string v0, "> omicron prime <"

    goto :goto_c

    .line 283
    :pswitch_10
    const-string v0, "> green border <"

    goto :goto_c

    .line 286
    :pswitch_13
    const-string v0, "> highway <"

    goto :goto_c

    .line 253
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method private static findInOmicron(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 403
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 389
    :pswitch_d
    const-string v0, "> orion <"

    goto :goto_c

    .line 393
    :pswitch_10
    const-string v0, "> aeria passing <"

    goto :goto_c

    .line 399
    :pswitch_13
    const-string v0, "> lost paradise <"

    goto :goto_c

    .line 365
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private static findInOreBelt(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 692
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 726
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 711
    :pswitch_d
    const-string v0, "> hugo wisdom <"

    goto :goto_c

    .line 720
    :pswitch_10
    const-string v0, "> ventohigh <"

    goto :goto_c

    .line 724
    :pswitch_13
    const-string v0, "> hermes <"

    goto :goto_c

    .line 692
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_b
        :pswitch_13
        :pswitch_13
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInOrion(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 407
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 443
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 428
    :pswitch_d
    const-string v0, "> solar field <"

    goto :goto_c

    .line 430
    :pswitch_10
    const-string v0, "> the vault <"

    goto :goto_c

    .line 439
    :pswitch_13
    const-string v0, "> omicron prime <"

    goto :goto_c

    .line 407
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_13
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private static findInPirateBay(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 732
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 762
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 760
    :pswitch_d
    const-string v0, "> constellation <"

    goto :goto_c

    .line 732
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInPlanck(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 992
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 1022
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 1020
    :pswitch_d
    const-string v0, "> genesis <"

    goto :goto_c

    .line 992
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static findInSolarField(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 448
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 483
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 468
    :pswitch_d
    const-string v0, "> the wave <"

    goto :goto_c

    .line 479
    :pswitch_10
    const-string v0, "> orion <"

    goto :goto_c

    .line 448
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private static findInSpartan(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 570
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 606
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 589
    :pswitch_d
    const-string v0, "> hugo wisdom <"

    goto :goto_c

    .line 602
    :pswitch_10
    const-string v0, "> the wave <"

    goto :goto_c

    .line 570
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private static findInTheHive(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 171
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 168
    :pswitch_d
    const-string v0, "> delta node <"

    goto :goto_c

    .line 138
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private static findInTheVault(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 342
    const-string v0, "> orion <"

    .line 346
    :goto_d
    return-object v0

    :pswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 336
    :pswitch_data_10
    .packed-switch 0x13
        :pswitch_e
    .end packed-switch
.end method

.method private static findInTheWave(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 524
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 560
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 543
    :pswitch_d
    const-string v0, "> spartan headquarters <"

    goto :goto_c

    .line 555
    :pswitch_10
    const-string v0, "> solar field <"

    goto :goto_c

    .line 524
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private static findInThor(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 918
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 949
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 924
    :pswitch_d
    const-string v0, "> genesis <"

    goto :goto_c

    .line 947
    :pswitch_10
    const-string v0, "> ventohigh <"

    goto :goto_c

    .line 918
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private static findInTutorial(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 566
    const-string v0, "> genesis <"

    return-object v0
.end method

.method private static findInTwinStars(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 881
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 913
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 896
    :pswitch_d
    const-string v0, "> ventohigh <"

    goto :goto_c

    .line 911
    :pswitch_10
    const-string v0, "> hugo wisdom <"

    goto :goto_c

    .line 881
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private static findInVentoHigh(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 804
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 837
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 811
    :pswitch_d
    const-string v0, "> constellation <"

    goto :goto_c

    .line 816
    :pswitch_10
    const-string v0, "> thor passing <"

    goto :goto_c

    .line 819
    :pswitch_13
    const-string v0, "> twin stars <"

    goto :goto_c

    .line 835
    :pswitch_16
    const-string v0, "> ore belt <"

    goto :goto_c

    .line 804
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_16
        :pswitch_d
        :pswitch_16
        :pswitch_10
        :pswitch_16
        :pswitch_d
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private static getJumpCostMap(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/Stack",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1050
    invoke-virtual {p3, p0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1063
    :goto_6
    return-void

    .line 1053
    :cond_7
    invoke-virtual {p3, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {p0, v0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/PathFinder;->estimateLeafAndDive(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V

    .line 1056
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {p0, v0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/PathFinder;->estimateLeafAndDive(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V

    .line 1057
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {p0, v0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/PathFinder;->estimateLeafAndDive(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V

    .line 1058
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {p0, v0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/PathFinder;->estimateLeafAndDive(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V

    .line 1061
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_6
.end method

.method public static getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    .line 96
    const/4 v0, 0x0

    :goto_14
    return-object v0

    .line 30
    :pswitch_15
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInGenesis(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 32
    :pswitch_1a
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInPlanck(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 34
    :pswitch_1f
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInThor(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 41
    :pswitch_24
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInVentoHigh(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 43
    :pswitch_29
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInConstellation(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 45
    :pswitch_2e
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInPirateBay(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 47
    :pswitch_33
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInTwinStars(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 50
    :pswitch_38
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInHugoWisdom(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 54
    :pswitch_3d
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInOreBelt(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 56
    :pswitch_42
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInHermes(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 58
    :pswitch_47
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInHeliostat(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 60
    :pswitch_4c
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInSpartan(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 62
    :pswitch_51
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInTutorial(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 64
    :pswitch_56
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInTheWave(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 66
    :pswitch_5b
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInGallacticSpeedway(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 68
    :pswitch_60
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInSolarField(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 70
    :pswitch_65
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInOrion(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 72
    :pswitch_6a
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInOmicron(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 74
    :pswitch_6f
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInTheVault(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 76
    :pswitch_74
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInAeriaPassing(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 78
    :pswitch_79
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInEternity(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 80
    :pswitch_7e
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInLostParadise(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 82
    :pswitch_83
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInGreenBorder(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 84
    :pswitch_88
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInDeltaNode(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 86
    :pswitch_8d
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInTheHive(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 88
    :pswitch_92
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->findInHighway(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 27
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_3d
        :pswitch_42
        :pswitch_47
        :pswitch_4c
        :pswitch_51
        :pswitch_56
        :pswitch_5b
        :pswitch_60
        :pswitch_65
        :pswitch_6a
        :pswitch_6f
        :pswitch_74
        :pswitch_79
        :pswitch_7e
        :pswitch_83
        :pswitch_88
        :pswitch_8d
        :pswitch_92
    .end packed-switch
.end method

.method public static initJumpCostMap()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1035
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 1037
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1038
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 1041
    invoke-static {v4, v5, v1, v6}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getJumpCostMap(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/Map;ILjava/util/Stack;)V

    .line 1042
    sget-object v6, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCostByLevel:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1045
    :cond_27
    return-void
.end method

.method public static jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 4

    .prologue
    .line 1116
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 1118
    sget-object v1, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCostByLevel:Ljava/util/Map;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1120
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1124
    return v0
.end method

.method public static jumpLength(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 1129
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCostByLevel:Ljava/util/Map;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1131
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
