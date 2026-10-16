.class public Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field achievementName:Ljava/lang/String;

.field completed:Z

.field value:J


# direct methods
.method private constructor <init>(Ljava/lang/String;ZJ)V
    .registers 6

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->achievementName:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->completed:Z

    .line 15
    iput-wide p3, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->value:J

    .line 16
    return-void
.end method

.method public static of(Lfr/testudo/spacecorsair/game/achievements/Achievement;)Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;
    .registers 7

    .prologue
    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    iget-wide v4, p0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    invoke-direct {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;-><init>(Ljava/lang/String;ZJ)V

    return-object v0
.end method

.method public static restore(Ljava/lang/String;ZJ)Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;
    .registers 6

    .prologue
    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;

    invoke-direct {v0, p0, p1, p2, p3}, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;-><init>(Ljava/lang/String;ZJ)V

    return-object v0
.end method


# virtual methods
.method public applyToAchievementEnum()V
    .registers 5

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->achievementName:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->completed:Z

    if-eqz v1, :cond_d

    .line 31
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->restoreCompleted()V

    .line 33
    :cond_d
    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->value:J

    iput-wide v2, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    .line 34
    const-string v1, "JDE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achievement :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->achievementName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , value :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->completed:Z

    if-eqz v0, :cond_42

    const-string v0, "(completed)"

    :goto_36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_41
    return-void

    .line 34
    :cond_42
    const-string v0, ""
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_36

    .line 36
    :catch_45
    move-exception v0

    .line 37
    const-string v1, "JDE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while loading the achievement with name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/achievements/AchievementBackup;->achievementName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method
