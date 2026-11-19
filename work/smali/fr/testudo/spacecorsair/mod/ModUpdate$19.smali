.class Lfr/testudo/spacecorsair/mod/ModUpdate$19;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 644
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$19;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 644
    :try_start_0
    # getter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    # getter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$19;->val$s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
