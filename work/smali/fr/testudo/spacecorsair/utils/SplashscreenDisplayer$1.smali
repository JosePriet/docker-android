.class final Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 45
    # getter for: Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->access$000()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->reset()V

    .line 47
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 51
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 41
    return-void
.end method
