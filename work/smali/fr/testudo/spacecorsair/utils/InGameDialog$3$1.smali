.class Lfr/testudo/spacecorsair/utils/InGameDialog$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/utils/InGameDialog$3;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/utils/InGameDialog$3;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$3$1;->this$0:Lfr/testudo/spacecorsair/utils/InGameDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    sget v0, Lfr/testudo/spacecorsair/activity/Main;->scrollForceMoga:I

    if-eqz v0, :cond_16

    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$3$1;->this$0:Lfr/testudo/spacecorsair/utils/InGameDialog$3;

    iget-object v0, v0, Lfr/testudo/spacecorsair/utils/InGameDialog$3;->val$dialogText:Landroid/view/View;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    sget v2, Lfr/testudo/spacecorsair/activity/Main;->scrollForceMoga:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 108
    :cond_16
    return-void
.end method
