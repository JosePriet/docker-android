.class final Lfr/testudo/spacecorsair/utils/MenuDisplayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$3;->val$context:Landroid/content/Context;

    const-class v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_;

    # invokes: Lfr/testudo/spacecorsair/utils/MenuDisplayer;->launch(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->access$000(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    return-void
.end method
