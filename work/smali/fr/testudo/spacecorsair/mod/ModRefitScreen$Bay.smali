.class final Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;
.super Landroid/view/View;
.source "ModRefitScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModRefitScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bay"
.end annotation


# instance fields
.field final act:Landroid/app/Activity;

.field animLevel:I

.field animMs:J

.field animStage:I

.field animStart:J

.field final born:J

.field final closeBtn:Landroid/graphics/RectF;

.field cur:Landroid/graphics/Bitmap;

.field curArt:Ljava/lang/String;

.field final dlg:Landroid/app/Dialog;

.field final dp:F

.field final edge:[[F

.field hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

.field lastFrame:J

.field name:Ljava/lang/String;

.field next:Landroid/graphics/Bitmap;

.field nextArt:Ljava/lang/String;

.field nextAt:I

.field old:Landroid/graphics/Bitmap;

.field final p:Landroid/graphics/Paint;

.field final refitBtn:Landroid/graphics/RectF;

.field rf:[Ljava/lang/String;

.field final rnd:Ljava/util/Random;

.field ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field final spark:[[F

.field stageAnim:Z

.field status:Ljava/lang/String;

.field statusUntil:J

.field final tp:Landroid/text/TextPaint;

.field final weld:[[F

.field weldN:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    .line 74
    const/16 v0, 0x30

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    .line 76
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    .line 78
    const/16 v0, 0xa0

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    .line 84
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->act:Landroid/app/Activity;

    .line 85
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dlg:Landroid/app/Dialog;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    const v0, -0xfaf4ea

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->reload()V

    .line 90
    return-void
.end method

.method static grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .registers 8

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 392
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 393
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iget v4, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    iget v5, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v5

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v5

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method


# virtual methods
.method animating()Z
    .registers 5

    .prologue
    .line 156
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 123
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x200

    invoke-static {v0, p1, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method button(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;II)V
    .registers 10

    .prologue
    const/high16 v2, 0x40c00000    # 6.0f

    .line 551
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v2

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 553
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v1, 0x41700000    # 15.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 554
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 555
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 556
    return-void
.end method

.method drawArms(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 17

    .prologue
    .line 290
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    const/4 v0, -0x1

    move v8, v0

    :goto_9
    const/4 v0, 0x1

    if-gt v8, v0, :cond_117

    .line 292
    const/4 v0, 0x0

    move v7, v0

    :goto_e
    const/4 v0, 0x3

    if-ge v7, v0, :cond_112

    .line 293
    iget v0, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3e800000    # 0.25f

    int-to-float v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float v9, v0, v1

    .line 294
    if-gez v8, :cond_f0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    move v6, v0

    .line 295
    :goto_2c
    if-gez v8, :cond_fb

    iget v0, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 296
    :goto_43
    sub-float/2addr v0, v6

    mul-float v0, v0, p4

    add-float v10, v6, v0

    .line 297
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xe4d5c4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v11, v0, v1

    .line 299
    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v11, v0

    sub-float v2, v9, v0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v11, v0

    add-float v4, v9, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xc5af98

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v11, v0

    sub-float v2, v9, v0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v11, v0

    sub-float v0, v9, v0

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 303
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xd5c3ae

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    const/high16 v0, 0x40c00000    # 6.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v1

    sub-float v1, v10, v0

    const/high16 v0, 0x41100000    # 9.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v2

    sub-float v2, v9, v0

    const/high16 v0, 0x40c00000    # 6.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v3

    add-float v3, v10, v0

    const/high16 v0, 0x41100000    # 9.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v4

    add-float v4, v9, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 305
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_eb

    .line 306
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, -0x1960

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    mul-int/lit8 v0, v8, -0x7

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v10

    const/high16 v1, 0x40200000    # 2.5f

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 292
    :cond_eb
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_e

    .line 294
    :cond_f0
    iget v0, p2, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    move v6, v0

    goto/16 :goto_2c

    .line 295
    :cond_fb
    iget v0, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto/16 :goto_43

    .line 291
    :cond_112
    add-int/lit8 v0, v8, 0x2

    move v8, v0

    goto/16 :goto_9

    .line 311
    :cond_117
    return-void
.end method

.method drawBay(Landroid/graphics/Canvas;Landroid/graphics/RectF;JF)V
    .registers 15

    .prologue
    .line 214
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 215
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x1a6ad0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    const/high16 v0, 0x42000000    # 32.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v6, v0, v1

    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v0, p3, v0

    long-to-float v0, v0

    const/high16 v1, 0x42200000    # 40.0f

    div-float/2addr v0, v1

    rem-float v7, v0, v6

    .line 219
    iget v1, p2, Landroid/graphics/RectF;->left:F

    :goto_2e
    iget v0, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_41

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v1, v6

    goto :goto_2e

    .line 220
    :cond_41
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v6

    add-float v2, v0, v7

    :goto_46
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_59

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v2, v6

    goto :goto_46

    .line 221
    :cond_59
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3a2a6a9a

    const v5, 0x50b16

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 223
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 226
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0x7f952f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v6, v0, v1

    const/high16 v0, 0x41e00000    # 28.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v7, v0, v1

    .line 230
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    add-float v3, v0, v7

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v6

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v3, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v6

    add-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 231
    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v6

    sub-float v3, v0, v7

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v6

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v6

    add-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    add-float v3, v0, v7

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v6

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v3, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v6

    sub-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 233
    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v6

    sub-float v3, v0, v7

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v6

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, v6

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v6

    sub-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17c

    .line 287
    :cond_17b
    :goto_17b
    return-void

    .line 237
    :cond_17c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v0

    if-eqz v0, :cond_291

    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    sub-long v0, p3, v0

    long-to-float v0, v0

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animMs:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    move v6, v0

    .line 238
    :goto_18c
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3f47ae14    # 0.78f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v2, 0x3f5c28f6    # 0.86f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 239
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    .line 240
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 241
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    add-float/2addr v2, v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    add-float/2addr v0, v5

    add-float/2addr v0, v1

    invoke-direct {v7, v3, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 244
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_296

    const/4 v0, 0x0

    .line 245
    :goto_205
    mul-float v1, v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 246
    invoke-virtual {p0, p1, p2, v7, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawArms(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 249
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    const-wide v4, 0x4082c00000000000L    # 600.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 250
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const v1, 0x3f847ae1    # 1.035f

    invoke-static {v7, v1}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    const v4, -0x952f01

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 252
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_2bd

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_2bd

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2bd

    .line 253
    invoke-virtual {p0, p1, v7, p2, v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawStageMorph(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 263
    :goto_250
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_2e3

    const v0, 0x3f59999a    # 0.85f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2e3

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    if-lez v0, :cond_2e3

    .line 264
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_2e1

    const/4 v0, 0x6

    .line 265
    :goto_265
    const/4 v1, 0x0

    :goto_266
    if-ge v1, v0, :cond_2e3

    .line 266
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    .line 267
    iget v3, v7, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emit(FFI)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_266

    .line 237
    :cond_291
    const/high16 v0, -0x40800000    # -1.0f

    move v6, v0

    goto/16 :goto_18c

    .line 244
    :cond_296
    const v0, 0x3e19999a    # 0.15f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2a4

    const v0, 0x3e19999a    # 0.15f

    div-float v0, v6, v0

    goto/16 :goto_205

    :cond_2a4
    const v0, 0x3f6147ae    # 0.88f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_2b9

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v6

    const v2, 0x3df5c28f    # 0.12f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_205

    :cond_2b9
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_205

    .line 255
    :cond_2bd
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 256
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 258
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_2dc

    invoke-virtual {p0, p1, v7, v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawLevelPulse(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto/16 :goto_250

    .line 259
    :cond_2dc
    invoke-virtual {p0, p1, v7, p3, p4}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawIdleScan(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V

    goto/16 :goto_250

    .line 264
    :cond_2e1
    const/4 v0, 0x4

    goto :goto_265

    .line 270
    :cond_2e3
    invoke-virtual {p0, p1, p5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawSparks(Landroid/graphics/Canvas;F)V

    .line 273
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_17b

    .line 274
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_395

    const v0, 0x3f3851ec    # 0.72f

    sub-float v0, v6, v0

    const v1, 0x3e8f5c29    # 0.28f

    div-float/2addr v0, v1

    .line 275
    :goto_2f8
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_17b

    .line 276
    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3a0

    const v1, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v1

    .line 277
    :goto_308
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v1, :cond_3b5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEW FORM: STAGE "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    const/4 v3, 0x5

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStage:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    :goto_32e
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v2, :cond_3d0

    const/high16 v2, 0x41d00000    # 26.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v4

    :goto_339
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 279
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v2, :cond_3d7

    const v2, -0x1747b6

    :goto_345
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 280
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 281
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v0, 0x41000000    # 8.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_3dc

    const/16 v0, -0x65d6

    :goto_36b
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 283
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x42100000    # 36.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_17b

    .line 274
    :cond_395
    const v0, 0x3ee66666    # 0.45f

    sub-float v0, v6, v0

    const v1, 0x3f0ccccd    # 0.55f

    div-float/2addr v0, v1

    goto/16 :goto_2f8

    .line 276
    :cond_3a0
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3b1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const v1, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v1

    goto/16 :goto_308

    :cond_3b1
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_308

    .line 277
    :cond_3b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REFIT LEVEL "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_32e

    .line 278
    :cond_3d0
    const/high16 v2, 0x41a00000    # 20.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v4

    goto/16 :goto_339

    .line 279
    :cond_3d7
    const v2, -0x952f01

    goto/16 :goto_345

    .line 281
    :cond_3dc
    const v0, -0xd56501

    goto :goto_36b
.end method

.method drawIdleScan(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 16

    .prologue
    const/high16 v9, 0x41900000    # 18.0f

    const/4 v1, 0x0

    .line 314
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0xfa0

    rem-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x457a0000    # 4000.0f

    div-float/2addr v0, v2

    .line 315
    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v0, v3

    add-float v4, v2, v0

    .line 316
    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v9

    sub-float v2, v4, v2

    const v5, 0x6ad0ff

    const v6, 0x406ad0ff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v9

    sub-float v2, v4, v0

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 318
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 319
    return-void
.end method

.method drawInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 30

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0x33f5e9da    # -3.619855E7f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0xdbc7b1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    if-nez v2, :cond_4f

    .line 531
    :goto_4e
    return-void

    .line 432
    :cond_4f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    add-float v5, v2, v3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    sub-float v15, v2, v3

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18e

    const/4 v2, 0x1

    move v14, v2

    .line 436
    :goto_9b
    const-string v2, "RETROFIT BAY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x14

    const v8, -0x952f01

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 437
    const/high16 v2, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v6, v2

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    if-nez v2, :cond_192

    const-string v4, ""

    :goto_bd
    const/16 v7, 0xf

    const/4 v8, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 439
    const/high16 v2, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v6, v2

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refit level"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const v8, -0x4f3b26

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 443
    const/high16 v2, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float v8, v6, v2

    .line 444
    const/high16 v2, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v13, v2, v3

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, v13

    sub-float v2, v15, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float v17, v2, v3

    .line 445
    const-wide/16 v2, 0x1c2

    div-long v2, p3, v2

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_198

    const/4 v2, 0x1

    .line 446
    :goto_12e
    const/4 v3, 0x0

    move v4, v3

    :goto_130
    const/16 v3, 0xa

    if-ge v4, v3, :cond_1aa

    .line 447
    int-to-float v3, v4

    add-float v6, v17, v13

    mul-float/2addr v3, v6

    add-float v7, v5, v3

    .line 448
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v16

    if-ge v4, v0, :cond_19a

    const v3, -0x1747b6

    :goto_145
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    add-float v9, v7, v17

    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v6

    add-float v10, v8, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 450
    rem-int/lit8 v3, v4, 0x2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_18a

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v6, 0x60ffffff

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, v7, v17

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v9

    sub-float/2addr v3, v6

    add-float v9, v7, v17

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float v10, v8, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 446
    :cond_18a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_130

    .line 434
    :cond_18e
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_9b

    .line 438
    :cond_192
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    goto/16 :goto_bd

    .line 445
    :cond_198
    const/4 v2, 0x0

    goto :goto_12e

    .line 448
    :cond_19a
    move/from16 v0, v16

    if-ne v4, v0, :cond_1a6

    if-nez v14, :cond_1a6

    if-eqz v2, :cond_1a6

    const v3, -0x7f952f01

    goto :goto_145

    :cond_1a6
    const v3, -0xe4d5c4

    goto :goto_145

    .line 452
    :cond_1aa
    const/high16 v2, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float v6, v8, v2

    .line 455
    const-string v2, "Form"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const v8, -0x4f3b26

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 456
    const/high16 v2, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float v4, v6, v2

    .line 457
    const/high16 v2, 0x40a00000    # 5.0f

    div-float v6, v15, v2

    .line 458
    const/4 v2, 0x1

    move v3, v2

    :goto_1d4
    const/4 v2, 0x5

    if-gt v3, v2, :cond_303

    .line 459
    int-to-float v2, v3

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v2, v7

    mul-float/2addr v2, v6

    add-float v7, v5, v2

    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v8

    add-float v8, v4, v2

    .line 460
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-gt v3, v12, :cond_2ec

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_1ef
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 462
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-gt v3, v12, :cond_2f0

    const v2, -0x1747b6

    :goto_209
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    new-instance v2, Landroid/graphics/Rect;

    const/high16 v9, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    sub-float v9, v7, v9

    float-to-int v9, v9

    const/high16 v10, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v10, v11

    sub-float v10, v8, v10

    float-to-int v10, v10

    const/high16 v11, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v11, v13

    add-float/2addr v11, v7

    float-to-int v11, v11

    const/high16 v13, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v17, v0

    mul-float v13, v13, v17

    add-float/2addr v13, v8

    float-to-int v13, v13

    invoke-direct {v2, v9, v10, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 465
    const/high16 v9, 0x42340000    # 45.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 466
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v9, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 470
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    if-gt v3, v12, :cond_2fe

    const v2, -0xfaf4ea

    :goto_270
    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 471
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 472
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float v9, v7, v9

    const/high16 v10, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v9, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const v9, -0x807160

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "-"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v9, v3, 0x2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v7, v9

    const/high16 v9, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1d4

    .line 460
    :cond_2ec
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_1ef

    .line 462
    :cond_2f0
    add-int/lit8 v2, v12, 0x1

    if-ne v3, v2, :cond_2f9

    const v2, -0x952f01

    goto/16 :goto_209

    :cond_2f9
    const v2, -0xdbc7b1

    goto/16 :goto_209

    .line 470
    :cond_2fe
    const v2, -0x4f3b26

    goto/16 :goto_270

    .line 478
    :cond_303
    const/high16 v2, 0x42500000    # 52.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float v6, v4, v2

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Each level: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xb

    const v9, -0x4f3b26

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v7, v15

    invoke-virtual/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rare parts"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xb

    const v8, -0x807160

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 483
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    .line 486
    const/high16 v3, 0x42a80000    # 84.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    const/high16 v6, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 487
    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    cmpl-float v4, v3, v4

    if-lez v4, :cond_507

    .line 488
    new-instance v4, Landroid/graphics/RectF;

    add-float v6, v5, v3

    add-float v7, v2, v3

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 489
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v7, -0xf4e5d2

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v7, -0xdbc7b1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5bb

    .line 498
    const v6, 0x3f6147ae    # 0.88f

    mul-float/2addr v6, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3f6147ae    # 0.88f

    mul-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 499
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    .line 500
    new-instance v12, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float/2addr v8, v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v6, v10

    sub-float/2addr v9, v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    add-float/2addr v7, v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    add-float/2addr v6, v10

    invoke-direct {v12, v8, v9, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 501
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    const v6, 0x3f87ae14    # 1.06f

    invoke-static {v12, v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v9

    const v10, -0x952f01

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    move-wide/from16 v0, p3

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x407f400000000000L    # 500.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v6, v6, v18

    double-to-int v11, v6

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 502
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    const v10, -0xebcdb6

    const/16 v11, 0xff

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v12

    invoke-virtual/range {v6 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next form at refit "

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 509
    :goto_4cb
    iget v6, v4, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v9

    add-float v9, v6, v7

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float v10, v4, v6

    sub-float v4, v15, v3

    const/high16 v6, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float v11, v4, v6

    const/16 v12, 0xb

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5e5

    const v13, -0x952f01

    :goto_4f7
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v13}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    .line 510
    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 514
    :cond_507
    const/high16 v2, 0x42300000    # 44.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v10, v2, v3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v10

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    sub-float v11, v2, v3

    .line 516
    if-eqz v14, :cond_5ea

    const-string v2, "This hull is fully refitted."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    :goto_525
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    if-eqz v2, :cond_694

    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statusUntil:J

    cmp-long v2, p3, v2

    if-gez v2, :cond_694

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    const/high16 v2, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v6, v11, v2

    const/16 v8, 0xb

    const v9, -0x9495

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v7, v15

    invoke-virtual/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    .line 525
    :goto_54d
    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v2, v15, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    add-float v4, v5, v2

    add-float v6, v11, v10

    invoke-virtual {v3, v5, v11, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    add-float/2addr v2, v5

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    add-float v4, v5, v15

    add-float v5, v11, v10

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    const-string v2, "Close"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, -0xdbc7b1

    const v7, -0x4f3b26

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->button(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;II)V

    .line 529
    if-nez v14, :cond_6af

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v2

    if-nez v2, :cond_6af

    const/4 v2, 0x1

    .line 530
    :goto_598
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v3

    if-eqz v3, :cond_6b2

    const-string v3, "Refitting..."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5a8
    if-eqz v2, :cond_6ba

    const v6, -0x1747b6

    :goto_5ad
    if-eqz v2, :cond_6bf

    const v7, -0xfaf4ea

    :goto_5b2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->button(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;II)V

    goto/16 :goto_4e

    .line 504
    :cond_5bb
    const/4 v6, 0x5

    if-ge v12, v6, :cond_5d5

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v6, :cond_5dd

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModV35;->stageArt(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    if-eq v6, v7, :cond_5dd

    .line 505
    :cond_5d5
    const-string v6, "Final form reached"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4cb

    .line 507
    :cond_5dd
    const-string v6, "This hull keeps its shape (no new form art yet)"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4cb

    .line 509
    :cond_5e5
    const v13, -0x807160

    goto/16 :goto_4f7

    .line 518
    :cond_5ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    const-string v3, "0"

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_651

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "parts"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_651
    add-int/lit8 v3, v16, 0x1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_675

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    :cond_675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next level"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_525

    .line 524
    :cond_694
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v6, v11, v2

    const/16 v7, 0xc

    if-eqz v14, :cond_6ad

    const v8, -0x1747b6

    :goto_6a4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    goto/16 :goto_54d

    :cond_6ad
    const/4 v8, -0x1

    goto :goto_6a4

    .line 529
    :cond_6af
    const/4 v2, 0x0

    goto/16 :goto_598

    .line 530
    :cond_6b2
    const-string v3, "REFIT"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5a8

    :cond_6ba
    const v6, -0xc5b9aa

    goto/16 :goto_5ad

    :cond_6bf
    const v7, -0x807160

    goto/16 :goto_5b2
.end method

.method drawLevelPulse(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .registers 13

    .prologue
    const/high16 v8, 0x41d00000    # 26.0f

    const v7, 0x3f3851ec    # 0.72f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 323
    const/high16 v0, 0x3f400000    # 0.75f

    div-float v0, p3, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 324
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 326
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v8

    sub-float v3, v1, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float/2addr v1, v5

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 327
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const v4, -0x952f01

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    mul-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    cmpl-float v0, p3, v7

    if-lez v0, :cond_67

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_67

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const v4, -0x1747b6

    const/high16 v0, 0x42f00000    # 120.0f

    sub-float v1, p3, v7

    const v3, 0x3e6b851f    # 0.23f

    div-float/2addr v1, v3

    sub-float v1, v6, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 330
    :cond_67
    return-void
.end method

.method drawSparks(Landroid/graphics/Canvas;F)V
    .registers 12

    .prologue
    .line 409
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x3fcccccd    # 1.6f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 410
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_10
    if-ge v6, v8, :cond_7f

    aget-object v4, v7, v6

    .line 411
    const/4 v0, 0x4

    aget v0, v4, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    .line 410
    :goto_1c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10

    .line 412
    :cond_20
    const/4 v0, 0x4

    aget v1, v4, v0

    sub-float/2addr v1, p2

    aput v1, v4, v0

    .line 413
    const/4 v0, 0x3

    aget v1, v4, v0

    const/high16 v2, 0x43820000    # 260.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v4, v0

    .line 414
    const/4 v0, 0x0

    aget v1, v4, v0

    const/4 v0, 0x1

    aget v2, v4, v0

    .line 415
    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v5, 0x2

    aget v5, v4, v5

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v0

    .line 416
    const/4 v0, 0x1

    aget v3, v4, v0

    const/4 v5, 0x3

    aget v5, v4, v5

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v0

    .line 417
    const/4 v0, 0x0

    const/4 v3, 0x4

    aget v3, v4, v3

    const/4 v5, 0x5

    aget v5, v4, v5

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 418
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7c

    const/16 v0, -0xb40

    :goto_63
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 420
    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v0, 0x1

    aget v4, v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 418
    :cond_7c
    const/16 v0, -0x4fc0

    goto :goto_63

    .line 422
    :cond_7f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 423
    return-void
.end method

.method drawStageMorph(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 15

    .prologue
    .line 333
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 334
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3f47ae14    # 0.78f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v2, 0x3f5c28f6    # 0.86f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 336
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 337
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    sub-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    add-float/2addr v1, v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    add-float/2addr v0, v5

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 338
    const v0, 0x3e3851ec    # 0.18f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8a

    .line 339
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 340
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const v4, -0x952f01

    const/high16 v0, 0x430c0000    # 140.0f

    mul-float/2addr v0, p4

    const v1, 0x3e3851ec    # 0.18f

    div-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 380
    :cond_89
    :goto_89
    return-void

    .line 343
    :cond_8a
    const v0, 0x3f3851ec    # 0.72f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_197

    .line 345
    const v0, 0x3e3851ec    # 0.18f

    sub-float v0, p4, v0

    const v1, 0x3f0a3d71    # 0.54f

    div-float/2addr v0, v1

    .line 346
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 347
    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float v8, v1, v0

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 349
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 350
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 351
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const v4, -0x952f01

    const/16 v5, 0x46

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 354
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 355
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 356
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 358
    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x42200000    # 40.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float v1, v8, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 359
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 361
    iget-object v9, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v2, v8, v2

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    const v5, 0x6ad0ff

    const v6, -0x6f952f01

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 362
    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    const/high16 v0, 0x41f00000    # 30.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v2

    sub-float v2, v8, v0

    iget v0, p3, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x41a00000    # 20.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    const/high16 v0, 0x40000000    # 2.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v4

    add-float v4, v8, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 363
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 364
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p3, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v3, v0, v2

    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v2

    add-float v4, v8, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 366
    const/4 v0, 0x0

    :goto_17f
    const/4 v1, 0x3

    if-ge v0, v1, :cond_89

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v8, v2}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emit(FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17f

    .line 370
    :cond_197
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 371
    const v0, 0x3f3851ec    # 0.72f

    sub-float v0, p4, v0

    const v1, 0x3e8f5c29    # 0.28f

    div-float v6, v0, v1

    .line 372
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1c3

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    const/high16 v0, 0x43660000    # 230.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    div-float v3, v6, v3

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 373
    :cond_1c3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 375
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0x1747b6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 378
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_89
.end method

.method drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 383
    if-eqz p2, :cond_7

    if-gtz p5, :cond_8

    .line 389
    :cond_7
    :goto_7
    return-void

    .line 384
    :cond_8
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 385
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-static {v3, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 387
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 388
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7
.end method

.method emit(FFI)V
    .registers 16

    .prologue
    const/4 v11, 0x4

    const/4 v1, 0x0

    const/high16 v10, 0x42200000    # 40.0f

    .line 397
    move v0, v1

    :goto_5
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_66

    if-lez p3, :cond_66

    .line 398
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    aget-object v2, v2, v0

    .line 399
    aget v3, v2, v11

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 397
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 400
    :cond_1a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 401
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v10

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v6

    .line 402
    aput p1, v2, v1

    const/4 v6, 0x1

    aput p2, v2, v6

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v3

    aput v7, v2, v6

    const/4 v6, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    aput v3, v2, v6

    .line 403
    const/4 v3, 0x5

    const v4, 0x3e99999a    # 0.3f

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v11

    aput v4, v2, v3

    .line 404
    add-int/lit8 p3, p3, -0x1

    goto :goto_17

    .line 406
    :cond_66
    return-void
.end method

.method level()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const v11, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 201
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->lastFrame:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_45

    const v6, 0x3c83126f    # 0.016f

    .line 202
    :goto_15
    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->lastFrame:J

    .line 203
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->getHeight()I

    move-result v2

    .line 204
    if-le v1, v2, :cond_55

    const/4 v0, 0x1

    .line 205
    :goto_22
    if-eqz v0, :cond_57

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    mul-float/2addr v7, v11

    int-to-float v8, v2

    invoke-direct {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 206
    :goto_2c
    if-eqz v0, :cond_60

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v7, v1

    mul-float/2addr v7, v11

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v0, v7, v9, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_37
    move-object v1, p0

    move-object v2, p1

    .line 207
    invoke-virtual/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawBay(Landroid/graphics/Canvas;Landroid/graphics/RectF;JF)V

    .line 208
    invoke-virtual {p0, p1, v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V

    .line 209
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->postInvalidateDelayed(J)V

    .line 210
    return-void

    .line 201
    :cond_45
    const v0, 0x3d4ccccd    # 0.05f

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->lastFrame:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_15

    .line 204
    :cond_55
    const/4 v0, 0x0

    goto :goto_22

    .line 205
    :cond_57
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    mul-float/2addr v8, v10

    invoke-direct {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_2c

    .line 206
    :cond_60
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v7, v2

    mul-float/2addr v7, v10

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v0, v9, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_37
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 191
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 194
    :cond_1c
    :goto_1c
    return v3

    .line 192
    :cond_1d
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refit()V

    goto :goto_1c
.end method

.method para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F
    .registers 16

    .prologue
    .line 540
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    int-to-float v1, p6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 541
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p7}, Landroid/text/TextPaint;->setColor(I)V

    .line 542
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v3, v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 543
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 544
    int-to-float v1, p6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float v1, p4, v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 546
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 547
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    return v0
.end method

.method refit()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    .line 160
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    .line 185
    :cond_19
    :goto_19
    return-void

    .line 161
    :cond_1a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->level()I

    move-result v5

    .line 162
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v6

    .line 163
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    .line 164
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    .line 165
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->buy()Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v0, "refitscreen"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_33
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->act:Landroid/app/Activity;

    instance-of v0, v0, Lfr/testudo/spacecorsair/activity/StationActivity;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->act:Landroid/app/Activity;

    check-cast v0, Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->updateTexts()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_40} :catch_b2

    .line 170
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->level()I

    move-result v0

    .line 171
    if-gt v0, v5, :cond_5c

    .line 172
    if-eqz v1, :cond_55

    move-object v0, v1

    :goto_49
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xdac

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statusUntil:J

    goto :goto_19

    .line 172
    :cond_55
    const-string v0, "Refit failed."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 176
    :cond_5c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->reload()V

    .line 177
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animLevel:I

    .line 178
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStage:I

    .line 179
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStage:I

    if-le v0, v6, :cond_a5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    if-eqz v2, :cond_a5

    const/4 v0, 0x1

    :goto_7a
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    .line 180
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_a7

    move-object v0, v2

    :goto_81
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    .line 181
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_a9

    const-wide/16 v0, 0x11f8

    :goto_89
    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animMs:J

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    .line 183
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_ac

    const-string v0, "warp_in"

    :goto_97
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v1, :cond_af

    move v1, v4

    :goto_9c
    const-wide/16 v6, 0x12c

    invoke-static {v0, v4, v1, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 184
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    goto/16 :goto_19

    .line 179
    :cond_a5
    const/4 v0, 0x0

    goto :goto_7a

    :cond_a7
    move-object v0, v3

    .line 180
    goto :goto_81

    .line 181
    :cond_a9
    const-wide/16 v0, 0x960

    goto :goto_89

    .line 183
    :cond_ac
    const-string v0, "repair"

    goto :goto_97

    :cond_af
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9c

    .line 169
    :catch_b2
    move-exception v0

    goto :goto_40
.end method

.method reload()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->summary()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    .line 94
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 95
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 96
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    if-nez v1, :cond_29

    :try_start_21
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_8a

    .line 98
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->level()I

    move-result v2

    .line 99
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-nez v1, :cond_90

    move-object v1, v0

    .line 100
    :goto_32
    if-eqz v1, :cond_3c

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 101
    :cond_3c
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    .line 103
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4e

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stockBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    .line 104
    :cond_4e
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->sampleWeld(Landroid/graphics/Bitmap;)V

    .line 106
    :cond_53
    const/4 v3, 0x0

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    .line 107
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v0, :cond_89

    .line 110
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_64
    const/4 v2, 0x5

    if-gt v0, v2, :cond_7d

    .line 111
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stageArt(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_9b

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    .line 114
    :cond_7d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    .line 116
    :cond_89
    return-void

    .line 97
    :catch_8a
    move-exception v1

    const-string v1, ""

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    goto :goto_29

    .line 99
    :cond_90
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v3

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModV35;->stageArt(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 110
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_64
.end method

.method sampleWeld(Landroid/graphics/Bitmap;)V
    .registers 14

    .prologue
    const/4 v11, 0x3

    const/4 v3, -0x1

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 135
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    move v0, v1

    .line 136
    :goto_9
    if-ge v0, v11, :cond_20

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    aget-object v2, v2, v0

    const v4, 0x3e99999a    # 0.3f

    aput v4, v2, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    aget-object v2, v2, v0

    const v4, 0x3f333333    # 0.7f

    aput v4, v2, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 137
    :cond_20
    if-nez p1, :cond_23

    .line 152
    :cond_22
    return-void

    :cond_23
    move v5, v1

    .line 138
    :goto_24
    if-ge v5, v11, :cond_6a

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v5

    mul-float/2addr v2, v10

    add-float/2addr v2, v10

    mul-float/2addr v0, v2

    float-to-int v6, v0

    move v0, v1

    move v2, v3

    move v4, v3

    .line 141
    :goto_33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v0, v7, :cond_4a

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    ushr-int/lit8 v7, v7, 0x18

    const/16 v8, 0x80

    if-le v7, v8, :cond_47

    if-gez v4, :cond_46

    move v4, v0

    :cond_46
    move v2, v0

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 142
    :cond_4a
    if-ltz v4, :cond_66

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    aget-object v0, v0, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    aput v4, v0, v1

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    aget-object v0, v0, v5

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    aput v2, v0, v9

    .line 138
    :cond_66
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_24

    :cond_6a
    move v0, v1

    .line 144
    :goto_6b
    const/16 v2, 0x258

    if-ge v0, v2, :cond_22

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    array-length v3, v3

    if-ge v2, v3, :cond_22

    .line 145
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x18

    const/16 v5, 0xa0

    if-le v4, v5, :cond_b8

    .line 147
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    aget-object v4, v4, v5

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    aput v2, v4, v1

    .line 148
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    aget-object v2, v2, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v9

    .line 149
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    .line 144
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b
.end method

.method stockBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 130
    :goto_e
    return-object v0

    .line 129
    :catch_f
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto :goto_e
.end method

.method text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V
    .registers 10

    .prologue
    .line 534
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    int-to-float v1, p5

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 535
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p6}, Landroid/text/TextPaint;->setColor(I)V

    .line 536
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 537
    return-void
.end method
