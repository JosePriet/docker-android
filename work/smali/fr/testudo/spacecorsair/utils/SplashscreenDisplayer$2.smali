.class final Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 60
    # getter for: Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->parentView:Landroid/view/ViewGroup;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->access$100()Landroid/view/ViewGroup;

    move-result-object v0

    # getter for: Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 62
    return-void
.end method
