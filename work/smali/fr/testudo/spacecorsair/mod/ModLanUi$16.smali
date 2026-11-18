.class Lfr/testudo/spacecorsair/mod/ModLanUi$16;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->attach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field shown:I

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$ic:Landroid/widget/Button;

.field final synthetic val$p:Landroid/widget/LinearLayout;

.field final synthetic val$sc:Landroid/widget/ScrollView;

.field final synthetic val$tv:Landroid/widget/TextView;

.field final synthetic val$ui:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/os/Handler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 631
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$ic:Landroid/widget/Button;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$p:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$tv:Landroid/widget/TextView;

    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$sc:Landroid/widget/ScrollView;

    iput-object p6, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$ui:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->shown:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 635
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_14

    # getter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$800()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$a:Landroid/app/Activity;

    if-eq v2, v3, :cond_29

    .line 636
    :cond_14
    # getter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$800()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$a:Landroid/app/Activity;

    if-ne v0, v1, :cond_28

    # setter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$802(Landroid/app/Activity;)Landroid/app/Activity;

    # setter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->icon:Landroid/widget/Button;
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$902(Landroid/widget/Button;)Landroid/widget/Button;

    # setter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->chatPanel:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$1002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    # setter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->chatText:Landroid/widget/TextView;
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$1102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 657
    :cond_28
    :goto_28
    return-void

    .line 640
    :cond_29
    :try_start_29
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 641
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$ic:Landroid/widget/Button;

    if-eqz v2, :cond_30

    move v1, v0

    :cond_30
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 642
    if-nez v2, :cond_44

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$p:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$p:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    :cond_44
    # getter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$700()I

    move-result v1

    .line 644
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_67

    .line 645
    if-lez v1, :cond_66

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$702(I)I

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$tv:Landroid/widget/TextView;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->allLines()Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$sc:Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_66
    move v1, v0

    .line 648
    :cond_67
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->shown:I

    if-eq v1, v0, :cond_80

    .line 649
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->shown:I

    .line 650
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$ic:Landroid/widget/Button;

    if-lez v1, :cond_88

    const-string v0, "\u2709\u2022"

    :goto_73
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$ic:Landroid/widget/Button;

    if-lez v1, :cond_8b

    const v0, -0xbe00ea

    :goto_7d
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_80} :catch_8d

    .line 656
    :cond_80
    :goto_80
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;->val$ui:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    .line 650
    :cond_88
    :try_start_88
    const-string v0, "\u2709"
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8a} :catch_8d

    goto :goto_73

    .line 651
    :cond_8b
    const/4 v0, -0x1

    goto :goto_7d

    .line 653
    :catch_8d
    move-exception v0

    goto :goto_80
.end method
