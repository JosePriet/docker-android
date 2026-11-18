.class Lfr/testudo/spacecorsair/mod/ModLan$49;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$addr:Ljava/lang/String;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3265
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$addr:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3267
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$addr:Ljava/lang/String;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->join(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$a:Landroid/app/Activity;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$49$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$49$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$49;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3269
    return-void
.end method
