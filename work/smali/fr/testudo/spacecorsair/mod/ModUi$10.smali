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
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$lbar:Landroid/view/View;

.field final synthetic val$lroot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
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

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 241
    :cond_10
    :try_start_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_20

    .line 245
    :goto_19
    return-void

    .line 244
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$400(Landroid/app/Activity;)V

    goto :goto_19

    .line 241
    :catch_20
    move-exception v0

    goto :goto_19
.end method
