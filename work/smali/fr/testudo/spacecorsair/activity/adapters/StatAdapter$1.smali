.class Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

.field final synthetic val$curStat:Lfr/testudo/spacecorsair/game/achievements/StatItem;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;Lfr/testudo/spacecorsair/game/achievements/StatItem;)V
    .registers 3

    .prologue
    .line 34
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;->this$0:Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;->val$curStat:Lfr/testudo/spacecorsair/game/achievements/StatItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;->this$0:Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

    # getter for: Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;->statListener:Lfr/testudo/spacecorsair/activity/StatClickListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;->access$000(Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;)Lfr/testudo/spacecorsair/activity/StatClickListener;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;->val$curStat:Lfr/testudo/spacecorsair/game/achievements/StatItem;

    invoke-interface {v0, v1}, Lfr/testudo/spacecorsair/activity/StatClickListener;->onStatClick(Lfr/testudo/spacecorsair/game/achievements/StatItem;)V

    .line 38
    return-void
.end method
