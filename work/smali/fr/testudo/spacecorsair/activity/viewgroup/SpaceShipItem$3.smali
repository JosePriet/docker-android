.class Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$3;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$3;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->parentActivity:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    const-class v2, Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$3;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->parentActivity:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method
