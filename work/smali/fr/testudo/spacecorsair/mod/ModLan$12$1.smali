.class Lfr/testudo/spacecorsair/mod/ModLan$12$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$12;

.field final synthetic val$found:Ljava/util/List;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$12;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1369
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$12$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$12;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$12$1;->val$found:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1371
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$12$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$12;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$12;->val$wait:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_11

    .line 1372
    :goto_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$12$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$12;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$12;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$12$1;->val$found:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200(Landroid/app/Activity;Ljava/util/List;)V

    .line 1373
    return-void

    .line 1371
    :catch_11
    move-exception v0

    goto :goto_7
.end method
