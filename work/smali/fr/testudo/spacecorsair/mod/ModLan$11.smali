.class Lfr/testudo/spacecorsair/mod/ModLan$11;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V
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
    .line 1353
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$11;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 1354
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$11;->val$a:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->findHosts(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100(Landroid/app/Activity;)V

    return-void
.end method
