.class Lfr/testudo/spacecorsair/mod/ModComms$1;
.super Ljava/lang/Object;
.source "ModComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$ms:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$text:Ljava/lang/String;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$ms:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    .line 92
    :try_start_3
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    if-nez v1, :cond_a

    .line 114
    :goto_9
    return-void

    .line 93
    :cond_a
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    .line 94
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v2

    .line 95
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v3, v1

    .line 96
    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 97
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$100()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 98
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 99
    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 100
    const v6, -0x1ff5f1e6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 101
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 102
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$key:Ljava/lang/String;

    # invokes: Lfr/testudo/spacecorsair/mod/ModComms;->portrait(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModComms;->access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 104
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$300()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$300()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v4, :cond_bd

    :goto_6a
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$400()Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  \u00b7  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$400()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$500()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$1;->val$ms:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->access$602(J)J
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b8} :catch_ba

    goto/16 :goto_9

    .line 111
    :catch_ba
    move-exception v0

    goto/16 :goto_9

    .line 105
    :cond_bd
    const/16 v0, 0x8

    goto :goto_6a
.end method
