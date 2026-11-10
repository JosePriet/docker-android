.class Lfr/testudo/spacecorsair/mod/ModTestMode$3;
.super Ljava/lang/Object;
.source "ModTestMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModTestMode;->showButton(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModTestMode$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 436
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->replay()V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTestMode$3;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
