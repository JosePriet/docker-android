.class Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$1;

.field final synthetic val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$1;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 262
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$1;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 262
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshLabel()V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->prompt(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$100(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    return-void
.end method
