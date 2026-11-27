.class Lfr/testudo/spacecorsair/mod/ModVfx$3$3;
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

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->this$0:Lfr/testudo/spacecorsair/mod/ModVfx$3;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->val$to:I

    iput-boolean p3, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->val$resume:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 217
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->val$to:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->setQuality(I)V

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->val$resume:Z

    # invokes: Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->access$000(Z)V

    return-void
.end method
