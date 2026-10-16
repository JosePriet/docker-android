.class Lfr/testudo/spacecorsair/activity/BuyInapp_$4;
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
    .line 91
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_$4;->this$0:Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_$4;->this$0:Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->LayBuy250()V

    .line 97
    return-void
.end method
