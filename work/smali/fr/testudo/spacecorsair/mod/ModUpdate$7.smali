.class Lfr/testudo/spacecorsair/mod/ModUpdate$7;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$box:Landroid/widget/LinearLayout;

.field final synthetic val$dlg:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 528
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$7;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$7;->val$box:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 528
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$7;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$7;->val$box:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$7;->val$dlg:Landroid/app/AlertDialog;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$400(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    return-void
.end method
