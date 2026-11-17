.class public final Lfr/testudo/spacecorsair/mod/ModIntro;
.super Ljava/lang/Object;
.source "ModIntro.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 1

    .prologue
    .line 45
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public static dt(J)J
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->preFrame()V

    .line 36
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->preFrame()V

    .line 37
    return-wide p0
.end method

.method public static firstStart()V
    .registers 1

    .prologue
    .line 16
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->saveIsNew()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->clearProgress()V

    .line 17
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->firstStart()V

    .line 18
    return-void
.end method

.method public static holdDialog(Lfr/testudo/spacecorsair/engine/GameThread;IIIIZLjava/lang/String;)Z
    .registers 8

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public static isActive()Z
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method static saveIsNew()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 24
    :try_start_2
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 25
    iget v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-gt v3, v0, :cond_21

    iget-wide v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_21

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    if-eqz v3, :cond_20

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1d} :catch_23

    move-result v2

    if-gt v2, v0, :cond_21

    .line 27
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 25
    goto :goto_20

    .line 26
    :catch_23
    move-exception v0

    move v0, v1

    .line 27
    goto :goto_20
.end method

.method public static touch(Landroid/view/MotionEvent;)Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
