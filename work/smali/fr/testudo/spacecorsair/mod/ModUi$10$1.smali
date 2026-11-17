.class Lfr/testudo/spacecorsair/mod/ModUi$10$1;
.super Ljava/lang/Object;
.source "ModUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModUi$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUi$10;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUi$10;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$10$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUi$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUi$10;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUi$10;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$lbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$10$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUi$10;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUi$10;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$400(Landroid/app/Activity;)V

    :cond_1b
    return-void
.end method
