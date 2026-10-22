.class final Lfr/testudo/spacecorsair/mod/ModFitting$RingView;
.super Landroid/view/ViewGroup;
.source "ModFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RingView"
.end annotation


# instance fields
.field final arc:Landroid/graphics/Paint;

.field final bmp:Landroid/graphics/Paint;

.field boundShip:Ljava/lang/Object;

.field cx:F

.field cy:F

.field final d:F

.field final faint:Landroid/graphics/Paint;

.field final glow:Landroid/graphics/Paint;

.field final hex:Landroid/graphics/Path;

.field final label:Landroid/graphics/Paint;

.field final line:Landroid/graphics/Paint;

.field final markerFill:Landroid/graphics/Paint;

.field final missile:Landroid/graphics/Paint;

.field missilesF:[F

.field missilesPx:[F

.field nMissiles:I

.field nTurrets:I

.field final oval:Landroid/graphics/RectF;

.field radius:F

.field final ringDst:Landroid/graphics/RectF;

.field shipBitmap:Landroid/graphics/Bitmap;

.field shipDrawable:Landroid/graphics/drawable/Drawable;

.field final shipDst:Landroid/graphics/RectF;

.field shipH:F

.field shipW:F

.field ticks:[F

.field final tmp:Landroid/graphics/RectF;

.field final turret:Landroid/graphics/Paint;

.field turretsF:[F

.field turretsPx:[F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1137
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->glow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->line:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    .line 1121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->bmp:Landroid/graphics/Paint;

    .line 1122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turret:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missile:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->markerFill:Landroid/graphics/Paint;

    .line 1123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ringDst:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->tmp:Landroid/graphics/RectF;

    .line 1124
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->hex:Landroid/graphics/Path;

    .line 1125
    new-array v0, v3, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    .line 1130
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipW:F

    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipH:F

    .line 1131
    new-array v0, v3, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    .line 1133
    new-array v0, v3, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    .line 1138
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->dp(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    .line 1139
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->setWillNotDraw(Z)V

    .line 1140
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1141
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1142
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->line:Landroid/graphics/Paint;

    const v1, -0x66952f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1143
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1144
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1145
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    const v1, 0x406ad0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1146
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1147
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1148
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1149
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    const v1, -0x4f3b26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1150
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1151
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1152
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1153
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turret:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1154
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turret:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1155
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turret:Landroid/graphics/Paint;

    const v1, -0x952f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1156
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missile:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1157
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missile:Landroid/graphics/Paint;

    const/16 v1, -0x65c4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1158
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->markerFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1159
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->markerFill:Landroid/graphics/Paint;

    const v1, -0x7ffaf4ea

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1160
    return-void
.end method

.method private layoutShip()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 1232
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    .line 1233
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_e

    .line 1248
    :cond_d
    return-void

    .line 1234
    :cond_e
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipW:F

    div-float v2, v0, v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipH:F

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1235
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipW:F

    mul-float/2addr v2, v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipH:F

    mul-float/2addr v3, v0

    .line 1236
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    div-float v5, v2, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    div-float v6, v3, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    div-float v7, v2, v8

    add-float/2addr v6, v7

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    div-float v8, v3, v8

    add-float/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1237
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1238
    :cond_55
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    array-length v0, v0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_66

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    :cond_66
    move v0, v1

    .line 1239
    :goto_67
    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    if-ge v0, v4, :cond_92

    .line 1240
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    mul-int/lit8 v5, v0, 0x2

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    mul-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 1241
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 1243
    :cond_92
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    array-length v0, v0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_a3

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    .line 1244
    :cond_a3
    :goto_a3
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    if-ge v1, v0, :cond_d

    .line 1245
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    mul-int/lit8 v7, v1, 0x2

    aget v6, v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v0, v4

    .line 1246
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    aput v5, v0, v4

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v8, 0x40000000    # 2.0f

    const v7, 0x3f7c28f6    # 0.985f

    const/4 v4, 0x0

    .line 1311
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    .line 1354
    :cond_11
    return-void

    .line 1312
    :cond_12
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$700()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_19d

    .line 1313
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ringDst:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$700()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ringDst:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$700()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1314
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$700()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$700()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 1315
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->tmp:Landroid/graphics/RectF;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    div-float v5, v1, v8

    sub-float/2addr v3, v5

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    div-float v6, v0, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    div-float/2addr v1, v8

    add-float/2addr v1, v6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    div-float/2addr v0, v8

    add-float/2addr v0, v6

    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1316
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$700()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->tmp:Landroid/graphics/RectF;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->bmp:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1326
    :goto_73
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    const v1, -0x3f0075a4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1327
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3cec0000    # -148.0f

    const/high16 v3, 0x42e80000    # 116.0f

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1328
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    const v1, -0x3f952f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1329
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    const/high16 v2, 0x43240000    # 164.0f

    const/high16 v3, 0x42000000    # 32.0f

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1330
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3e800000    # -16.0f

    const/high16 v3, 0x42000000    # 32.0f

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1331
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    const v1, -0x3f641ea3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1332
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    const/high16 v2, 0x41e00000    # 28.0f

    const/high16 v3, 0x42080000    # 34.0f

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1333
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    const v1, -0x6f4f3b26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1334
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    const/high16 v2, 0x42ec0000    # 118.0f

    const/high16 v3, 0x42080000    # 34.0f

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1335
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    const/16 v1, -0x75a4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1336
    const-string v0, "HIGH"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1337
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    const v1, -0x641ea3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1338
    const-string v0, "LOW"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1339
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    const v1, -0x952f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1340
    const-string v0, "MID"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1341
    const-string v0, "MID"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1343
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e2

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDst:Landroid/graphics/RectF;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->bmp:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1346
    :cond_163
    :goto_163
    const/high16 v0, 0x40900000    # 4.5f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v1, v0

    const v0, 0x404ccccd    # 3.2f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float v7, v0, v2

    move v0, v4

    .line 1347
    :goto_170
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    if-ge v0, v2, :cond_1ed

    .line 1348
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v3, v3, v5

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->markerFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1349
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsPx:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v3, v3, v5

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turret:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1347
    add-int/lit8 v0, v0, 0x1

    goto :goto_170

    .line 1318
    :cond_19d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->glow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1319
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    mul-float/2addr v2, v7

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1320
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v3, 0x3f6147ae    # 0.88f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1321
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 1322
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->hex:Landroid/graphics/Path;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1323
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v3, 0x3f0f5c29    # 0.56f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->faint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_73

    .line 1344
    :cond_1e2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_163

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_163

    :cond_1ed
    move v6, v4

    .line 1351
    :goto_1ee
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    if-ge v6, v0, :cond_11

    .line 1352
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    mul-int/lit8 v1, v6, 0x2

    aget v0, v0, v1

    sub-float v1, v0, v7

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    sub-float v2, v0, v7

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    mul-int/lit8 v3, v6, 0x2

    aget v0, v0, v3

    add-float v3, v0, v7

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesPx:[F

    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v0, v0, v4

    add-float v4, v0, v7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missile:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1351
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1ee
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    .prologue
    .line 1291
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    .line 1292
    int-to-float v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    int-to-float v0, v4

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1293
    const/4 v0, 0x0

    move v2, v0

    :goto_24
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_9a

    .line 1294
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1295
    instance-of v0, v1, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    if-eqz v0, :cond_98

    move-object v0, v1

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->slot:I

    .line 1296
    :goto_37
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1297
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_ANGLE:[F

    rem-int/lit8 v0, v0, 0x6

    aget v0, v10, v0

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1299
    const/high16 v0, 0x42380000    # 46.0f

    iget v12, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v0, v12

    .line 1300
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v7

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    .line 1301
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v7

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v11

    sub-float v10, v6, v10

    .line 1302
    int-to-float v11, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    sub-float v11, v12, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1303
    const/4 v10, 0x0

    sub-int v12, v3, v8

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1304
    const/4 v11, 0x0

    sub-int v12, v4, v9

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1305
    add-int/2addr v8, v10

    add-int/2addr v9, v0

    invoke-virtual {v1, v10, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1293
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_24

    :cond_98
    move v0, v2

    .line 1295
    goto :goto_37

    .line 1307
    :cond_9a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1284
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1285
    :goto_d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_29

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x42980000    # 76.0f

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1286
    :cond_29
    invoke-virtual {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->setMeasuredDimension(II)V

    .line 1287
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 17

    .prologue
    .line 1252
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1253
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    .line 1254
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    .line 1255
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->d:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    .line 1256
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ringDst:Landroid/graphics/RectF;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    add-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1257
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->glow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_138

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_142

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1259
    const/16 v2, 0x48

    .line 1260
    const/16 v0, 0x120

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    .line 1261
    const/4 v0, 0x0

    move v1, v0

    :goto_66
    if-ge v1, v2, :cond_cb

    .line 1262
    mul-int/lit8 v0, v1, 0x5

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 1263
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    rem-int/lit8 v0, v1, 0x6

    if-nez v0, :cond_c7

    const v0, 0x3f666666    # 0.9f

    :goto_78
    mul-float/2addr v0, v3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v6, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v6

    .line 1264
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    mul-int/lit8 v7, v1, 0x4

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 1265
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    mul-int/lit8 v7, v1, 0x4

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v0, v9

    sub-float v0, v8, v0

    aput v0, v6, v7

    .line 1266
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aput v7, v0, v6

    .line 1267
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->ticks:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x3

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float v3, v7, v3

    aput v3, v0, v6

    .line 1261
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_66

    .line 1263
    :cond_c7
    const v0, 0x3f6e147b    # 0.93f

    goto :goto_78

    .line 1269
    :cond_cb
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->hex:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1270
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v1, 0x3f28f5c3    # 0.66f

    mul-float/2addr v1, v0

    .line 1271
    const/4 v0, 0x0

    :goto_d7
    const/4 v2, 0x6

    if-ge v0, v2, :cond_105

    .line 1272
    mul-int/lit8 v2, v0, 0x3c

    add-int/lit8 v2, v2, 0x1e

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1273
    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    .line 1274
    if-nez v0, :cond_ff

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->hex:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1271
    :goto_fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 1274
    :cond_ff
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->hex:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_fc

    .line 1276
    :cond_105
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->hex:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1277
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v3, 0x3f7c28f6    # 0.985f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v4, 0x3f7c28f6    # 0.985f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cx:F

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v5, 0x3f7c28f6    # 0.985f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->cy:F

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->radius:F

    const v6, 0x3f7c28f6    # 0.985f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1278
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->layoutShip()V

    .line 1279
    return-void

    .line 1257
    nop

    :array_138
    .array-data 4
        0x406ad0ff
        0x186ad0ff
        0x0
    .end array-data

    :array_142
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setShip(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V
    .registers 15

    .prologue
    const/16 v5, 0x200

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1163
    if-eqz p4, :cond_b7

    move-object v0, p4

    .line 1164
    :goto_8
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    .line 1165
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    .line 1166
    if-eqz p3, :cond_2e

    .line 1167
    iget-object v2, p3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1168
    iget-object v2, p3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    # setter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 1169
    iget-object v2, p3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {p1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$502(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1171
    :cond_28
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$500()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    .line 1173
    :cond_2e
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_ba

    .line 1174
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipW:F

    .line 1175
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipH:F

    .line 1186
    :cond_44
    :goto_44
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7a

    .line 1188
    if-eqz p4, :cond_108

    :try_start_4a
    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-eqz v2, :cond_108

    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->drawable:I

    .line 1189
    :goto_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_5c} :catch_10e

    .line 1193
    :goto_5c
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7a

    .line 1194
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipW:F

    .line 1195
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipH:F

    .line 1199
    :cond_7a
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    .line 1200
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    .line 1201
    if-eqz p4, :cond_18c

    iget v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    if-lez v2, :cond_18c

    .line 1202
    iget v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v3, v2

    .line 1203
    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    if-eqz v2, :cond_144

    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v2, :cond_144

    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v2, :cond_144

    .line 1204
    iget v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    iget-object v4, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1205
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    array-length v2, v2

    mul-int/lit8 v5, v4, 0x2

    if-ge v2, v5, :cond_ab

    mul-int/lit8 v2, v4, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    :cond_ab
    move v2, v1

    .line 1206
    :goto_ac
    if-ge v2, v4, :cond_144

    .line 1207
    iget-object v5, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v5, v5, v2

    .line 1208
    if-nez v5, :cond_124

    .line 1206
    :goto_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    :cond_b7
    move-object v0, p2

    .line 1163
    goto/16 :goto_8

    .line 1179
    :cond_ba
    if-eqz p4, :cond_101

    :try_start_bc
    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-eqz v2, :cond_101

    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->drawable:I

    .line 1180
    :goto_c4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->origAsset(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1181
    if-eqz v2, :cond_e4

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e4

    # setter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$602(Ljava/lang/String;)Ljava/lang/String;

    const/16 v4, 0x200

    invoke-static {p1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$502(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1182
    :cond_e4
    if-eqz v2, :cond_106

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$500()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1183
    :goto_ea
    if-eqz v2, :cond_44

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipW:F

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipH:F

    goto/16 :goto_44

    .line 1184
    :catch_fe
    move-exception v2

    goto/16 :goto_44

    .line 1179
    :cond_101
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_104} :catch_fe

    move-result v2

    goto :goto_c4

    :cond_106
    move-object v2, v3

    .line 1182
    goto :goto_ea

    .line 1188
    :cond_108
    :try_start_108
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_10b} :catch_10e

    move-result v2

    goto/16 :goto_52

    .line 1190
    :catch_10e
    move-exception v2

    .line 1191
    :try_start_10f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_11d} :catch_11f

    goto/16 :goto_5c

    :catch_11f
    move-exception v2

    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->shipDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5c

    .line 1209
    :cond_124
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v8, v3

    aput v8, v6, v7

    .line 1210
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->turretsF:[F

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v5, v3

    aput v5, v6, v7

    .line 1211
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nTurrets:I

    goto/16 :goto_b4

    .line 1214
    :cond_144
    iget-object v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v2, :cond_18c

    .line 1215
    iget v2, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1216
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    array-length v4, v4

    mul-int/lit8 v5, v2, 0x2

    if-ge v4, v5, :cond_162

    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    .line 1217
    :cond_162
    :goto_162
    if-ge v1, v2, :cond_18c

    .line 1218
    iget-object v4, p4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v4, v4, v1

    .line 1219
    if-nez v4, :cond_16d

    .line 1217
    :goto_16a
    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    .line 1220
    :cond_16d
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v7, v3

    aput v7, v5, v6

    .line 1221
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->missilesF:[F

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v4, v3

    aput v4, v5, v6

    .line 1222
    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->nMissiles:I

    goto :goto_16a

    .line 1226
    :cond_18c
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->boundShip:Ljava/lang/Object;

    .line 1227
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->layoutShip()V

    .line 1228
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->invalidate()V

    .line 1229
    return-void
.end method
