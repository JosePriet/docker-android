.class public Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;->backups:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public applyToMemory()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;->backups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;

    .line 31
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->applyToAchievementEnum()V

    goto :goto_6

    .line 33
    :cond_16
    return-void
.end method

.method public loadFromMemory()V
    .registers 6

    .prologue
    .line 21
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;->backups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->values()[Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 24
    iget-object v4, p0, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;->backups:Ljava/util/List;

    invoke-static {v3}, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->of(Lfr/testudo/spacecorsair/game/achievements/Achievement;)Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 27
    :cond_1b
    return-void
.end method
