.class public Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public waves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addStaticWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;
    .registers 6

    .prologue
    .line 29
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    invoke-direct {v1, p1, p2, p3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-object p0
.end method

.method public addWave(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;
    .registers 4

    .prologue
    .line 24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    invoke-direct {v1, p1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-object p0
.end method
