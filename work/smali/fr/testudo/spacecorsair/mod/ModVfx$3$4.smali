.class Lfr/testudo/spacecorsair/mod/ModVfx$3$4;
.super Ljava/lang/Object;
.source "ModVfx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModVfx$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModVfx$3;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$resume:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 265
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;->this$0:Lfr/testudo/spacecorsair/mod/ModVfx$3;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p3, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;->val$resume:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 266
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;->val$resume:Z

    # invokes: Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->access$000(Z)V

    :cond_f
    return-void
.end method
