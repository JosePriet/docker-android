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

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->this$0:Lfr/testudo/spacecorsair/mod/ModVfx$3;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->val$to:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 256
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;->val$to:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->setQuality(I)V

    return-void
.end method
