.class Lfr/testudo/spacecorsair/mod/ModUpdate$15;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 571
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 572
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$a:Landroid/app/Activity;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$15$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$15$1;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$15;)V

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$1000(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    return-void
.end method
