.class Lfr/testudo/spacecorsair/mod/ModUpdate$16;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 574
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$16;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 576
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$16;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->undo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "Previous content restored. Restart the game to apply it."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$602(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$1202(Z)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_22

    .line 577
    :cond_17
    :goto_17
    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$800()V

    .line 578
    return-void

    .line 576
    :cond_1b
    :try_start_1b
    const-string v0, "Nothing to undo."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_e

    :catch_22
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$602(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_17
.end method
