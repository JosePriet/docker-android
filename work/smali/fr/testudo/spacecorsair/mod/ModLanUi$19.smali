.class Lfr/testudo/spacecorsair/mod/ModLanUi$19;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$load:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;[Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 634
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$h:Landroid/os/Handler;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$load:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 634
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$h:Landroid/os/Handler;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$load:[Ljava/lang/Runnable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
