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
    .line 34
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public static dt(J)J
    .registers 2

    .prologue
    .line 24
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->preFrame()V

    .line 25
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->preFrame()V

    .line 26
    return-wide p0
.end method

.method public static firstStart()V
    .registers 0

    .prologue
    .line 16
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->clearProgress()V

    .line 17
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->firstStart()V

    .line 18
    return-void
.end method

.method public static holdDialog(Lfr/testudo/spacecorsair/engine/GameThread;IIIIZLjava/lang/String;)Z
    .registers 8

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static isActive()Z
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public static touch(Landroid/view/MotionEvent;)Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
