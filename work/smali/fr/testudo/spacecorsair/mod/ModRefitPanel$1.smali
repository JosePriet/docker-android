.class Lfr/testudo/spacecorsair/mod/ModRefitPanel$1;
.super Ljava/lang/Object;
.source "ModRefitPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModRefitPanel;->show(Landroid/app/Activity;)V
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
    .line 48
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModRefitPanel$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 50
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->buy()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "refitpanel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_19

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitPanel$1;->val$a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_19
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitPanel$1;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRefitPanel;->show(Landroid/app/Activity;)V

    .line 54
    return-void
.end method
