.class Lfr/testudo/spacecorsair/mod/ModUpdate$2;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->prompt(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$game:Z

.field final synthetic val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLandroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 297
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$a:Landroid/app/Activity;

    iput-boolean p2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$game:Z

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$c:Landroid/content/Context;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->show(Landroid/app/Activity;)V

    .line 300
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$2;->val$a:Landroid/app/Activity;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$2$1;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$2;)V

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$300(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    .line 301
    return-void
.end method
