.class Lfr/testudo/spacecorsair/mod/ModVfx$3$1;
.super Ljava/lang/Object;
.source "ModVfx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$resume:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 222
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$1;->this$0:Lfr/testudo/spacecorsair/mod/ModVfx$3;

    iput-boolean p2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$1;->val$resume:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->setAsk(Z)V

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$1;->val$resume:Z

    # invokes: Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->access$000(Z)V

    return-void
.end method
