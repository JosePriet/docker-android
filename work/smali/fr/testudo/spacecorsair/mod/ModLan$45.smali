.class Lfr/testudo/spacecorsair/mod/ModLan$45;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$ip:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2892
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$ip:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 2893
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$ip:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2500(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
