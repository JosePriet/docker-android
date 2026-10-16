.class Lfr/testudo/spacecorsair/mod/ModScroll$1;
.super Ljava/lang/Object;
.source "ModScroll.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModScroll;->attach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 40
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 45
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 42
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->stopAll()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 39
    # invokes: Lfr/testudo/spacecorsair/mod/ModScroll;->hook(Landroid/app/Activity;)V
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModScroll;->access$000(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 44
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 41
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 43
    return-void
.end method
