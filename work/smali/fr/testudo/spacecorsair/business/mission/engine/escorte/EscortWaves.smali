.class public Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public maxNumberOfEnemiesBeforeSendingWave:I

.field public millisecBeforeStart:I

.field public millisecBetweenWaves:I

.field packList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x4e20

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->millisecBetweenWaves:I

    .line 16
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->millisecBeforeStart:I

    .line 17
    const/4 v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->maxNumberOfEnemiesBeforeSendingWave:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->packList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->packList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-object p0
.end method

.method public addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
    .registers 5

    .prologue
    .line 28
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_b

    .line 29
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->packList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_b
    return-object p0
.end method

.method public pickRandomPack()Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->packList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 49
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->packList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 50
    add-int/lit8 v0, v0, -0x1

    .line 52
    :cond_17
    if-ltz v0, :cond_22

    .line 53
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->packList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    .line 56
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public withMillisecBeforeFirstWave(I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
    .registers 2

    .prologue
    .line 41
    iput p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->maxNumberOfEnemiesBeforeSendingWave:I

    .line 42
    return-object p0
.end method

.method public withMillisecBetweenWaves(I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
    .registers 2

    .prologue
    .line 36
    iput p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->millisecBetweenWaves:I

    .line 37
    return-object p0
.end method
