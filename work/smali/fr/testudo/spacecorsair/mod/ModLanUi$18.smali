.class Lfr/testudo/spacecorsair/mod/ModLanUi$18;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$ad:Landroid/widget/ArrayAdapter;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$loading:[Z

.field final synthetic val$note:Landroid/widget/TextView;

.field final synthetic val$rows:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;[ZLjava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 697
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$h:Landroid/os/Handler;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$dlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$loading:[Z

    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$rows:Ljava/util/ArrayList;

    iput-object p6, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$ad:Landroid/widget/ArrayAdapter;

    iput-object p7, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$note:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 723
    :cond_16
    :goto_16
    return-void

    .line 701
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 702
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$loading:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_16

    .line 703
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$loading:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    .line 704
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanUi$18$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLanUi$18$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLanUi$18;)V

    const-string v2, "lobby-list"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_16
.end method
