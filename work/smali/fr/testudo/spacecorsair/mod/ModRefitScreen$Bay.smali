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

    .line 812
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

    .line 813
    long-to-double v2, p0

    move v0, v1

    .line 815
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

    .line 816
    :cond_34
    if-nez v0, :cond_3b

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 817
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

    .line 427
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

    .line 428
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

    .line 463
    :try_start_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    .line 464
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

    .line 466
    :goto_28
    return v0

    .line 464
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 465
    :catch_2c
    move-exception v0

    .line 466
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
    .line 870
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v1

    .line 871
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 872
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

    .line 873
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 875
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 876
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 877
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

    .line 878
    return-void
.end method

.method card(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)F
    .registers 16

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 471
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v6, v0, v1

    const/high16 v0, 0x41900000    # 18.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v7, v0, v1

    .line 472
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 473
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

    .line 474
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 475
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0x1ff4e5d2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 478
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 479
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xefdcc6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 481
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x146ad0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
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

    .line 484
    :cond_a0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 486
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x3f99999a    # 1.2f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xdbc7b1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 489
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 490
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
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

    .line 492
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v1, 0x41180000    # 9.5f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 493
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 494
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

    .line 495
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
    .line 325
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 326
    const/4 v0, -0x1

    move v8, v0

    :goto_9
    const/4 v0, 0x1

    if-gt v8, v0, :cond_117

    .line 327
    const/4 v0, 0x0

    move v7, v0

    :goto_e
    const/4 v0, 0x3

    if-ge v7, v0, :cond_112

    .line 328
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

    .line 329
    if-gez v8, :cond_f0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    move v6, v0

    .line 330
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

    .line 331
    :goto_43
    sub-float/2addr v0, v6

    mul-float v0, v0, p4

    add-float v10, v6, v0

    .line 332
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xe4d5c4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v11, v0, v1

    .line 334
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

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xc5af98

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
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

    .line 338
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0xd5c3ae

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
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

    .line 340
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_eb

    .line 341
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, -0x1960

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
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

    .line 327
    :cond_eb
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_e

    .line 329
    :cond_f0
    iget v0, p2, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    move v6, v0

    goto/16 :goto_2c

    .line 330
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

    .line 326
    :cond_112
    add-int/lit8 v0, v8, 0x2

    move v8, v0

    goto/16 :goto_9

    .line 346
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

    .line 322
    :cond_3b4
    :goto_3b4
    return-void

    .line 270
    :cond_3b5
    invoke-virtual/range {p0 .. p4}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hexPad(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v4

    if-eqz v4, :cond_4ff

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animStart:J

    sub-long v4, p3, v4

    long-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animMs:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    move v10, v4

    .line 273
    :goto_3cc
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

    .line 274
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

    .line 275
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

    .line 276
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

    .line 279
    const/4 v4, 0x0

    cmpg-float v4, v10, v4

    if-gez v4, :cond_504

    const/4 v4, 0x0

    .line 280
    :goto_451
    mul-float v5, v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    mul-float/2addr v4, v5

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v11, v4}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawArms(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 284
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

    .line 285
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

    .line 287
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_52b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_52b

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_52b

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2, v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawStageMorph(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 298
    :goto_4b2
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_566

    const v4, 0x3f59999a    # 0.85f

    cmpg-float v4, v10, v4

    if-gez v4, :cond_566

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    if-lez v4, :cond_566

    .line 299
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_563

    const/4 v4, 0x6

    .line 300
    :goto_4cb
    const/4 v5, 0x0

    :goto_4cc
    if-ge v5, v4, :cond_566

    .line 301
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weld:[[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->weldN:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v6, v6, v7

    .line 302
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

    .line 300
    add-int/lit8 v5, v5, 0x1

    goto :goto_4cc

    .line 272
    :cond_4ff
    const/high16 v4, -0x40800000    # -1.0f

    move v10, v4

    goto/16 :goto_3cc

    .line 279
    :cond_504
    const v4, 0x3e19999a    # 0.15f

    cmpg-float v4, v10, v4

    if-gez v4, :cond_512

    const v4, 0x3e19999a    # 0.15f

    div-float v4, v10, v4

    goto/16 :goto_451

    :cond_512
    const v4, 0x3f6147ae    # 0.88f

    cmpl-float v4, v10, v4

    if-lez v4, :cond_527

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v10

    const v6, 0x3df5c28f    # 0.12f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto/16 :goto_451

    :cond_527
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_451

    .line 290
    :cond_52b
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 293
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_558

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawLevelPulse(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto/16 :goto_4b2

    .line 294
    :cond_558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawIdleScan(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V

    goto/16 :goto_4b2

    .line 299
    :cond_563
    const/4 v4, 0x4

    goto/16 :goto_4cb

    .line 305
    :cond_566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawSparks(Landroid/graphics/Canvas;F)V

    .line 308
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_3b4

    .line 309
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v4, :cond_642

    const v4, 0x3f3851ec    # 0.72f

    sub-float v4, v10, v4

    const v5, 0x3e8f5c29    # 0.28f

    div-float/2addr v4, v5

    .line 310
    :goto_583
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3b4

    .line 311
    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_64d

    const v5, 0x3e4ccccd    # 0.2f

    div-float/2addr v4, v5

    .line 312
    :goto_593
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v5, :cond_662

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

    .line 313
    :goto_5bd
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v6, :cond_67f

    const/high16 v6, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v8

    :goto_5ce
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 314
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->stageAnim:Z

    if-eqz v6, :cond_688

    const v6, -0x1747b6

    :goto_5de
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 315
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

    .line 316
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

    if-eqz v4, :cond_68d

    const/16 v4, -0x65d6

    :goto_60c
    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 318
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

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_3b4

    .line 309
    :cond_642
    const v4, 0x3ee66666    # 0.45f

    sub-float v4, v10, v4

    const v5, 0x3f0ccccd    # 0.55f

    div-float/2addr v4, v5

    goto/16 :goto_583

    .line 311
    :cond_64d
    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_65e

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const v5, 0x3e4ccccd    # 0.2f

    div-float/2addr v4, v5

    goto/16 :goto_593

    :cond_65e
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_593

    .line 312
    :cond_662
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

    goto/16 :goto_5bd

    .line 313
    :cond_67f
    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v8

    goto/16 :goto_5ce

    .line 314
    :cond_688
    const v6, -0x952f01

    goto/16 :goto_5de

    .line 316
    :cond_68d
    const v4, -0xd56501

    goto/16 :goto_60c
.end method

.method drawIdleScan(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 16

    .prologue
    const/high16 v9, 0x41900000    # 18.0f

    const/4 v1, 0x0

    .line 349
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0xfa0

    rem-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x457a0000    # 4000.0f

    div-float/2addr v0, v2

    .line 350
    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v0, v3

    add-float v4, v2, v0

    .line 351
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

    .line 352
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v0, v9

    sub-float v2, v4, v0

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 354
    return-void
.end method

.method drawInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 42

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, -0x33f5e9da    # -3.619855E7f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, 0xe6ad0ff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    const/high16 v4, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v6, v4, v5

    .line 507
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    :goto_45
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_84

    .line 508
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v4, v5

    const v7, 0x3f5db22d    # 0.866f

    mul-float/2addr v7, v6

    div-float/2addr v5, v7

    float-to-int v5, v5

    .line 509
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

    .line 507
    :cond_7e
    const v5, 0x3f5db22d    # 0.866f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    goto :goto_45

    .line 511
    :cond_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, -0xdbc7b1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
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

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    if-nez v4, :cond_bf

    .line 684
    :goto_be
    return-void

    .line 515
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->accent()I

    move-result v16

    .line 516
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v36, v4, v5

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v21, v4, v36

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v36

    sub-float v23, v4, v5

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v4, v36

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_304

    const/16 v18, 0x1

    .line 521
    :goto_106
    new-instance v12, Landroid/graphics/RectF;

    add-float v5, v21, v23

    const/high16 v6, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    move/from16 v0, v21

    invoke-direct {v12, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v12, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x0

    iget v7, v12, Landroid/graphics/RectF;->right:F

    const/4 v8, 0x0

    const v9, 0xffffff

    and-int v9, v9, v16

    const/high16 v10, 0x50000000

    or-int/2addr v9, v10

    const v10, 0x100b1a2e

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    iget v5, v12, Landroid/graphics/RectF;->left:F

    iget v6, v12, Landroid/graphics/RectF;->top:F

    iget v4, v12, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    iget v8, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    iget v4, v12, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float v7, v4, v5

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1b1

    .line 529
    const/high16 v4, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    .line 530
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->emblem:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    sub-float/2addr v9, v10

    add-float v10, v7, v4

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v4, v13

    add-float/2addr v11, v13

    invoke-direct {v8, v7, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 531
    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v7, v4

    .line 533
    :cond_1b1
    const-string v4, "RETROFIT BAY"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v4, v12, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    if-nez v4, :cond_308

    const-string v6, ""

    :goto_1d5
    iget v4, v12, Landroid/graphics/RectF;->top:F

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

    .line 535
    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float v11, v4, v5

    .line 538
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

    move/from16 v7, v21

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v6, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 541
    add-float v5, v21, v23

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

    .line 542
    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float v12, v11, v4

    .line 543
    const/high16 v4, 0x42500000    # 52.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v13, v4, v5

    sub-float v4, v23, v13

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v14, v5, v6

    .line 544
    const/high16 v5, 0x41200000    # 10.0f

    div-float v15, v4, v5

    .line 545
    const/4 v4, 0x0

    move v6, v4

    :goto_288
    const/16 v4, 0xa

    if-ge v6, v4, :cond_32e

    .line 546
    int-to-float v4, v6

    mul-float/2addr v4, v15

    add-float v4, v4, v21

    .line 547
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 548
    invoke-virtual {v7, v4, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v5, v4, v15

    const/high16 v8, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    invoke-virtual {v7, v5, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v4, v15

    const/high16 v8, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v14, v8

    add-float/2addr v8, v12

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v4, v15

    const/high16 v8, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    add-float v8, v12, v14

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 549
    add-float v5, v12, v14

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v14, v5

    add-float/2addr v5, v12

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 550
    move/from16 v0, v17

    if-ge v6, v0, :cond_312

    const/4 v4, 0x1

    move v5, v4

    :goto_2e4
    move/from16 v0, v17

    if-ne v6, v0, :cond_315

    if-nez v18, :cond_315

    const/4 v4, 0x1

    .line 551
    :goto_2eb
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v5, :cond_317

    const v4, -0x1747b6

    :goto_2f4
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 545
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_288

    .line 518
    :cond_304
    const/16 v18, 0x0

    goto/16 :goto_106

    .line 534
    :cond_308
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1d5

    .line 550
    :cond_312
    const/4 v4, 0x0

    move v5, v4

    goto :goto_2e4

    :cond_315
    const/4 v4, 0x0

    goto :goto_2eb

    .line 551
    :cond_317
    if-eqz v4, :cond_32a

    const-wide/16 v4, 0x1c2

    div-long v4, p3, v4

    const-wide/16 v10, 0x1

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-nez v4, :cond_32a

    const v4, -0x5f952f01

    goto :goto_2f4

    :cond_32a
    const v4, -0xe4d5c4

    goto :goto_2f4

    .line 554
    :cond_32e
    if-lez v17, :cond_39e

    .line 555
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float/2addr v4, v15

    add-float v19, v21, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v4, p3, v4

    const-wide/16 v6, 0x898

    rem-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x45098000    # 2200.0f

    div-float/2addr v4, v5

    .line 556
    sub-float v5, v19, v21

    mul-float/2addr v4, v5

    add-float v7, v21, v4

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 558
    add-float v4, v12, v14

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v20, v0

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

    fill-array-data v9, :array_d02

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 560
    add-float v8, v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v21

    move v6, v12

    move/from16 v7, v19

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 564
    :cond_39e
    const/4 v4, 0x1

    move v10, v4

    :goto_3a0
    const/4 v4, 0x5

    if-gt v10, v4, :cond_486

    .line 565
    mul-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v15

    add-float v4, v4, v21

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v15, v5

    sub-float v11, v4, v5

    add-float v4, v12, v14

    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float v19, v4, v5

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 567
    const/high16 v4, 0x42340000    # 45.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v4, v11, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 568
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v35

    if-gt v10, v0, :cond_470

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_3d0
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move/from16 v0, v35

    if-gt v10, v0, :cond_474

    const v4, -0x1747b6

    :goto_3ec
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v5, v11, v4

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v6

    sub-float v6, v19, v4

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v7

    add-float v7, v11, v4

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v8

    add-float v8, v19, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 575
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move/from16 v0, v35

    if-gt v10, v0, :cond_482

    const v4, -0xfaf4ea

    :goto_441
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 576
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

    add-float v6, v6, v19

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 564
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_3a0

    .line 568
    :cond_470
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_3d0

    .line 570
    :cond_474
    add-int/lit8 v4, v35, 0x1

    if-ne v10, v4, :cond_47d

    const v4, -0x952f01

    goto/16 :goto_3ec

    :cond_47d
    const v4, -0xdbc7b1

    goto/16 :goto_3ec

    .line 575
    :cond_482
    const v4, -0x4f3b26

    goto :goto_441

    .line 578
    :cond_486
    new-instance v5, Landroid/graphics/RectF;

    add-float v4, v21, v23

    sub-float/2addr v4, v13

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float v6, v12, v6

    add-float v7, v21, v23

    add-float v8, v12, v14

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 579
    if-eqz v18, :cond_70b

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

    .line 580
    :goto_4bc
    if-eqz v18, :cond_4f9

    .line 581
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v7, -0x1747b6

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x42b40000    # 90.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 583
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

    .line 584
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 586
    :cond_4f9
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v18, :cond_70e

    const v4, -0x1747b6

    :goto_502
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
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

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v18, :cond_713

    const/4 v4, -0x1

    :goto_52c
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v6, 0x3f99999a    # 1.2f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 591
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

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 594
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    if-eqz v18, :cond_718

    const v4, -0xfaf4ea

    :goto_575
    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 595
    const-string v4, "ELITE"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
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

    .line 597
    const/high16 v4, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v14

    add-float v5, v12, v4

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV38;->turretPlan(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)[I

    move-result-object v25

    .line 602
    if-eqz v25, :cond_71d

    const/4 v4, 0x5

    move/from16 v0, v35

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v4, v25, v4

    move/from16 v24, v4

    .line 603
    :goto_5c2
    if-eqz v18, :cond_725

    move/from16 v22, v35

    .line 604
    :goto_5c6
    if-eqz v25, :cond_72f

    if-nez v18, :cond_72f

    const/4 v4, 0x5

    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v4, v25, v4

    move/from16 v0, v24

    if-le v4, v0, :cond_72f

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 605
    :goto_5da
    if-nez v18, :cond_734

    move/from16 v0, v22

    move/from16 v1, v35

    if-le v0, v1, :cond_734

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_734

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    add-int/lit8 v6, v17, 0x1

    if-ne v4, v6, :cond_734

    const/4 v4, 0x1

    move/from16 v34, v4

    .line 608
    :goto_5f3
    if-eqz v18, :cond_739

    const-string v4, "This hull has reached ELITE: every refit and form is unlocked."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 611
    :goto_5fb
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->preview()[[F

    move-result-object v26

    .line 612
    move-object/from16 v0, v26

    array-length v7, v0

    if-eqz v20, :cond_741

    const/4 v4, 0x1

    :goto_605
    add-int v13, v7, v4

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_744

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-nez v4, :cond_615

    if-eqz v18, :cond_744

    :cond_615
    const/high16 v4, 0x42300000    # 44.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v7

    move v12, v4

    .line 614
    :goto_61d
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v36

    const/high16 v7, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    const/high16 v7, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    sub-float v14, v4, v7

    .line 615
    const/high16 v4, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v5

    mul-int/lit8 v7, v13, 0x22

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    add-float/2addr v4, v12

    cmpg-float v4, v4, v14

    if-gtz v4, :cond_cfe

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v7

    add-float v8, v5, v4

    const/16 v10, 0x9

    const v11, -0x807160

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, v21

    move/from16 v9, v23

    invoke-virtual/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 617
    :goto_66c
    const/high16 v5, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    sub-float v7, v14, v4

    sub-float/2addr v7, v12

    const/4 v8, 0x1

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v5, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v10, v5, v6

    .line 618
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/4 v5, 0x0

    move/from16 v19, v5

    move v7, v4

    :goto_69d
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_797

    aget-object v5, v26, v19

    .line 619
    const/4 v4, 0x0

    aget v4, v5, v4

    float-to-int v11, v4

    const/4 v4, 0x3

    aget v4, v5, v4

    float-to-int v6, v4

    .line 620
    const/4 v4, 0x1

    if-ne v6, v4, :cond_748

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%.2f s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget v15, v5, v15

    const/16 v28, 0x2

    aget v28, v5, v28

    sub-float v15, v15, v28

    const/high16 v28, 0x447a0000    # 1000.0f

    div-float v15, v15, v28

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v8, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    :goto_6e2
    const/4 v8, 0x1

    aget v5, v5, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->value(FI)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModV35;->statName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v18, :cond_794

    const-string v14, ""

    :goto_6f7
    const v15, -0x830074

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v21

    move/from16 v8, v23

    invoke-virtual/range {v4 .. v18}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statRow(Landroid/graphics/Canvas;FFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 623
    add-float/2addr v7, v9

    .line 618
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    goto :goto_69d

    .line 579
    :cond_70b
    const/4 v4, 0x0

    goto/16 :goto_4bc

    .line 586
    :cond_70e
    const v4, -0xe4d5c4

    goto/16 :goto_502

    .line 589
    :cond_713
    const v4, -0x1747b6

    goto/16 :goto_52c

    .line 594
    :cond_718
    const v4, -0x1747b6

    goto/16 :goto_575

    .line 602
    :cond_71d
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->guns()I

    move-result v4

    move/from16 v24, v4

    goto/16 :goto_5c2

    .line 603
    :cond_725
    add-int/lit8 v4, v17, 0x1

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v4

    move/from16 v22, v4

    goto/16 :goto_5c6

    .line 604
    :cond_72f
    const/4 v4, 0x0

    move/from16 v20, v4

    goto/16 :goto_5da

    .line 605
    :cond_734
    const/4 v4, 0x0

    move/from16 v34, v4

    goto/16 :goto_5f3

    .line 609
    :cond_739
    const-string v4, "Each refit strengthens this hull. Every second refit evolves it into a new form."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5fb

    .line 612
    :cond_741
    const/4 v4, 0x0

    goto/16 :goto_605

    .line 613
    :cond_744
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_61d

    .line 621
    :cond_748
    const/4 v4, 0x2

    if-ne v6, v4, :cond_771

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "%"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6e2

    :cond_771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-float/2addr v8, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->value(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6e2

    :cond_794
    move-object v14, v4

    .line 622
    goto/16 :goto_6f7

    .line 625
    :cond_797
    if-eqz v20, :cond_cfb

    .line 626
    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    iget-wide v12, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v12, p3, v12

    long-to-double v12, v12

    const-wide v14, 0x4072c00000000000L    # 300.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v6, v12

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 627
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const v5, -0x1747b6

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const v6, -0x1747b6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    const v8, -0x1747b6

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v4, v5, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    .line 628
    const/16 v26, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    const-string v4, "Turrets"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget v5, v25, v5

    sub-int v5, v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NEW"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const v31, -0x1747b6

    const/16 v32, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v33, v18

    invoke-virtual/range {v19 .. v33}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statRow(Landroid/graphics/Canvas;FFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 629
    add-float/2addr v7, v9

    move v13, v7

    .line 631
    :goto_820
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c6a

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-nez v4, :cond_82e

    if-eqz v18, :cond_c6a

    .line 632
    :cond_82e
    const/high16 v4, 0x42300000    # 44.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v14, v4, v5

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v5, v14, v4

    .line 633
    sub-float v4, v14, v10

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float v9, v13, v4

    const/4 v11, -0x2

    if-eqz v34, :cond_c06

    const v12, -0x1747b6

    :goto_84c
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, v21

    invoke-virtual/range {v6 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statIcon(Landroid/graphics/Canvas;FFFII)V

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Form"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v35, :cond_c0a

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    aget-object v4, v4, v35

    :goto_870
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    add-float v4, v21, v10

    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float v27, v4, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    add-float/2addr v4, v13

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float v28, v4, v6

    const/16 v29, 0xc

    const/16 v30, -0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    invoke-virtual/range {v24 .. v30}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 635
    add-float v6, v21, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c0e

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    :goto_8af
    sub-float/2addr v6, v4

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/RectF;

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v13

    add-float v7, v6, v5

    const/high16 v8, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v13

    add-float/2addr v8, v5

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v4, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v29, -0x807160

    const/16 v32, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-wide/from16 v30, p3

    invoke-virtual/range {v25 .. v32}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c3d

    .line 638
    add-float v4, v6, v5

    const/high16 v7, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    const/high16 v7, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v13

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    add-float/2addr v7, v8

    .line 639
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 640
    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v11

    sub-float v9, v4, v9

    const/high16 v11, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v12, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v11, v12

    sub-float v11, v7, v11

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v4

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v11

    sub-float/2addr v4, v9

    const/high16 v9, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v9, v11

    add-float/2addr v7, v9

    invoke-virtual {v8, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 641
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz v34, :cond_c11

    const v4, -0x1747b6

    :goto_93f
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->next:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/RectF;

    add-float v4, v6, v5

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    const/high16 v7, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v13

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    add-float/2addr v6, v8

    const/high16 v8, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    const/high16 v8, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v13

    add-float/2addr v5, v8

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v7, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v34, :cond_c16

    const v29, -0x1747b6

    :goto_984
    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-wide/from16 v30, p3

    invoke-virtual/range {v25 .. v32}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V

    .line 644
    if-eqz v34, :cond_c1b

    const-string v4, "Evolves at the next refit"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 645
    :goto_997
    add-float v4, v21, v10

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v7

    add-float v7, v4, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    add-float/2addr v4, v13

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    const/16 v9, 0x8

    if-eqz v34, :cond_c38

    const v10, -0x1747b6

    :goto_9b7
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 649
    :goto_9be
    add-float v4, v13, v14

    .line 655
    :cond_9c0
    :goto_9c0
    const/high16 v4, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v15, v4, v5

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v15

    sub-float v19, v4, v36

    .line 656
    if-nez v18, :cond_ae9

    .line 657
    const-wide/16 v4, 0x0

    .line 658
    :try_start_9d3
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J
    :try_end_9dc
    .catch Ljava/lang/Throwable; {:try_start_9d3 .. :try_end_9dc} :catch_c9b

    move-result-wide v4

    move-wide v12, v4

    .line 659
    :goto_9de
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v4, v17, 0x1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c9f

    const/4 v4, 0x1

    move v14, v4

    :goto_a07
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 661
    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v8, v19, v4

    .line 662
    const-string v4, "REQUIRED"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x8

    const v10, -0x807160

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, v21

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const-string v5, "REQUIRED"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float v7, v21, v4

    .line 665
    const-string v9, "cr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->compact(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v24 .. v25}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->compact(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    cmp-long v4, v12, v24

    if-ltz v4, :cond_ca3

    const/4 v11, 0x1

    :goto_a7b
    const v12, -0x1747b6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->need(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;ZI)F

    move-result v7

    .line 666
    if-lez v20, :cond_ab7

    const-string v9, "\u2b21"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v22

    move/from16 v1, v20

    if-lt v0, v1, :cond_ca6

    const/4 v11, 0x1

    :goto_aac
    const v12, -0x952f01

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->need(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;ZI)F

    move-result v7

    .line 667
    :cond_ab7
    if-lez v14, :cond_ae9

    const-string v9, "\u25c6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rf:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v17

    if-lt v0, v14, :cond_ca9

    const/4 v11, 0x1

    :goto_ae0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->need(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;ZI)F

    .line 669
    :cond_ae9
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    if-eqz v4, :cond_b14

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statusUntil:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_b14

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->status:Ljava/lang/String;

    const/high16 v4, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v8, v19, v4

    const/16 v10, 0xa

    const v11, -0x9495

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, v21

    move/from16 v9, v23

    invoke-virtual/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    .line 670
    :cond_b14
    const v4, 0x3f333333    # 0.7f

    mul-float v4, v4, v23

    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    sub-float v6, v23, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v6, v6, v21

    add-float v4, v4, v23

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    add-float v4, v4, v21

    add-float v7, v19, v15

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 672
    if-nez v18, :cond_cac

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v4

    if-nez v4, :cond_cac

    const/4 v4, 0x1

    .line 673
    :goto_b3b
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->refitBtn:Landroid/graphics/RectF;

    if-eqz v18, :cond_caf

    const-string v5, "ELITE"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_b47
    if-eqz v4, :cond_cf1

    const v8, -0x1747b6

    :goto_b4c
    if-eqz v4, :cond_cf6

    const v9, -0xfaf4ea

    :goto_b51
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->button(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;II)V

    .line 675
    const/high16 v4, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    .line 676
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float v6, v6, v36

    sub-float/2addr v6, v4

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float v7, v7, v36

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float v8, v8, v36

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float v9, v9, v36

    add-float/2addr v4, v9

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v5, -0x4f3b26

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 680
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float v10, v4, v5

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v6, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v7, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v6, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float v7, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->closeBtn:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_be

    :cond_c06
    move/from16 v12, v16

    .line 633
    goto/16 :goto_84c

    .line 634
    :cond_c0a
    const-string v4, "0"

    goto/16 :goto_870

    :cond_c0e
    move v4, v5

    .line 635
    goto/16 :goto_8af

    .line 641
    :cond_c11
    const v4, -0x952f01

    goto/16 :goto_93f

    .line 643
    :cond_c16
    const v29, -0x952f01

    goto/16 :goto_984

    .line 644
    :cond_c1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evolves at refit "

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->nextAt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_997

    .line 645
    :cond_c38
    const v10, -0x952f01

    goto/16 :goto_9b7

    .line 647
    :cond_c3d
    const-string v4, "Final form reached"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-float v4, v21, v10

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v7

    add-float v7, v4, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    add-float/2addr v4, v13

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float v8, v4, v5

    const/16 v9, 0x8

    const v10, -0x1747b6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    goto/16 :goto_9be

    .line 650
    :cond_c6a
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x42f00000    # 120.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpg-float v4, v13, v4

    if-gez v4, :cond_9c0

    .line 651
    const-string v4, "This hull keeps its shape (no new form art yet)"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    add-float v8, v13, v4

    const/16 v10, 0x9

    const v11, -0x807160

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, v21

    move/from16 v9, v23

    invoke-virtual/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->para(Landroid/graphics/Canvas;Ljava/lang/String;FFFII)F

    goto/16 :goto_9c0

    .line 658
    :catch_c9b
    move-exception v6

    move-wide v12, v4

    goto/16 :goto_9de

    .line 660
    :cond_c9f
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_a07

    .line 665
    :cond_ca3
    const/4 v11, 0x0

    goto/16 :goto_a7b

    .line 666
    :cond_ca6
    const/4 v11, 0x0

    goto/16 :goto_aac

    .line 667
    :cond_ca9
    const/4 v11, 0x0

    goto/16 :goto_ae0

    .line 672
    :cond_cac
    const/4 v4, 0x0

    goto/16 :goto_b3b

    .line 673
    :cond_caf
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->animating()Z

    move-result v5

    if-eqz v5, :cond_cbd

    const-string v5, "Refitting..."

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_b47

    :cond_cbd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REFIT"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   "

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

    goto/16 :goto_b47

    :cond_cf1
    const v8, -0xc5b9aa

    goto/16 :goto_b4c

    :cond_cf6
    const v9, -0x807160

    goto/16 :goto_b51

    :cond_cfb
    move v13, v7

    goto/16 :goto_820

    :cond_cfe
    move v4, v5

    goto/16 :goto_66c

    .line 559
    nop

    :array_d02
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

    .line 358
    const/high16 v0, 0x3f400000    # 0.75f

    div-float v0, p3, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 359
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 361
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v8

    sub-float v3, v1, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v8

    add-float/2addr v1, v5

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 362
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

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 364
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

    .line 365
    :cond_67
    return-void
.end method

.method drawSparks(Landroid/graphics/Canvas;F)V
    .registers 12

    .prologue
    .line 444
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0x3fcccccd    # 1.6f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_10
    if-ge v6, v8, :cond_7f

    aget-object v4, v7, v6

    .line 446
    const/4 v0, 0x4

    aget v0, v4, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    .line 445
    :goto_1c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10

    .line 447
    :cond_20
    const/4 v0, 0x4

    aget v1, v4, v0

    sub-float/2addr v1, p2

    aput v1, v4, v0

    .line 448
    const/4 v0, 0x3

    aget v1, v4, v0

    const/high16 v2, 0x43820000    # 260.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v4, v0

    .line 449
    const/4 v0, 0x0

    aget v1, v4, v0

    const/4 v0, 0x1

    aget v2, v4, v0

    .line 450
    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v5, 0x2

    aget v5, v4, v5

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v0

    .line 451
    const/4 v0, 0x1

    aget v3, v4, v0

    const/4 v5, 0x3

    aget v5, v4, v5

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v0

    .line 452
    const/4 v0, 0x0

    const/4 v3, 0x4

    aget v3, v4, v3

    const/4 v5, 0x5

    aget v5, v4, v5

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 453
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7c

    const/16 v0, -0xb40

    :goto_63
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 455
    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v0, 0x1

    aget v4, v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 453
    :cond_7c
    const/16 v0, -0x4fc0

    goto :goto_63

    .line 457
    :cond_7f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 458
    return-void
.end method

.method drawStageMorph(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 15

    .prologue
    .line 368
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 369
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
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

    .line 371
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

    .line 372
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

    .line 373
    const v0, 0x3e3851ec    # 0.18f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8a

    .line 374
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 375
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

    .line 415
    :cond_89
    :goto_89
    return-void

    .line 378
    :cond_8a
    const v0, 0x3f3851ec    # 0.72f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_197

    .line 380
    const v0, 0x3e3851ec    # 0.18f

    sub-float v0, p4, v0

    const v1, 0x3f0a3d71    # 0.54f

    div-float/2addr v0, v1

    .line 381
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 382
    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float v8, v1, v0

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 384
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 385
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 386
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->old:Landroid/graphics/Bitmap;

    const v4, -0x952f01

    const/16 v5, 0x46

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 390
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 393
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

    .line 394
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
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

    .line 397
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

    .line 398
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 399
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
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

    .line 401
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

    .line 405
    :cond_197
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->cur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 406
    const v0, 0x3f3851ec    # 0.72f

    sub-float v0, p4, v0

    const v1, 0x3e8f5c29    # 0.28f

    div-float v6, v0, v1

    .line 407
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

    .line 408
    :cond_1c3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 409
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 410
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, -0x1747b6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 412
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

    .line 413
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 414
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

    .line 418
    if-eqz p2, :cond_7

    if-gtz p5, :cond_8

    .line 424
    :cond_7
    :goto_7
    return-void

    .line 419
    :cond_8
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 420
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-static {v3, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 421
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 422
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 423
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

    .line 432
    move v0, v1

    :goto_5
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_66

    if-lez p3, :cond_66

    .line 433
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->spark:[[F

    aget-object v2, v2, v0

    .line 434
    aget v3, v2, v11

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 432
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 435
    :cond_1a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 436
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v10

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v6

    .line 437
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

    .line 438
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

    .line 439
    add-int/lit8 p3, p3, -0x1

    goto :goto_17

    .line 441
    :cond_66
    return-void
.end method

.method fit(JF)Ljava/lang/String;
    .registers 7

    .prologue
    .line 822
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 823
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

    .line 804
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

    .line 806
    :cond_11
    :goto_11
    return v0

    .line 805
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method hex(FFF)Landroid/graphics/Path;
    .registers 12

    .prologue
    .line 727
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 728
    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x6

    if-ge v0, v2, :cond_33

    .line 729
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    int-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 730
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v4, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    .line 731
    if-nez v0, :cond_2f

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 728
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 731
    :cond_2f
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2c

    .line 733
    :cond_33
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 734
    return-object v1
.end method

.method hexPad(Landroid/graphics/Canvas;Landroid/graphics/RectF;J)V
    .registers 16

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const v10, 0xffffff

    .line 710
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->accent()I

    move-result v7

    .line 711
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v0

    .line 712
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->born:J

    sub-long v4, p3, v4

    long-to-double v4, v4

    const-wide v8, 0x4091300000000000L    # 1100.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v6

    add-float v8, v6, v0

    .line 713
    iget-object v9, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    and-int v4, v7, v10

    const/high16 v5, 0x30000000

    or-int/2addr v4, v5

    and-int v5, v7, v10

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 714
    invoke-virtual {p0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hex(FFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 715
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 716
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 717
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 718
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    and-int v4, v7, v10

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v6, 0x42a00000    # 80.0f

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    invoke-virtual {p0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hex(FFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 720
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc00000    # 1.5f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 721
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    and-int v4, v7, v10

    const/high16 v5, 0x50000000

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    const v0, 0x3f51eb85    # 0.82f

    mul-float/2addr v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->hex(FFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 723
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 724
    return-void
.end method

.method holo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IJZ)V
    .registers 23

    .prologue
    .line 786
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0xf8efe4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 788
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, 0x206ad0ff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 789
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

    .line 790
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

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    .line 792
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

    .line 793
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

    .line 794
    const v6, -0xebcdb6

    const/16 v7, 0xff

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->drawTinted(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;II)V

    .line 795
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 796
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 797
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0xdbc7b1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 798
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 799
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 800
    return-void

    .line 793
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
    .line 828
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
    .line 832
    const/high16 v2, 0x41200000    # 10.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x42100000    # 36.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    .line 833
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 834
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 835
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

    .line 836
    const/4 v2, 0x0

    .line 837
    const-wide/16 v6, 0x0

    cmp-long v5, p7, v6

    if-ltz v5, :cond_92

    .line 838
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v5, 0x41100000    # 9.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 839
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

    .line 840
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    if-eqz p9, :cond_e5

    const v2, -0x730074

    :goto_64
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 841
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v6, 0x41000000    # 8.0f

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 842
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

    .line 843
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 845
    :cond_92
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 846
    sub-float v3, v4, v2

    invoke-virtual {p0, p5, p6, v3}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->fit(JF)Ljava/lang/String;

    move-result-object v3

    .line 847
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

    .line 848
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

    .line 849
    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p3

    return v2

    .line 840
    :cond_e5
    const v2, -0x9495

    goto/16 :goto_64

    :cond_ea
    move-object v2, v3

    goto :goto_cb
.end method

.method need(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;ZI)F
    .registers 16

    .prologue
    const/16 v5, 0x9

    const/high16 v7, 0x41100000    # 9.0f

    .line 776
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move v4, p3

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 777
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 778
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, p2

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float v3, v0, v1

    .line 779
    if-eqz p6, :cond_43

    const/4 v6, -0x1

    :goto_26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 780
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 781
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    .line 779
    :cond_43
    const v6, -0x9495

    goto :goto_26
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
    .line 859
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    int-to-float v1, p6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 860
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p7}, Landroid/text/TextPaint;->setColor(I)V

    .line 861
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

    .line 862
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 863
    int-to-float v1, p6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    sub-float v1, p4, v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 864
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 865
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 866
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

.method statIcon(Landroid/graphics/Canvas;FFFII)V
    .registers 12

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 744
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v1, 0xffffff

    and-int/2addr v1, p6

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p2, p4

    add-float v2, p3, p4

    invoke-direct {v0, p2, p3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v3

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 747
    packed-switch p5, :pswitch_data_6e

    .line 759
    const-string v0, "\u25c6"

    .line 761
    :goto_29
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, p4

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 762
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v1, p6}, Landroid/text/TextPaint;->setColor(I)V

    .line 763
    div-float v1, p4, v4

    add-float/2addr v1, p2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const v2, 0x3f3851ec    # 0.72f

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 764
    return-void

    .line 748
    :pswitch_4d
    const-string v0, "\u25b2"

    goto :goto_29

    .line 749
    :pswitch_50
    const-string v0, "\u21bb"

    goto :goto_29

    .line 750
    :pswitch_53
    const-string v0, "\u25c9"

    goto :goto_29

    .line 751
    :pswitch_56
    const-string v0, "+"

    goto :goto_29

    .line 752
    :pswitch_59
    const-string v0, "\u25ba"

    goto :goto_29

    .line 753
    :pswitch_5c
    const-string v0, "\u25a3"

    goto :goto_29

    .line 754
    :pswitch_5f
    const-string v0, "\u271a"

    goto :goto_29

    .line 755
    :pswitch_62
    const-string v0, "\u25c8"

    goto :goto_29

    .line 756
    :pswitch_65
    const-string v0, "\u00bb"

    goto :goto_29

    .line 757
    :pswitch_68
    const-string v0, "\u21ba"

    goto :goto_29

    .line 758
    :pswitch_6b
    const-string v0, "\u25ce"

    goto :goto_29

    .line 747
    :pswitch_data_6e
    .packed-switch -0x1
        :pswitch_6b
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
    .end packed-switch
.end method

.method statRow(Landroid/graphics/Canvas;FFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 27

    .prologue
    .line 688
    sub-float v1, p5, p6

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v4, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p12

    invoke-virtual/range {v1 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->statIcon(Landroid/graphics/Canvas;FFFII)V

    .line 689
    add-float v1, p2, p6

    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float v4, v1, v2

    .line 690
    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float v5, p3, v1

    const/16 v6, 0xd

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    invoke-virtual/range {v1 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 691
    const/high16 v1, 0x41c80000    # 25.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float v5, p3, v1

    const/16 v6, 0x8

    const v7, -0x807160

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p9

    invoke-virtual/range {v1 .. v7}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 692
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_74

    .line 693
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    const/high16 v2, 0x41300000    # 11.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 694
    add-float v1, p2, p4

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v8, v1, v2

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    add-float v9, p3, v1

    const/16 v10, 0xb

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p10

    move/from16 v11, p11

    invoke-virtual/range {v5 .. v11}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V

    .line 696
    :cond_74
    if-gez p13, :cond_77

    .line 706
    :cond_76
    :goto_76
    return-void

    .line 697
    :cond_77
    add-float v1, p3, p5

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    add-float v1, p2, p4

    sub-float v2, v1, v4

    .line 698
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0xe4d5c4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    add-float v6, p2, p4

    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v3

    add-float v7, v5, v1

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 700
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    if-eqz p14, :cond_e5

    const v1, -0x1747b6

    :goto_a2
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 701
    move/from16 v0, p13

    int-to-float v1, v0

    mul-float/2addr v1, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    add-float v6, v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v3

    add-float v7, v5, v1

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 702
    if-nez p14, :cond_76

    .line 703
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    const v3, -0x830074

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 704
    move/from16 v0, p13

    int-to-float v1, v0

    mul-float/2addr v1, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    add-int/lit8 v3, p13, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    add-float v6, v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v2, v3

    add-float v7, v5, v2

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_76

    .line 700
    :cond_e5
    const v1, -0x952f01

    goto :goto_a2
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

.method stripe(Landroid/graphics/Canvas;FFFFI)V
    .registers 13

    .prologue
    .line 738
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    rem-int/lit8 v0, p6, 0x2

    if-nez v0, :cond_19

    const v0, 0x14ffffff

    :goto_9
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    add-float v3, p2, p4

    add-float v4, p3, p5

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 740
    return-void

    .line 738
    :cond_19
    const v0, 0x6ffffff

    goto :goto_9
.end method

.method text(Landroid/graphics/Canvas;Ljava/lang/String;FFII)V
    .registers 10

    .prologue
    .line 853
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    int-to-float v1, p5

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 854
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {v0, p6}, Landroid/text/TextPaint;->setColor(I)V

    .line 855
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->tp:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 856
    return-void
.end method

.method value(FI)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 768
    if-ne p2, v2, :cond_19

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f s"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 772
    :goto_18
    return-object v0

    .line 769
    :cond_19
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 770
    :cond_3a
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_51

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 771
    :cond_51
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 772
    const-wide/32 v2, 0xf4240

    cmp-long v2, v0, v2

    if-ltz v2, :cond_62

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;->compact(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method
