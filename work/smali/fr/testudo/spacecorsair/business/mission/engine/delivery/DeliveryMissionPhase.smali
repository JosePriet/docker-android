.class public Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;
    }
.end annotation


# instance fields
.field public dynamicWavesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;",
            ">;"
        }
    .end annotation
.end field

.field public excludedLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ">;"
        }
    .end annotation
.end field

.field public good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

.field public lootPositions:[Lfr/testudo/spacecorsair/engine/Vector2;

.field public phaseEndDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

.field public phaseStartDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

.field public sector:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

.field public stationName:Ljava/lang/String;

.field public type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;


# direct methods
.method private constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;[Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 7

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->BUY:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->dynamicWavesList:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludedLevels:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    .line 42
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->sector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 43
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 44
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->stationName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->lootPositions:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 46
    return-void
.end method

.method public static newBuy(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 9

    .prologue
    .line 49
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->BUY:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;[Lfr/testudo/spacecorsair/engine/Vector2;)V

    return-object v0
.end method

.method public static newLoot(Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 9

    .prologue
    .line 58
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->LOOT:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;[Lfr/testudo/spacecorsair/engine/Vector2;)V

    return-object v0
.end method

.method public static newSell(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 9

    .prologue
    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->SELL:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObject;[Lfr/testudo/spacecorsair/engine/Vector2;)V

    return-object v0
.end method


# virtual methods
.method public addDynamicWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->dynamicWavesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object p0
.end method

.method public addEndDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->phaseEndDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

    .line 77
    return-object p0
.end method

.method public addStartDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->phaseStartDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

    .line 72
    return-object p0
.end method

.method public excludeLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludedLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object p0
.end method

.method public pickWavesConfig()Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->dynamicWavesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    const/4 v0, 0x0

    .line 108
    :goto_9
    return-object v0

    .line 104
    :cond_a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->dynamicWavesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 105
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->dynamicWavesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 106
    add-int/lit8 v0, v0, -0x1

    .line 108
    :cond_21
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->dynamicWavesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    goto :goto_9
.end method

.method public setStaticWave(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    .line 82
    return-object p0
.end method
