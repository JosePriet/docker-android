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

.field final synthetic val$lroot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 236
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    const-string v1, "modToolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 240
    :cond_12
    :try_start_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lroot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_22

    .line 244
    :goto_1b
    return-void

    .line 243
    :cond_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$400(Landroid/app/Activity;)V

    goto :goto_1b

    .line 240
    :catch_22
    move-exception v0

    goto :goto_1b
.end method
