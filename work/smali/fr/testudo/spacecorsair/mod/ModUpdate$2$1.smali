.class Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModUpdate$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$2;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$game:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->runGame(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->runContent(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    goto :goto_11
.end method
