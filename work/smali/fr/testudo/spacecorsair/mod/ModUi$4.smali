.class Lfr/testudo/spacecorsair/mod/ModUi$4;
.super Ljava/lang/Object;
.source "ModUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUi;->ensureBar(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$4;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->sellJunk(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$700(Landroid/app/Activity;)V

    return-void
.end method
