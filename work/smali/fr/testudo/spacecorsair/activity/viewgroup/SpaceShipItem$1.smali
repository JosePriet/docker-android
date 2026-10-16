.class Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$1;
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
    .line 214
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$1;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 217
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$1;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const v1, 0x7f07037a

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$1;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->parentActivity:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->finish()V

    .line 220
    return-void
.end method
