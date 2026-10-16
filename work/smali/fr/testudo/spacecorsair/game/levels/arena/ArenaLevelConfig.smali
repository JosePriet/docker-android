.class public Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public level:I

.field public moneyReward:I

.field public waves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->moneyReward:I

    return-void
.end method
