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

.field crest:Landroid/graphics/Bitmap;

.field cur:Landroid/graphics/Bitmap;

.field curArt:Ljava/lang/String;

.field final dlg:Landroid/app/Dialog;

.field final dp:F

.field final edge:[[F

.field emblem:Landroid/graphics/Bitmap;

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

    .line 84
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

    .line 75
    const/16 v0, 0x30

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    .line 77
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->edge:[[F

    .line 79
    const/16 v0, 0xa0

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    .line 85
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->act:Landroid/app/Activity;

    .line 86
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dlg:Landroid/app/Dialog;

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 89
    const v0, -0xfaf4ea

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->setBackgroundColor(I)V

    .line 90
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->reload()V

    .line 91
    return-void
.end method

.method static compact(J)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v10, 0x1

    const-wide v8, 0x408f400000000000L    # 1000.0

    const/4 v1, 0x0

    .line 743
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v4, v1

    const-string v0, "K"

    aput-object v0, v4, v10

    const/4 v0, 0x2

    const-string v2, "M"

    aput-object v2, v4, v0

    const/4 v0, 0x3

    const-string v2, "B"

    aput-object v2, v4, v0

    const/4 v0, 0x4

    const-string v2, "T"

    aput-object v2, v4, v0

    .line 744
    long-to-double v2, p0

    move v0, v1

    .line 746
    :goto_23
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_34

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_34

    div-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 747
    :cond_34
    if-nez v0, :cond_3b

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_3a
    return-object v0

    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_71

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.1f"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".0"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v4, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_71
    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_62
.end method

.method static grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .registers 8

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 426
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

    .line 427
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
.method accent()I
    .registers 8

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 462
    :try_start_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    .line 463
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_2d

    aget-object v4, v2, v0

    iget-object v5, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iget v1, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_2c

    move-result v0

    .line 465
    :goto_28
    return v0

    .line 463
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 464
    :catch_2c
    move-exception v0

    .line 465
    :cond_2d
    const v0, -0x952f01

    goto :goto_28
.end method

.method animating()Z
    .registers 5

    .prologue
    .line 162
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
    .line 129
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
    .line 801
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v1

    .line 802
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 803
    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p2, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, v0

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 804
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 806
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 807
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 808
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

    .line 809
    return-void
.end method

.method card(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)F
    .registers 16

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 470
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v6, v0, v1

    const/high16 v0, 0x41900000    # 18.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v7, v0, v1

    .line 471
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 472
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v6

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 473
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0x1ff4e5d2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 477
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 478
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xefdcc6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 480
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x146ad0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 482
    iget v0, p2, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x428c0000    # 70.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    :goto_87
    iget v0, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v7

    add-float v3, v1, v7

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v9

    add-float/2addr v1, v0

    goto :goto_87

    .line 483
    :cond_a0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 484
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x3f99999a    # 1.2f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 486
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xdbc7b1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 488
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v10

    add-float/2addr v2, v0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v9

    add-float/2addr v3, v0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v7

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v10

    sub-float v4, v0, v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 491
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v1, 0x41180000    # 9.5f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 492
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 493
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, v6

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v6

    const/high16 v2, 0x41300000    # 11.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v7

    const/high16 v3, 0x40b00000    # 5.5f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 494
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v7

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v9

    add-float/2addr v0, v1

    return v0
.end method

.method drawArms(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 17

    .prologue
    .line 324
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    const/4 v0, -0x1

    move v8, v0

    :goto_9
    const/4 v0, 0x1

    if-gt v8, v0, :cond_117

    .line 326
    const/4 v0, 0x0

    move v7, v0

    :goto_e
    const/4 v0, 0x3

    if-ge v7, v0, :cond_112

    .line 327
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

    .line 328
    if-gez v8, :cond_f0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    move v6, v0

    .line 329
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

    .line 330
    :goto_43
    sub-float/2addr v0, v6

    mul-float v0, v0, p4

    add-float v10, v6, v0

    .line 331
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xe4d5c4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v11, v0, v1

    .line 333
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

    .line 334
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xc5af98

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
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

    .line 337
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xd5c3ae

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
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

    .line 339
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_eb

    .line 340
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, -0x1960

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
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

    .line 326
    :cond_eb
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_e

    .line 328
    :cond_f0
    iget v0, p2, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    move v6, v0

    goto/16 :goto_2c

    .line 329
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

    .line 325
    :cond_112
    add-int/lit8 v0, v8, 0x2

    move v8, v0

    goto/16 :goto_9

    .line 345
    :cond_117
    return-void
.end method

.method drawBay(Landroid/graphics/Canvas;Landroid/graphics/RectF;JF)V
    .registers 23

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, 0x1a6ad0ff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    const/high16 v4, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v10, v4, v5

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v4, p3, v4

    long-to-float v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    div-float/2addr v4, v5

    rem-float v11, v4, v10

    .line 225
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    :goto_3c
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v5, v4

    if-gez v4, :cond_58

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v5, v10

    goto :goto_3c

    .line 226
    :cond_58
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v10

    add-float v6, v4, v11

    :goto_5f
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v6, v4

    if-gez v4, :cond_7b

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v6, v10

    goto :goto_5f

    .line 227
    :cond_7b
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RadialGradient;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    const v9, 0x3f0ccccd    # 0.55f

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const v8, 0x3a2a6a9a

    const v9, 0x50b16

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, -0x7f952f01

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v10, v4, v5

    const/high16 v4, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v11, v4, v5

    .line 236
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v10

    add-float v7, v4, v11

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v7, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v10

    add-float v8, v4, v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v10

    sub-float v7, v4, v11

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v10

    add-float v8, v4, v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v10

    add-float v7, v4, v11

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v7, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v10

    sub-float v8, v4, v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 239
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v10

    sub-float v7, v4, v11

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, v4, v10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v10

    sub-float v8, v4, v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v6, p3, v6

    long-to-double v6, v6

    const-wide v8, 0x409c200000000000L    # 1800.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v11, v4, v5

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->crest:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_28e

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v4, v5

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x41e00000    # 28.0f

    const/high16 v7, 0x41600000    # 14.0f

    mul-float/2addr v7, v11

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->crest:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v12, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    const/high16 v12, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v12, v13

    add-float/2addr v10, v12

    add-float/2addr v10, v4

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    const/high16 v13, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v14, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    add-float/2addr v4, v12

    invoke-direct {v7, v8, v9, v10, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 249
    :cond_28e
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3ae

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3f47ae14    # 0.78f

    mul-float v12, v4, v5

    .line 251
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v12, v6

    sub-float/2addr v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v12, v7

    add-float/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v12, v8

    add-float/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v4, p3, v4

    long-to-float v4, v4

    const/high16 v5, 0x43c80000    # 400.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, 0x306ad0ff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const v6, 0x3f0f5c29    # 0.56f

    mul-float/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 258
    const/4 v4, 0x0

    move v10, v4

    :goto_323
    const/16 v4, 0x18

    if-ge v10, v4, :cond_37d

    .line 259
    int-to-double v4, v10

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v8, v4, v6

    .line 260
    const v4, 0x3f0f5c29    # 0.56f

    mul-float v6, v12, v4

    rem-int/lit8 v4, v10, 0x3

    if-nez v4, :cond_379

    const v4, 0x3f19999a    # 0.6f

    :goto_33e
    mul-float/2addr v4, v12

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v6, v14

    add-float/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v7, v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v4, v8

    add-float v8, v14, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_323

    .line 260
    :cond_379
    const v4, 0x3f147ae1    # 0.58f

    goto :goto_33e

    .line 263
    :cond_37d
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x42080000    # 34.0f

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v6, v11

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 269
    :cond_3ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3b5

    .line 321
    :cond_3b4
    :goto_3b4
    return-void

    .line 271
    :cond_3b5
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v4

    if-eqz v4, :cond_4fc

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    sub-long v4, p3, v4

    long-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animMs:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    move v10, v4

    .line 272
    :goto_3c9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const v5, 0x3f47ae14    # 0.78f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3f5c28f6    # 0.86f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 273
    move-object/from16 v0, p0

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v6, p3, v6

    long-to-double v6, v6

    const-wide v8, 0x408c200000000000L    # 900.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    .line 274
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    .line 275
    new-instance v11, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    sub-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    sub-float/2addr v8, v9

    add-float/2addr v8, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    add-float/2addr v6, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    add-float/2addr v4, v9

    add-float/2addr v4, v5

    invoke-direct {v11, v7, v8, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 278
    const/4 v4, 0x0

    cmpg-float v4, v10, v4

    if-gez v4, :cond_501

    const/4 v4, 0x0

    .line 279
    :goto_44e
    mul-float v5, v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    mul-float/2addr v4, v5

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v11, v4}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawArms(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 283
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v6, p3, v6

    long-to-double v6, v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 284
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const v5, 0x3f847ae1    # 1.035f

    invoke-static {v11, v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v7

    const v8, -0x952f01

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v9, 0x41f00000    # 30.0f

    mul-float/2addr v4, v9

    add-float/2addr v4, v5

    float-to-int v9, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 286
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_528

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_528

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_528

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2, v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawStageMorph(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 297
    :goto_4af
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_563

    const v4, 0x3f59999a    # 0.85f

    cmpg-float v4, v10, v4

    if-gez v4, :cond_563

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    if-lez v4, :cond_563

    .line 298
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_560

    const/4 v4, 0x6

    .line 299
    :goto_4c8
    const/4 v5, 0x0

    :goto_4c9
    if-ge v5, v4, :cond_563

    .line 300
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v6, v6, v7

    .line 301
    iget v7, v11, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v11, Landroid/graphics/RectF;->top:F

    const/4 v9, 0x1

    aget v6, v6, v9

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6, v8}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emit(FFI)V

    .line 299
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c9

    .line 271
    :cond_4fc
    const/high16 v4, -0x40800000    # -1.0f

    move v10, v4

    goto/16 :goto_3c9

    .line 278
    :cond_501
    const v4, 0x3e19999a    # 0.15f

    cmpg-float v4, v10, v4

    if-gez v4, :cond_50f

    const v4, 0x3e19999a    # 0.15f

    div-float v4, v10, v4

    goto/16 :goto_44e

    :cond_50f
    const v4, 0x3f6147ae    # 0.88f

    cmpl-float v4, v10, v4

    if-lez v4, :cond_524

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v10

    const v6, 0x3df5c28f    # 0.12f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto/16 :goto_44e

    :cond_524
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_44e

    .line 289
    :cond_528
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 292
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_555

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawLevelPulse(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto/16 :goto_4af

    .line 293
    :cond_555
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawIdleScan(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V

    goto/16 :goto_4af

    .line 298
    :cond_560
    const/4 v4, 0x4

    goto/16 :goto_4c8

    .line 304
    :cond_563
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawSparks(Landroid/graphics/Canvas;F)V

    .line 307
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_3b4

    .line 308
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_63f

    const v4, 0x3f3851ec    # 0.72f

    sub-float v4, v10, v4

    const v5, 0x3e8f5c29    # 0.28f

    div-float/2addr v4, v5

    .line 309
    :goto_580
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3b4

    .line 310
    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_64a

    const v5, 0x3e4ccccd    # 0.2f

    div-float/2addr v4, v5

    .line 311
    :goto_590
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v5, :cond_65f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NEW FORM: STAGE "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStage:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    :goto_5ba
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v6, :cond_67c

    const/high16 v6, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v8

    :goto_5cb
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 313
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v6, :cond_685

    const v6, -0x1747b6

    :goto_5db
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_68a

    const/16 v4, -0x65d6

    :goto_609
    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float v4, v6, v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x42100000    # 36.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_3b4

    .line 308
    :cond_63f
    const v4, 0x3ee66666    # 0.45f

    sub-float v4, v10, v4

    const v5, 0x3f0ccccd    # 0.55f

    div-float/2addr v4, v5

    goto/16 :goto_580

    .line 310
    :cond_64a
    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_65b

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const v5, 0x3e4ccccd    # 0.2f

    div-float/2addr v4, v5

    goto/16 :goto_590

    :cond_65b
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_590

    .line 311
    :cond_65f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REFIT LEVEL "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5ba

    .line 312
    :cond_67c
    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v8

    goto/16 :goto_5cb

    .line 313
    :cond_685
    const v6, -0x952f01

    goto/16 :goto_5db

    .line 315
    :cond_68a
    const v4, -0xd56501

    goto/16 :goto_609
.end method

.method drawIdleScan(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 16

    .prologue
    const/high16 v9, 0x41900000    # 18.0f

    const/4 v1, 0x0

    .line 348
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0xfa0

    rem-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x457a0000    # 4000.0f

    div-float/2addr v0, v2

    .line 349
    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v0, v3

    add-float v4, v2, v0

    .line 350
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

    .line 351
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v9

    sub-float v2, v4, v0

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 353
    return-void
.end method

.method drawInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 42

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, -0x33f5e9da    # -3.619855E7f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, 0xe6ad0ff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    const/high16 v4, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v6, v4, v5

    .line 506
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    :goto_45
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_84

    .line 507
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v4, v5

    const v7, 0x3f5db22d    # 0.866f

    mul-float/2addr v7, v6

    div-float/2addr v5, v7

    float-to-int v5, v5

    .line 508
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    rem-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    add-float/2addr v5, v7

    :goto_66
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v6

    cmpg-float v7, v5, v7

    if-gez v7, :cond_7e

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v5, v6

    goto :goto_66

    .line 506
    :cond_7e
    const v5, 0x3f5db22d    # 0.866f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    goto :goto_45

    .line 510
    :cond_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, -0xdbc7b1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 512
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    if-nez v4, :cond_bf

    .line 713
    :goto_be
    return-void

    .line 514
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->accent()I

    move-result v18

    .line 515
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v12, v4, v5

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v20, v4, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v12

    sub-float v21, v4, v5

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v4, v12

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2ff

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 520
    :goto_106
    new-instance v14, Landroid/graphics/RectF;

    add-float v4, v20, v21

    const/high16 v6, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    move/from16 v0, v20

    invoke-direct {v14, v0, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v14, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x0

    iget v7, v14, Landroid/graphics/RectF;->right:F

    const/4 v8, 0x0

    const v9, 0xffffff

    and-int v9, v9, v18

    const/high16 v10, 0x50000000

    or-int/2addr v9, v10

    const v10, 0x100b1a2e

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    iget v5, v14, Landroid/graphics/RectF;->left:F

    iget v6, v14, Landroid/graphics/RectF;->top:F

    iget v4, v14, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    iget v8, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 526
    iget v4, v14, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float v7, v4, v5

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1b1

    .line 528
    const/high16 v4, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    sub-float/2addr v9, v10

    add-float v10, v7, v4

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v4, v15

    add-float/2addr v11, v15

    invoke-direct {v8, v7, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 530
    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v7, v4

    .line 532
    :cond_1b1
    const-string v4, "RETROFIT BAY"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v4, v14, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, v18

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    if-nez v4, :cond_304

    const-string v6, ""

    :goto_1d5
    iget v4, v14, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x42140000    # 37.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    const/16 v9, 0x11

    const/4 v10, -0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 534
    iget v4, v14, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float v11, v4, v5

    .line 537
    const-string v4, "PROGRESS TO ELITE"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v4, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float v8, v11, v4

    const/16 v9, 0x9

    const v10, -0x807160

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, v20

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v6, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 540
    add-float v5, v20, v21

    const/high16 v6, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float v14, v11, v4

    .line 542
    const/high16 v4, 0x42500000    # 52.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v15, v4, v5

    sub-float v4, v21, v15

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v16, v5, v6

    .line 543
    const/high16 v5, 0x41200000    # 10.0f

    div-float v22, v4, v5

    .line 544
    const/4 v4, 0x0

    move v6, v4

    :goto_286
    const/16 v4, 0xa

    if-ge v6, v4, :cond_32a

    .line 545
    int-to-float v4, v6

    mul-float v4, v4, v22

    add-float v4, v4, v20

    .line 546
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 547
    invoke-virtual {v7, v4, v14}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v5, v4, v22

    const/high16 v8, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    invoke-virtual {v7, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v4, v22

    const/high16 v8, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v16, v8

    add-float/2addr v8, v14

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v4, v22

    const/high16 v8, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    add-float v8, v14, v16

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 548
    add-float v5, v14, v16

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v16, v5

    add-float/2addr v5, v14

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 549
    if-ge v6, v13, :cond_30e

    const/4 v4, 0x1

    move v5, v4

    :goto_2e1
    if-ne v6, v13, :cond_311

    if-nez v17, :cond_311

    const/4 v4, 0x1

    .line 550
    :goto_2e6
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v5, :cond_313

    const v4, -0x1747b6

    :goto_2ef
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 544
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_286

    .line 517
    :cond_2ff
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_106

    .line 533
    :cond_304
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1d5

    .line 549
    :cond_30e
    const/4 v4, 0x0

    move v5, v4

    goto :goto_2e1

    :cond_311
    const/4 v4, 0x0

    goto :goto_2e6

    .line 550
    :cond_313
    if-eqz v4, :cond_326

    const-wide/16 v4, 0x1c2

    div-long v4, p3, v4

    const-wide/16 v10, 0x1

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-nez v4, :cond_326

    const v4, -0x5f952f01

    goto :goto_2ef

    :cond_326
    const v4, -0xe4d5c4

    goto :goto_2ef

    .line 553
    :cond_32a
    if-lez v13, :cond_399

    .line 554
    int-to-float v4, v13

    mul-float v4, v4, v22

    add-float v23, v20, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v4, p3, v4

    const-wide/16 v6, 0x898

    rem-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x45098000    # 2200.0f

    div-float/2addr v4, v5

    .line 555
    sub-float v5, v23, v20

    mul-float/2addr v4, v5

    add-float v7, v20, v4

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 557
    add-float v4, v14, v16

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    new-instance v4, Landroid/graphics/LinearGradient;

    const/high16 v5, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    sub-float v5, v7, v5

    const/4 v6, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_e90

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 559
    add-float v8, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v20

    move v6, v14

    move/from16 v7, v23

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 561
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 563
    :cond_399
    const/4 v4, 0x1

    move v10, v4

    :goto_39b
    const/4 v4, 0x5

    if-gt v10, v4, :cond_482

    .line 564
    mul-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v22

    add-float v4, v4, v20

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v22, v5

    sub-float v11, v4, v5

    add-float v4, v14, v16

    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float v23, v4, v5

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 566
    const/high16 v4, 0x42340000    # 45.0f

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v4, v11, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 567
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v19

    if-gt v10, v0, :cond_46c

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_3cc
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 569
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v19

    if-gt v10, v0, :cond_470

    const v4, -0x1747b6

    :goto_3e8
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v5, v11, v4

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    sub-float v6, v23, v4

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v7

    add-float v7, v11, v4

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v8

    add-float v8, v23, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move/from16 v0, v19

    if-gt v10, v0, :cond_47e

    const v4, -0xfaf4ea

    :goto_43d
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 575
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    aget-object v4, v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v11, v5

    const/high16 v6, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float v6, v6, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 563
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_39b

    .line 567
    :cond_46c
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_3cc

    .line 569
    :cond_470
    add-int/lit8 v4, v19, 0x1

    if-ne v10, v4, :cond_479

    const v4, -0x952f01

    goto/16 :goto_3e8

    :cond_479
    const v4, -0xdbc7b1

    goto/16 :goto_3e8

    .line 574
    :cond_47e
    const v4, -0x4f3b26

    goto :goto_43d

    .line 577
    :cond_482
    new-instance v5, Landroid/graphics/RectF;

    add-float v4, v20, v21

    sub-float/2addr v4, v15

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float v6, v14, v6

    add-float v7, v20, v21

    add-float v8, v14, v16

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 578
    if-eqz v17, :cond_799

    const v4, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v8, p3, v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 579
    :goto_4b8
    if-eqz v17, :cond_4f5

    .line 580
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v7, -0x1747b6

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x42b40000    # 90.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 582
    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 585
    :cond_4f5
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v17, :cond_79c

    const v4, -0x1747b6

    :goto_4fe
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 586
    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v17, :cond_7a1

    const/4 v4, -0x1

    :goto_528
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v6, 0x3f99999a    # 1.2f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 590
    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 593
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    if-eqz v17, :cond_7a6

    const v4, -0xfaf4ea

    :goto_571
    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 594
    const-string v4, "ELITE"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v7, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v7, 0x40600000    # 3.5f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 596
    const/high16 v4, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float v4, v4, v16

    add-float v5, v14, v4

    .line 599
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v22, v4, v6

    .line 600
    const/high16 v4, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v23, v4, v6

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v23

    sub-float v24, v4, v12

    .line 601
    const/high16 v4, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    sub-float v4, v24, v4

    sub-float/2addr v4, v5

    sub-float v4, v4, v22

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV38;->turretPlan(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)[I

    move-result-object v14

    .line 603
    if-eqz v14, :cond_7ab

    const/4 v4, 0x5

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v4, v14, v4

    move v12, v4

    .line 604
    :goto_5e6
    if-eqz v17, :cond_7b2

    move/from16 v11, v19

    .line 605
    :goto_5ea
    if-eqz v14, :cond_7bb

    if-nez v17, :cond_7bb

    const/4 v4, 0x5

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v4, v14, v4

    if-le v4, v12, :cond_7bb

    const/4 v4, 0x1

    move v10, v4

    .line 606
    :goto_5f9
    sub-float v4, v21, v22

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    .line 607
    if-eqz v10, :cond_7bf

    new-instance v4, Landroid/graphics/RectF;

    add-float v8, v20, v7

    add-float v9, v5, v6

    move/from16 v0, v20

    invoke-direct {v4, v0, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 608
    :goto_60c
    new-instance v15, Landroid/graphics/RectF;

    add-float v7, v7, v20

    add-float v7, v7, v22

    add-float v8, v20, v21

    add-float v9, v5, v6

    invoke-direct {v15, v7, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 609
    sub-float v7, v21, v22

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 610
    new-instance v25, Landroid/graphics/RectF;

    add-float v8, v5, v6

    add-float v8, v8, v22

    add-float v9, v20, v7

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v6

    add-float v16, v16, v5

    add-float v16, v16, v22

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v8, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v26, Landroid/graphics/RectF;

    add-float v7, v7, v20

    add-float v7, v7, v22

    add-float v8, v5, v6

    add-float v8, v8, v22

    add-float v9, v20, v21

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    add-float v5, v5, v22

    move-object/from16 v0, v26

    invoke-direct {v0, v7, v8, v9, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 612
    const-string v5, "UPGRADE STATS"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v5, v2}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->card(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)F

    move-result v16

    .line 613
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 614
    if-eqz v10, :cond_7cc

    const/4 v5, 0x1

    .line 615
    :goto_66f
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v5

    div-float v28, v6, v7

    .line 616
    const/4 v6, 0x0

    :goto_67f
    move-object/from16 v0, v27

    array-length v7, v0

    if-ge v6, v7, :cond_6a7

    .line 617
    rem-int v7, v6, v5

    .line 618
    iget v8, v4, Landroid/graphics/RectF;->left:F

    int-to-float v7, v7

    mul-float v7, v7, v28

    add-float v29, v8, v7

    .line 619
    div-int v7, v6, v5

    mul-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float v30, v16, v7

    .line 620
    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    cmpl-float v7, v30, v7

    if-lez v7, :cond_7cf

    .line 638
    :cond_6a7
    if-eqz v10, :cond_a69

    .line 639
    const-string v4, "NEW TURRET"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, -0x1747b6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v4, v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->card(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)F

    move-result v5

    .line 640
    const/4 v4, 0x5

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v4, v14, v4

    sub-int v6, v4, v12

    add-int v7, v12, v6

    .line 641
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v8

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/4 v9, 0x1

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 642
    int-to-float v4, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v8

    const/high16 v10, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float/2addr v4, v9

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    sub-float/2addr v4, v9

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    sub-float/2addr v9, v4

    .line 643
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    move-wide/from16 v28, v0

    sub-long v28, p3, v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x4072c00000000000L    # 300.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v11, v0

    mul-float/2addr v10, v11

    add-float/2addr v10, v4

    .line 644
    const/4 v4, 0x0

    :goto_72d
    if-ge v4, v7, :cond_9d6

    .line 645
    add-float v11, v9, v8

    int-to-float v14, v4

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v8

    const/high16 v27, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v16, v16, v27

    mul-float v14, v14, v16

    add-float/2addr v11, v14

    add-float v14, v5, v8

    const/high16 v16, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v27, v0

    mul-float v16, v16, v27

    add-float v14, v14, v16

    .line 646
    if-ge v4, v12, :cond_957

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const v27, -0x952f01

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v14, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const v27, -0xfaf4ea

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 650
    const v16, 0x3ecccccd    # 0.4f

    mul-float v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 644
    :goto_796
    add-int/lit8 v4, v4, 0x1

    goto :goto_72d

    .line 578
    :cond_799
    const/4 v4, 0x0

    goto/16 :goto_4b8

    .line 585
    :cond_79c
    const v4, -0xe4d5c4

    goto/16 :goto_4fe

    .line 588
    :cond_7a1
    const v4, -0x1747b6

    goto/16 :goto_528

    .line 593
    :cond_7a6
    const v4, -0x1747b6

    goto/16 :goto_571

    .line 603
    :cond_7ab
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->guns()I

    move-result v4

    move v12, v4

    goto/16 :goto_5e6

    .line 604
    :cond_7b2
    add-int/lit8 v4, v13, 0x1

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v4

    move v11, v4

    goto/16 :goto_5ea

    .line 605
    :cond_7bb
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_5f9

    .line 607
    :cond_7bf
    new-instance v4, Landroid/graphics/RectF;

    add-float v8, v20, v21

    add-float v9, v5, v6

    move/from16 v0, v20

    invoke-direct {v4, v0, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_60c

    .line 614
    :cond_7cc
    const/4 v5, 0x2

    goto/16 :goto_66f

    .line 621
    :cond_7cf
    aget-object v7, v27, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 622
    const-string v7, " +"

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    .line 623
    if-lez v31, :cond_93c

    const/4 v7, 0x0

    move/from16 v0, v31

    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    :goto_7e5
    if-lez v31, :cond_93f

    add-int/lit8 v7, v31, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 624
    :goto_7ed
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    .line 625
    if-eqz v31, :cond_80b

    const/16 v32, 0x0

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_943

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    :goto_805
    move/from16 v0, v32

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 626
    :cond_80b
    new-instance v32, Landroid/graphics/RectF;

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v33, v0

    mul-float v8, v8, v33

    add-float v8, v8, v29

    const/high16 v33, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v33, v33, v29

    const/high16 v34, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v34, v34, v30

    move-object/from16 v0, v32

    move/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v8, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    if-eqz v31, :cond_949

    move/from16 v8, v18

    :goto_846
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    const/high16 v8, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v30, v0

    mul-float v8, v8, v30

    const/high16 v30, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v33, v0

    mul-float v30, v30, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v30

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v30, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v33, v0

    mul-float v30, v30, v33

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v30, v0

    if-eqz v31, :cond_94e

    const v8, -0xfaf4ea

    :goto_88e
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 631
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v30

    const/high16 v33, 0x40000000    # 2.0f

    div-float v30, v30, v33

    sub-float v8, v8, v30

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    const/high16 v33, 0x40600000    # 3.5f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v30, v30, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v8, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v30, v0

    mul-float v8, v8, v30

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 633
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    if-eqz v31, :cond_953

    move/from16 v7, v18

    :goto_8e3
    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    add-float v8, v29, v28

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    sub-float v8, v8, v29

    const/high16 v29, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    sub-float v8, v8, v29

    sget-object v29, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    invoke-static {v9, v7, v8, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 635
    move-object/from16 v0, v32

    iget v8, v0, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v29, v0

    mul-float v9, v9, v29

    add-float/2addr v8, v9

    move-object/from16 v0, v32

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v29, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    sub-float v9, v9, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 616
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_67f

    :cond_93c
    move-object v9, v8

    .line 623
    goto/16 :goto_7e5

    :cond_93f
    const-string v7, ""

    goto/16 :goto_7ed

    .line 625
    :cond_943
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_805

    .line 627
    :cond_949
    const v8, -0xe0b5d6

    goto/16 :goto_846

    .line 630
    :cond_94e
    const v8, -0x730074

    goto/16 :goto_88e

    .line 633
    :cond_953
    const v7, -0x4f3b26

    goto :goto_8e3

    .line 652
    :cond_957
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const v27, -0x1747b6

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const/high16 v27, 0x42700000    # 60.0f

    const/high16 v28, 0x42a00000    # 80.0f

    mul-float v28, v28, v10

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 654
    const/high16 v16, 0x3fc00000    # 1.5f

    mul-float v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const/16 v27, 0xff

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v14, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const v27, -0xfaf4ea

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 658
    const v16, 0x3ecccccd    # 0.4f

    mul-float v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_796

    .line 661
    :cond_9d6
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v8

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    add-float v8, v5, v4

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "turret at the next refit"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v6, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 664
    iget v5, v15, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpg-float v5, v8, v5

    if-gez v5, :cond_a69

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 665
    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v7, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v9, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float v7, v5, v4

    const/16 v9, 0x9

    const v10, -0x1747b6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 664
    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 668
    :cond_a69
    const-string v4, "MATERIALS REQUIRED"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->card(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)F

    move-result v8

    .line 669
    const-wide/16 v10, 0x0

    .line 670
    :try_start_a7d
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J
    :try_end_a86
    .catch Ljava/lang/Throwable; {:try_start_a7d .. :try_end_a86} :catch_e8c

    move-result-wide v10

    .line 671
    :goto_a87
    if-eqz v17, :cond_d4f

    const-wide/16 v4, 0x0

    .line 672
    :goto_a8b
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    if-nez v17, :cond_d5c

    add-int/lit8 v6, v13, 0x1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_d5c

    const/4 v6, 0x1

    move/from16 v16, v6

    :goto_aac
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 673
    const-string v9, "cr"

    if-eqz v17, :cond_d61

    const-wide/16 v12, -0x1

    :goto_abd
    cmp-long v4, v10, v4

    if-ltz v4, :cond_d64

    const/4 v14, 0x1

    :goto_ac2
    const v15, -0x1747b6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v25

    invoke-virtual/range {v5 .. v15}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->matRow(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;JJZI)F

    move-result v8

    .line 674
    const-string v9, "\u2b21"

    move/from16 v0, v28

    int-to-long v10, v0

    if-lez v27, :cond_d67

    move/from16 v0, v27

    int-to-long v12, v0

    :goto_ad9
    move/from16 v0, v28

    move/from16 v1, v27

    if-lt v0, v1, :cond_d6b

    const/4 v14, 0x1

    :goto_ae0
    const v15, -0x952f01

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v25

    invoke-virtual/range {v5 .. v15}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->matRow(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;JJZI)F

    move-result v8

    .line 675
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpg-float v4, v8, v4

    if-gez v4, :cond_b1f

    const-string v9, "\u25c6"

    move/from16 v0, v29

    int-to-long v10, v0

    if-lez v16, :cond_d6e

    const-wide/16 v12, 0x1

    :goto_b06
    move/from16 v0, v29

    move/from16 v1, v16

    if-lt v0, v1, :cond_d72

    const/4 v14, 0x1

    :goto_b0d
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v16, v4, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v25

    move/from16 v15, v18

    invoke-virtual/range {v5 .. v16}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->matRow(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;JJZILjava/lang/String;)F

    .line 678
    :cond_b1f
    const-string v4, "NEXT FORM"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->card(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)F

    move-result v4

    .line 679
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 680
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_d75

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_d75

    .line 681
    const/high16 v6, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    .line 682
    sub-float/2addr v5, v6

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 683
    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    cmpl-float v5, v13, v5

    if-lez v5, :cond_cc0

    .line 684
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v5, v13

    const/high16 v6, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float v14, v5, v6

    .line 685
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/RectF;

    add-float v5, v14, v13

    add-float v6, v4, v13

    invoke-direct {v8, v14, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v9, -0x807160

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V

    .line 686
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/RectF;

    add-float v5, v14, v13

    const/high16 v6, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    add-float/2addr v6, v14

    const/high16 v9, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v6, v9

    add-float v9, v4, v13

    invoke-direct {v8, v5, v4, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v9, -0x952f01

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V

    .line 687
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v13, v5

    add-float/2addr v5, v4

    add-float v6, v14, v13

    const/high16 v7, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 688
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 689
    const/high16 v8, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float v8, v6, v8

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v8, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v8, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    const/high16 v8, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 690
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v6, -0x952f01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v6, 0x41080000    # 8.5f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STAGE "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  \u00b7  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Evolves at refit "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 694
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v6, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 695
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v7, v5, v7

    add-float/2addr v4, v13

    const/high16 v5, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    const/16 v9, 0x8

    const v10, -0x952f01

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 706
    :cond_cc0
    :goto_cc0
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    if-eqz v4, :cond_ceb

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statusUntil:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_ceb

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v8, v24, v4

    const/16 v10, 0xa

    const v11, -0x9495

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, v20

    move/from16 v9, v21

    invoke-virtual/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    .line 707
    :cond_ceb
    sub-float v4, v21, v22

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 708
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    add-float v6, v20, v4

    add-float v7, v24, v23

    move/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    add-float v4, v4, v20

    add-float v4, v4, v22

    add-float v6, v20, v21

    add-float v7, v24, v23

    move/from16 v0, v24

    invoke-virtual {v5, v4, v0, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 710
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    const-string v4, "Close"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, -0xdbc7b1

    const v9, -0x4f3b26

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->button(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;II)V

    .line 711
    if-nez v17, :cond_e3d

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v4

    if-nez v4, :cond_e3d

    const/4 v4, 0x1

    .line 712
    :goto_d30
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    if-eqz v17, :cond_e40

    const-string v5, "ELITE"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_d3c
    if-eqz v4, :cond_e82

    const v8, -0x1747b6

    :goto_d41
    if-eqz v4, :cond_e87

    const v9, -0xfaf4ea

    :goto_d46
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->button(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;II)V

    goto/16 :goto_be

    .line 671
    :cond_d4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_a8b

    .line 672
    :cond_d5c
    const/4 v6, 0x0

    move/from16 v16, v6

    goto/16 :goto_aac

    :cond_d61
    move-wide v12, v4

    .line 673
    goto/16 :goto_abd

    :cond_d64
    const/4 v14, 0x0

    goto/16 :goto_ac2

    .line 674
    :cond_d67
    const-wide/16 v12, -0x1

    goto/16 :goto_ad9

    :cond_d6b
    const/4 v14, 0x0

    goto/16 :goto_ae0

    .line 675
    :cond_d6e
    const-wide/16 v12, -0x1

    goto/16 :goto_b06

    :cond_d72
    const/4 v14, 0x0

    goto/16 :goto_b0d

    .line 698
    :cond_d75
    const/4 v6, 0x5

    move/from16 v0, v19

    if-ge v0, v6, :cond_d91

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v6, :cond_e2b

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModV35;->stageArt(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    if-eq v6, v7, :cond_e2b

    :cond_d91
    const/4 v12, 0x1

    .line 699
    :goto_d92
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 700
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_de1

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    cmpl-float v5, v13, v5

    if-lez v5, :cond_de1

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v6, v9

    add-float/2addr v6, v13

    add-float v9, v4, v13

    invoke-direct {v8, v5, v4, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v12, :cond_e2e

    const v9, -0x1747b6

    :goto_dd8
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V

    .line 701
    :cond_de1
    if-eqz v12, :cond_e32

    const-string v5, "Final form reached"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_de9
    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    add-float v7, v5, v13

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    add-float/2addr v5, v13

    sub-float/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v9

    sub-float v9, v4, v5

    const/16 v10, 0x9

    .line 702
    if-eqz v12, :cond_e39

    const v11, -0x1747b6

    :goto_e22
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 701
    invoke-virtual/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    goto/16 :goto_cc0

    .line 698
    :cond_e2b
    const/4 v12, 0x0

    goto/16 :goto_d92

    .line 700
    :cond_e2e
    const v9, -0x807160

    goto :goto_dd8

    .line 701
    :cond_e32
    const-string v5, "This hull keeps its shape (no new form art yet)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_de9

    .line 702
    :cond_e39
    const v11, -0x807160

    goto :goto_e22

    .line 711
    :cond_e3d
    const/4 v4, 0x0

    goto/16 :goto_d30

    .line 712
    :cond_e40
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v5

    if-eqz v5, :cond_e4e

    const-string v5, "Refitting..."

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_d3c

    :cond_e4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REFIT"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->compact(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " cr"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_d3c

    :cond_e82
    const v8, -0xc5b9aa

    goto/16 :goto_d41

    :cond_e87
    const v9, -0x807160

    goto/16 :goto_d46

    .line 670
    :catch_e8c
    move-exception v4

    goto/16 :goto_a87

    .line 558
    nop

    :array_e90
    .array-data 4
        0xffffff
        -0x6f000001
        0xffffff
    .end array-data
.end method

.method drawLevelPulse(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .registers 13

    .prologue
    const/high16 v8, 0x41d00000    # 26.0f

    const v7, 0x3f3851ec    # 0.72f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 357
    const/high16 v0, 0x3f400000    # 0.75f

    div-float v0, p3, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 358
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v8

    sub-float v3, v1, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float/2addr v1, v5

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 361
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

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 363
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

    .line 364
    :cond_67
    return-void
.end method

.method drawSparks(Landroid/graphics/Canvas;F)V
    .registers 12

    .prologue
    .line 443
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x3fcccccd    # 1.6f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 444
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_10
    if-ge v6, v8, :cond_7f

    aget-object v4, v7, v6

    .line 445
    const/4 v0, 0x4

    aget v0, v4, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    .line 444
    :goto_1c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10

    .line 446
    :cond_20
    const/4 v0, 0x4

    aget v1, v4, v0

    sub-float/2addr v1, p2

    aput v1, v4, v0

    .line 447
    const/4 v0, 0x3

    aget v1, v4, v0

    const/high16 v2, 0x43820000    # 260.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v4, v0

    .line 448
    const/4 v0, 0x0

    aget v1, v4, v0

    const/4 v0, 0x1

    aget v2, v4, v0

    .line 449
    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v5, 0x2

    aget v5, v4, v5

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v0

    .line 450
    const/4 v0, 0x1

    aget v3, v4, v0

    const/4 v5, 0x3

    aget v5, v4, v5

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v0

    .line 451
    const/4 v0, 0x0

    const/4 v3, 0x4

    aget v3, v4, v3

    const/4 v5, 0x5

    aget v5, v4, v5

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 452
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7c

    const/16 v0, -0xb40

    :goto_63
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 454
    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v0, 0x1

    aget v4, v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 452
    :cond_7c
    const/16 v0, -0x4fc0

    goto :goto_63

    .line 456
    :cond_7f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 457
    return-void
.end method

.method drawStageMorph(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 15

    .prologue
    .line 367
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 368
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 369
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

    .line 370
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

    .line 371
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

    .line 372
    const v0, 0x3e3851ec    # 0.18f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8a

    .line 373
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 374
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

    .line 414
    :cond_89
    :goto_89
    return-void

    .line 377
    :cond_8a
    const v0, 0x3f3851ec    # 0.72f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_197

    .line 379
    const v0, 0x3e3851ec    # 0.18f

    sub-float v0, p4, v0

    const v1, 0x3f0a3d71    # 0.54f

    div-float/2addr v0, v1

    .line 380
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 381
    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float v8, v1, v0

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 383
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 384
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 385
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const v4, -0x952f01

    const/16 v5, 0x46

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 389
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 390
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 392
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

    .line 393
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 395
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

    .line 396
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

    .line 397
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 398
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
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

    .line 400
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

    .line 404
    :cond_197
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 405
    const v0, 0x3f3851ec    # 0.72f

    sub-float v0, p4, v0

    const v1, 0x3e8f5c29    # 0.28f

    div-float v6, v0, v1

    .line 406
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

    .line 407
    :cond_1c3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 408
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 409
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0x1747b6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 411
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

    .line 412
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
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

    .line 417
    if-eqz p2, :cond_7

    if-gtz p5, :cond_8

    .line 423
    :cond_7
    :goto_7
    return-void

    .line 418
    :cond_8
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 419
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-static {v3, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 420
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 421
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 422
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

    .line 431
    move v0, v1

    :goto_5
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_66

    if-lez p3, :cond_66

    .line 432
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    aget-object v2, v2, v0

    .line 433
    aget v3, v2, v11

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 431
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 434
    :cond_1a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 435
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v10

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v6

    .line 436
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

    .line 437
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

    .line 438
    add-int/lit8 p3, p3, -0x1

    goto :goto_17

    .line 440
    :cond_66
    return-void
.end method

.method fit(JF)Ljava/lang/String;
    .registers 7

    .prologue
    .line 753
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->compact(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method guns()I
    .registers 3

    .prologue
    const/4 v0, 0x2

    .line 735
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_12

    .line 737
    :cond_11
    :goto_11
    return v0

    .line 736
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V
    .registers 23

    .prologue
    .line 717
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0xf8efe4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 719
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, 0x206ad0ff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    :goto_1d
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_3f

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v6, v4, v2

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    goto :goto_1d

    .line 721
    :cond_3f
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    .line 723
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    add-float/2addr v3, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    invoke-direct {v8, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 724
    const v2, 0x3f87ae14    # 1.06f

    invoke-static {v8, v2}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->grow(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz p7, :cond_f1

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    move-wide/from16 v0, p5

    long-to-double v10, v0

    const-wide v12, 0x407f400000000000L    # 500.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    add-double/2addr v2, v6

    double-to-int v7, v2

    :goto_b2
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 725
    const v6, -0xebcdb6

    const/16 v7, 0xff

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 726
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 727
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 728
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0xdbc7b1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 730
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 731
    return-void

    .line 724
    :cond_f1
    const/16 v7, 0x50

    goto :goto_b2
.end method

.method level()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    return v0
.end method

.method matRow(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;JJZI)F
    .registers 24

    .prologue
    .line 759
    const-string v12, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->matRow(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;JJZILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method matRow(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;JJZILjava/lang/String;)F
    .registers 21

    .prologue
    .line 763
    const/high16 v2, 0x41200000    # 10.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x42100000    # 36.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    .line 764
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 765
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 766
    iget v2, p2, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x41000000    # 8.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x41200000    # 10.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p3

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, p4, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 767
    const/4 v2, 0x0

    .line 768
    const-wide/16 v6, 0x0

    cmp-long v5, p7, v6

    if-ltz v5, :cond_92

    .line 769
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v5, 0x41100000    # 9.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v5, v4

    move-wide/from16 v0, p7

    invoke-virtual {p0, v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->fit(JF)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 771
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    if-eqz p9, :cond_e5

    const v2, -0x730074

    :goto_64
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 772
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v6, 0x41000000    # 8.0f

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 773
    iget v6, p2, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x41000000    # 8.0f

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v7, p3

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 774
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 776
    :cond_92
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 777
    sub-float v3, v4, v2

    invoke-virtual {p0, p5, p6, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->fit(JF)Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_ea

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    sub-float v2, v4, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v5, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 779
    :goto_cb
    iget v3, p2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x41e00000    # 28.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float/2addr v4, p3

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 780
    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p3

    return v2

    .line 771
    :cond_e5
    const v2, -0x9495

    goto/16 :goto_64

    :cond_ea
    move-object v2, v3

    goto :goto_cb
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const v11, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->lastFrame:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_45

    const v6, 0x3c83126f    # 0.016f

    .line 208
    :goto_15
    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->lastFrame:J

    .line 209
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->getHeight()I

    move-result v2

    .line 210
    if-le v1, v2, :cond_55

    const/4 v0, 0x1

    .line 211
    :goto_22
    if-eqz v0, :cond_57

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    mul-float/2addr v7, v11

    int-to-float v8, v2

    invoke-direct {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
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

    .line 213
    invoke-virtual/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawBay(Landroid/graphics/Canvas;Landroid/graphics/RectF;JF)V

    .line 214
    invoke-virtual {p0, p1, v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V

    .line 215
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->postInvalidateDelayed(J)V

    .line 216
    return-void

    .line 207
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

    .line 210
    :cond_55
    const/4 v0, 0x0

    goto :goto_22

    .line 211
    :cond_57
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    mul-float/2addr v8, v10

    invoke-direct {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_2c

    .line 212
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

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 197
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 200
    :cond_1c
    :goto_1c
    return v3

    .line 198
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
    .line 790
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    int-to-float v1, p6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 791
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p7}, Landroid/text/TextPaint;->setColor(I)V

    .line 792
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

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 794
    int-to-float v1, p6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float v1, p4, v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 796
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 797
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

    .line 166
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

    .line 191
    :cond_19
    :goto_19
    return-void

    .line 167
    :cond_1a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->level()I

    move-result v5

    .line 168
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v6

    .line 169
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    .line 170
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    .line 171
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->buy()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v0, "refitscreen"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :try_start_33
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->act:Landroid/app/Activity;

    instance-of v0, v0, Lfr/testudo/spacecorsair/activity/StationActivity;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->act:Landroid/app/Activity;

    check-cast v0, Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->updateTexts()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_40} :catch_b2

    .line 176
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->level()I

    move-result v0

    .line 177
    if-gt v0, v5, :cond_5c

    .line 178
    if-eqz v1, :cond_55

    move-object v0, v1

    :goto_49
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xdac

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statusUntil:J

    goto :goto_19

    .line 178
    :cond_55
    const-string v0, "Refit failed."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 182
    :cond_5c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->reload()V

    .line 183
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animLevel:I

    .line 184
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStage:I

    .line 185
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

    .line 186
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_a7

    move-object v0, v2

    :goto_81
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    .line 187
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v0, :cond_a9

    const-wide/16 v0, 0x11f8

    :goto_89
    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animMs:J

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    .line 189
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

    .line 190
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    goto/16 :goto_19

    .line 185
    :cond_a5
    const/4 v0, 0x0

    goto :goto_7a

    :cond_a7
    move-object v0, v3

    .line 186
    goto :goto_81

    .line 187
    :cond_a9
    const-wide/16 v0, 0x960

    goto :goto_89

    .line 189
    :cond_ac
    const-string v0, "repair"

    goto :goto_97

    :cond_af
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9c

    .line 175
    :catch_b2
    move-exception v0

    goto :goto_40
.end method

.method reload()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->summary()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    .line 95
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    if-nez v0, :cond_29

    :try_start_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->ship:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_f1

    .line 99
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->level()I

    move-result v3

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    if-nez v0, :cond_94

    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emblem_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_50
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crest_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crest_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->crest:Landroid/graphics/Bitmap;

    .line 105
    :cond_94
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-nez v0, :cond_fc

    move-object v1, v2

    .line 106
    :goto_99
    if-eqz v1, :cond_a3

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 107
    :cond_a3
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->curArt:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b5

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stockBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    .line 110
    :cond_b5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->sampleWeld(Landroid/graphics/Bitmap;)V

    .line 112
    :cond_ba
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    .line 113
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v0, :cond_f0

    .line 116
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_cb
    const/4 v2, 0x5

    if-gt v0, v2, :cond_e4

    .line 117
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stageArt(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_108

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_108

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    .line 120
    :cond_e4
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextArt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    .line 122
    :cond_f0
    return-void

    .line 98
    :catch_f1
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    goto/16 :goto_29

    .line 102
    :cond_f8
    const-string v0, "emblem_independent"

    goto/16 :goto_50

    .line 105
    :cond_fc
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModV35;->stageArt(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_99

    .line 116
    :cond_108
    add-int/lit8 v0, v0, 0x1

    goto :goto_cb
.end method

.method sampleWeld(Landroid/graphics/Bitmap;)V
    .registers 14

    .prologue
    const/4 v11, 0x3

    const/4 v3, -0x1

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    move v0, v1

    .line 142
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

    .line 143
    :cond_20
    if-nez p1, :cond_23

    .line 158
    :cond_22
    return-void

    :cond_23
    move v5, v1

    .line 144
    :goto_24
    if-ge v5, v11, :cond_6a

    .line 145
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

    .line 147
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

    .line 148
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

    .line 144
    :cond_66
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_24

    :cond_6a
    move v0, v1

    .line 150
    :goto_6b
    const/16 v2, 0x258

    if-ge v0, v2, :cond_22

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    array-length v3, v3

    if-ge v2, v3, :cond_22

    .line 151
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

    .line 152
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x18

    const/16 v5, 0xa0

    if-le v4, v5, :cond_b8

    .line 153
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    aget-object v4, v4, v5

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    aput v2, v4, v1

    .line 154
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    aget-object v2, v2, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v9

    .line 155
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    .line 150
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b
.end method

.method stockBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 134
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

    .line 136
    :goto_e
    return-object v0

    .line 135
    :catch_f
    move-exception v0

    .line 136
    const/4 v0, 0x0

    goto :goto_e
.end method

.method text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V
    .registers 10

    .prologue
    .line 784
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    int-to-float v1, p5

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 785
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p6}, Landroid/text/TextPaint;->setColor(I)V

    .line 786
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 787
    return-void
.end method
