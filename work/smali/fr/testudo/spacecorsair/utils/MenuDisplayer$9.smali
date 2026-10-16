.class final Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic val$onHideListener:Ljava/lang/Runnable;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 221
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;->val$parentView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;->val$onHideListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 228
    # getter for: Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->access$100()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;->val$parentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->reset(Landroid/view/ViewGroup;)V

    .line 230
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;->val$onHideListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 231
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;->val$onHideListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 233
    :cond_17
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 237
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 224
    return-void
.end method
