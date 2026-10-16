.class public Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_STATIC_WAVE_PROBA:D = 0.6


# instance fields
.field public staticWaveProbability:D

.field public wave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)V
    .registers 4

    .prologue
    .line 26
    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-direct {p0, p1, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->wave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    .line 22
    iput-wide p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->staticWaveProbability:D

    .line 23
    return-void
.end method


# virtual methods
.method public rollDice()Z
    .registers 5

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->staticWaveProbability:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
