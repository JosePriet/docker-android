.class Lfr/testudo/spacecorsair/mod/ModUpdate$17;
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

.field final synthetic val$safe:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 597
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$17;->val$c:Landroid/content/Context;

    iput-boolean p2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$17;->val$safe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 599
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$17;->val$c:Landroid/content/Context;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$17;->val$safe:Z

    if-nez v2, :cond_1b

    :goto_7
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->setSafeMode(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$1202(Z)Z

    const-string v0, "Restart the game to apply it."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$602(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_1d

    .line 600
    :goto_17
    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$800()V

    .line 601
    return-void

    .line 599
    :cond_1b
    const/4 v0, 0x0

    goto :goto_7

    :catch_1d
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$602(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_17
.end method
