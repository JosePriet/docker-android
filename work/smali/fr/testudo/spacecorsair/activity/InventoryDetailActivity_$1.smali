.class Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$1;->this$0:Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$1;->this$0:Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->btnEquip()V

    .line 101
    return-void
.end method
