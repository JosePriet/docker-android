.class Lfr/testudo/spacecorsair/mod/ModLan$35$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$35;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$35;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$35;)V
    .registers 2

    .prologue
    .line 2576
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$35$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2576
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$35$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$35;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$35;->val$a:Landroid/app/Activity;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$35$1$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$35$1$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$35$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2578
    return-void
.end method
