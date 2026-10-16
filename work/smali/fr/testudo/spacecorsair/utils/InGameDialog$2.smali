.class final Lfr/testudo/spacecorsair/utils/InGameDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic val$onCancelListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$2;->val$onCancelListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$2;->val$onCancelListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$2;->val$onCancelListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_9
    return-void
.end method
