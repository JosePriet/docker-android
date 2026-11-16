.class Lfr/testudo/spacecorsair/mod/ModLan$36$1$2;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$36$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$36$1;)V
    .registers 2

    .prologue
    .line 2612
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$2;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 2612
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$2;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->publicList(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2000(Landroid/app/Activity;)V

    return-void
.end method
