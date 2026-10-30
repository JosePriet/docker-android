.class Lfr/testudo/spacecorsair/mod/ModComms$5;
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
.field last:J

.field shown:I

.field shownHas:Z

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$b:Landroid/widget/Button;

.field final synthetic val$d:F


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Button;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 284
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, -0x2

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shown:I

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shownHas:Z

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->last:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 290
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$100()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    if-eq v1, v2, :cond_31

    .line 291
    :cond_16
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$100()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    if-ne v0, v1, :cond_30

    .line 293
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$102(Landroid/app/Activity;)Landroid/app/Activity;

    .line 294
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 295
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$302(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 296
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$402(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 297
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$502(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 298
    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1202(Landroid/widget/Button;)Landroid/widget/Button;

    .line 347
    :cond_30
    :goto_30
    return-void

    .line 303
    :cond_31
    :try_start_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 304
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1300()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/16 v6, 0x2bc

    cmp-long v1, v2, v6

    if-gez v1, :cond_d8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->inGame()Z

    move-result v1

    if-eqz v1, :cond_d8

    const/4 v1, 0x1

    move v3, v1

    .line 307
    :goto_49
    if-nez v3, :cond_5f

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$700()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5f

    iget-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->last:J

    sub-long v6, v4, v6

    # += operator for: Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModComms;->access$714(J)J

    .line 308
    :cond_5f
    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->last:J

    .line 309
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7e

    if-eqz v3, :cond_7e

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$700()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_7e

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    :cond_7e
    if-eqz v3, :cond_db

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$900()I

    move-result v1

    move v2, v1

    .line 311
    :goto_85
    if-gez v2, :cond_ac

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$600()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_ac

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$600()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ac

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ac

    if-eqz v3, :cond_ac

    .line 312
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    :cond_ac
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailHas:Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1000()Z

    move-result v3

    .line 315
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shown:I

    if-ne v2, v1, :cond_ba

    if-ltz v2, :cond_cd

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shownHas:Z

    if-eq v3, v1, :cond_cd

    .line 316
    :cond_ba
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shown:I

    if-eq v2, v1, :cond_de

    const/4 v0, 0x1

    move v1, v0

    .line 317
    :goto_c0
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shown:I

    .line 318
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->shownHas:Z

    .line 319
    if-gez v2, :cond_e0

    .line 320
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_cd} :catch_1b4

    .line 346
    :cond_cd
    :goto_cd
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1500()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_30

    :cond_d8
    move v3, v0

    .line 304
    goto/16 :goto_49

    .line 310
    :cond_db
    const/4 v1, -0x1

    move v2, v1

    goto :goto_85

    :cond_de
    move v1, v0

    .line 316
    goto :goto_c0

    .line 322
    :cond_e0
    :try_start_e0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v0, v2

    .line 323
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iget v5, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v0, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 324
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 325
    const/high16 v5, 0x41000000    # 8.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$d:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 326
    const v5, -0x3fefe7e0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 327
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$d:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HAIL "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<br><small>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1b7

    const-string v0, "Missions"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</small>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emblem_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_197

    .line 333
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 334
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$d:F

    mul-float/2addr v4, v11

    float-to-int v4, v4

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$d:F

    mul-float/2addr v5, v11

    float-to-int v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    const/high16 v2, 0x40c00000    # 6.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 338
    :cond_197
    if-eqz v1, :cond_1a5

    const-string v0, "comms_click"

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x12c

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 339
    :cond_1a5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$b:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    if-eqz v1, :cond_cd

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModComms$5;->val$a:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModComms;->hailHelp(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1400(Landroid/app/Activity;)V

    goto/16 :goto_cd

    .line 343
    :catch_1b4
    move-exception v0

    goto/16 :goto_cd

    .line 330
    :cond_1b7
    const-string v0, "no missions"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1bc
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_1bc} :catch_1b4

    move-result-object v0

    goto/16 :goto_13a
.end method
