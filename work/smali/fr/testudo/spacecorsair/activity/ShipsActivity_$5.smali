.class Lfr/testudo/spacecorsair/activity/ShipsActivity_$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/ShipsActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity_$5;->this$0:Lfr/testudo/spacecorsair/activity/ShipsActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity_$5;->this$0:Lfr/testudo/spacecorsair/activity/ShipsActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->showInAppCredits()V

    .line 113
    return-void
.end method
