.class Lfr/testudo/spacecorsair/mod/ModLanUi$12;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->watchApp(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 525
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 537
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 528
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 527
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 536
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 526
    # operator++ for: Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$408()I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 530
    # operator-- for: Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$410()I

    .line 531
    # getter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$400()I

    move-result v0

    if-gtz v0, :cond_19

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    if-eqz v0, :cond_19

    .line 532
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    .line 533
    :try_start_10
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->pauseGame()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_1a

    .line 535
    :cond_19
    :goto_19
    return-void

    .line 533
    :catch_1a
    move-exception v0

    goto :goto_19
.end method
