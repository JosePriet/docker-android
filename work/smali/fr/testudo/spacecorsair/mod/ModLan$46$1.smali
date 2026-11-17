.class Lfr/testudo/spacecorsair/mod/ModLan$46$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$46;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$46;)V
    .registers 2

    .prologue
    .line 2971
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$46$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2971
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$46$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$46;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$46;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V

    return-void
.end method
