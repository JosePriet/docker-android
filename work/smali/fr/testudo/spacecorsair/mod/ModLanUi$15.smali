.class Lfr/testudo/spacecorsair/mod/ModLanUi$15;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->attach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Landroid/widget/LinearLayout;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 620
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$15;->val$p:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$15;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$15;->val$p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 623
    :goto_a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$15;->val$p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_23

    move v2, v1

    :goto_f
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    if-eqz v0, :cond_20

    # setter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$702(I)I

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$15;->val$tv:Landroid/widget/TextView;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->allLines()Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    :cond_20
    return-void

    :cond_21
    move v0, v1

    .line 622
    goto :goto_a

    .line 623
    :cond_23
    const/16 v2, 0x8

    goto :goto_f
.end method
