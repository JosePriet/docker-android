.class Lfr/testudo/spacecorsair/mod/ModLan$42$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$42;

.field final synthetic val$found:Ljava/util/List;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$42;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2931
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$42$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$42;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$42$1;->val$found:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2933
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$42$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$42;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$42;->val$wait:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_1e

    .line 2934
    :goto_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$42$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$42;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$42;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2936
    :goto_11
    return-void

    .line 2935
    :cond_12
    :try_start_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$42$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$42;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$42;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$42$1;->val$found:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1900(Landroid/app/Activity;Ljava/util/List;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_11

    :catch_1c
    move-exception v0

    goto :goto_11

    .line 2933
    :catch_1e
    move-exception v0

    goto :goto_7
.end method
