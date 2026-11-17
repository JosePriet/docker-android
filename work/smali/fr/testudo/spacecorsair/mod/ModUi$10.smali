.class Lfr/testudo/spacecorsair/mod/ModUi$10;
.super Ljava/lang/Object;
.source "ModUi.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUi;->ensureBar(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final later:Ljava/lang/Runnable;

.field seen:J

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$lbar:Landroid/view/View;

.field final synthetic val$lroot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 237
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lbar:Landroid/view/View;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUi$10$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModUi$10$1;-><init>(Lfr/testudo/spacecorsair/mod/ModUi$10;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->later:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 245
    :cond_10
    :try_start_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_43

    .line 251
    :goto_19
    return-void

    .line 248
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->later:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->seen:J

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModScroll;->screenChanged(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->screenKey(Landroid/view/View;)J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->seen:J

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$400(Landroid/app/Activity;)V

    goto :goto_19

    .line 250
    :cond_39
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->later:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 245
    :catch_43
    move-exception v0

    goto :goto_19
.end method
