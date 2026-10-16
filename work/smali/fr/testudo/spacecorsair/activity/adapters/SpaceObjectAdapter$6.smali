.class Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$6;->this$0:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$6;->this$0:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    # getter for: Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->myself:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;
    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->access$000(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 75
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$6;->this$0:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    # getter for: Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;
    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->access$100(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;->onBuy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 76
    return-void
.end method
