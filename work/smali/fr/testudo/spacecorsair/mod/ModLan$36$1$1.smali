.class Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;
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
    .line 2605
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 2607
    const-string v1, "2"

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->val$rows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->publicList(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2000(Landroid/app/Activity;)V

    .line 2609
    :goto_1e
    return-void

    .line 2608
    :cond_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->val$rows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->joinCode(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2300(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1e
.end method
