.class Lfr/testudo/spacecorsair/mod/ModLan$24;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->findHosts(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$wait:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2271
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$24;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$24;->val$wait:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2273
    const/16 v0, 0xfa0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->scan(I)Ljava/util/List;

    move-result-object v0

    .line 2274
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$24;->val$a:Landroid/app/Activity;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$24$1;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$24$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$24;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2281
    return-void
.end method
