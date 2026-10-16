.class Lfr/testudo/spacecorsair/activity/MyShipActivity_$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_$15;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_$15;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->showLaser()V

    .line 293
    return-void
.end method
