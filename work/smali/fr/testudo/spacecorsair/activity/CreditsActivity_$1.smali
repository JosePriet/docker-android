.class Lfr/testudo/spacecorsair/activity/CreditsActivity_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/CreditsActivity_;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_$1;->this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_$1;->this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->back()V

    .line 53
    return-void
.end method
