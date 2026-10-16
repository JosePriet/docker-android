.class Lfr/testudo/spacecorsair/activity/SettingsActivity_$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/SettingsActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$4;->this$0:Lfr/testudo/spacecorsair/activity/SettingsActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$4;->this$0:Lfr/testudo/spacecorsair/activity/SettingsActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->sendFeedback()V

    .line 106
    return-void
.end method
