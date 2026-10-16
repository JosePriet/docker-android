.class Lfr/testudo/spacecorsair/activity/BuyInapp_$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/BuyInapp_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_$3;->this$0:Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_$3;->this$0:Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->LayBuy10()V

    .line 82
    return-void
.end method
