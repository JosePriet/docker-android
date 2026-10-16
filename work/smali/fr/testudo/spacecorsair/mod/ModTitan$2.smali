.class Lfr/testudo/spacecorsair/mod/ModTitan$2;
.super Ljava/lang/Object;
.source "ModTitan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModTitan;->attachUi(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastKind:I

.field lastReady:Z

.field lastText:Ljava/lang/String;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$bt:Landroid/widget/Button;

.field final synthetic val$d:F

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Button;FLandroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 671
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$d:F

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastText:Ljava/lang/String;

    .line 673
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastKind:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_20

    # getter for: Lfr/testudo/spacecorsair/mod/ModTitan;->btn:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_20

    # getter for: Lfr/testudo/spacecorsair/mod/ModTitan;->btn:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    if-eq v2, v3, :cond_21

    .line 705
    :cond_20
    :goto_20
    return-void

    .line 680
    :cond_21
    :try_start_21
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->show:Z

    if-eqz v2, :cond_e3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModTitan;->lastTick:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v2, v2, v4

    if-gez v2, :cond_e3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->inGame()Z

    move-result v2

    if-eqz v2, :cond_e3

    move v3, v0

    .line 681
    :goto_39
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e6

    move v2, v0

    :goto_42
    if-eq v2, v3, :cond_4c

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    if-eqz v3, :cond_e9

    move v2, v1

    :goto_49
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 682
    :cond_4c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 683
    if-eqz v3, :cond_61

    if-eqz v2, :cond_61

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 684
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastText:Ljava/lang/String;

    .line 687
    :cond_61
    # getter for: Lfr/testudo/spacecorsair/mod/ModTitan;->state:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->access$100()I

    move-result v2

    if-nez v2, :cond_ed

    move v2, v0

    .line 688
    :goto_68
    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->uiKind:I

    .line 689
    if-eqz v3, :cond_da

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastKind:I

    if-ne v4, v0, :cond_74

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastReady:Z

    if-eq v2, v0, :cond_da

    .line 690
    :cond_74
    # getter for: Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->access$200()[[F

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v1, v0, v1

    .line 691
    const/4 v0, 0x0

    aget v0, v1, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    const/4 v3, 0x1

    aget v3, v1, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const/4 v5, 0x2

    aget v5, v1, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v0, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 692
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 693
    const/high16 v5, 0x41000000    # 8.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$d:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 694
    if-eqz v2, :cond_f0

    const/16 v5, 0xd2

    const/4 v6, 0x0

    aget v6, v1, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    const/4 v8, 0x2

    aget v1, v1, v8

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-static {v5, v6, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :goto_bb
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 695
    const/high16 v1, 0x40000000    # 2.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$d:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    if-eqz v2, :cond_f4

    :goto_c6
    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 696
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$bt:Landroid/widget/Button;

    if-eqz v2, :cond_f8

    const/4 v0, -0x1

    :goto_d3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 698
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastKind:I

    .line 699
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->lastReady:Z
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_da} :catch_fc

    .line 704
    :cond_da
    :goto_da
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitan$2;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20

    :cond_e3
    move v3, v1

    .line 680
    goto/16 :goto_39

    :cond_e6
    move v2, v1

    .line 681
    goto/16 :goto_42

    :cond_e9
    const/16 v2, 0x8

    goto/16 :goto_49

    :cond_ed
    move v2, v1

    .line 687
    goto/16 :goto_68

    .line 694
    :cond_f0
    const v1, -0x5fefe7e0

    goto :goto_bb

    .line 695
    :cond_f4
    const v0, -0xb5aaa0

    goto :goto_c6

    .line 697
    :cond_f8
    const v0, -0x554b42

    goto :goto_d3

    .line 701
    :catch_fc
    move-exception v0

    goto :goto_da
.end method
