.class Lfr/testudo/spacecorsair/mod/ModComms$4;
.super Ljava/lang/Object;
.source "ModComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModComms;->attachUi(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field shown:I

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$b:Landroid/widget/Button;

.field final synthetic val$d:F


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Button;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, -0x2

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->shown:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/high16 v7, 0x41b00000    # 22.0f

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$100()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$a:Landroid/app/Activity;

    if-eq v1, v2, :cond_31

    .line 222
    :cond_16
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$100()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$a:Landroid/app/Activity;

    if-ne v0, v1, :cond_30

    .line 224
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$102(Landroid/app/Activity;)Landroid/app/Activity;

    .line 225
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 226
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$302(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 227
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$402(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 228
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$502(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 229
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$902(Landroid/widget/Button;)Landroid/widget/Button;

    .line 265
    :cond_30
    :goto_30
    return-void

    .line 234
    :cond_31
    :try_start_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1000()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v1, v2, v4

    if-gez v1, :cond_47

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->inGame()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x1

    .line 235
    :cond_47
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$600()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5f

    if-nez v0, :cond_68

    :cond_5f
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    :cond_68
    if-eqz v0, :cond_87

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$700()I

    move-result v0

    .line 237
    :goto_6e
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->shown:I

    if-eq v0, v1, :cond_7d

    .line 238
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->shown:I

    .line 239
    if-gez v0, :cond_89

    .line 240
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_7d} :catch_138

    .line 264
    :cond_7d
    :goto_7d
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 236
    :cond_87
    const/4 v0, -0x1

    goto :goto_6e

    .line 242
    :cond_89
    :try_start_89
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    .line 243
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 244
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 245
    const/high16 v3, 0x41000000    # 8.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$d:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 246
    const v3, -0x3fefe7e0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 247
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 248
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAIL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emblem_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_124

    .line 252
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 253
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$d:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$d:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 254
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    const/high16 v1, 0x40c00000    # 6.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 257
    :cond_124
    const-string v0, "comms_click"

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x12c

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$4;->val$b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_136} :catch_138

    goto/16 :goto_7d

    .line 261
    :catch_138
    move-exception v0

    goto/16 :goto_7d
.end method
