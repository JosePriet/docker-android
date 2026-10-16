.class Lfr/testudo/spacecorsair/activity/HelpActivity_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/HelpActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/HelpActivity_;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/HelpActivity_$1;->this$0:Lfr/testudo/spacecorsair/activity/HelpActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/HelpActivity_$1;->this$0:Lfr/testudo/spacecorsair/activity/HelpActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->close()V

    .line 45
    return-void
.end method
