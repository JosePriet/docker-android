.class Lfr/testudo/spacecorsair/mod/ModComms$1;
.super Ljava/lang/Object;
.source "ModComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$ms:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$withOpen:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$text:Ljava/lang/String;

    iput-boolean p3, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$withOpen:Z

    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$ms:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    .line 107
    :try_start_5
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v2

    if-nez v2, :cond_c

    .line 130
    :goto_b
    return-void

    .line 108
    :cond_c
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    .line 109
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v3

    .line 110
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v4, v4, v2

    .line 111
    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget v6, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v2, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 112
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$100()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 113
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 114
    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 115
    const v7, -0x1ff5f1e6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v6, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 117
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    # invokes: Lfr/testudo/spacecorsair/mod/ModComms;->portrait(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModComms;->access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$300()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$300()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v2, :cond_d2

    move v2, v0

    :goto_6d
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$400()Landroid/widget/TextView;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    aget-object v3, v7, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  \u00b7  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$400()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$500()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$600()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_b9

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$600()Landroid/widget/Button;

    move-result-object v2

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$withOpen:Z

    if-eqz v3, :cond_d4

    :goto_b6
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    :cond_b9
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$ms:I

    if-gez v0, :cond_d6

    const-wide v0, 0x7fffffffffffffffL

    :goto_ca
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->access$702(J)J

    goto/16 :goto_b

    .line 127
    :catch_cf
    move-exception v0

    goto/16 :goto_b

    :cond_d2
    move v2, v1

    .line 120
    goto :goto_6d

    :cond_d4
    move v0, v1

    .line 124
    goto :goto_b6

    .line 126
    :cond_d6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$ms:I
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_dc} :catch_cf

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_ca
.end method
