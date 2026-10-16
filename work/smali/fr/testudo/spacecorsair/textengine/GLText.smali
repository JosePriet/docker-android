.class public Lfr/testudo/spacecorsair/textengine/GLText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHAR_BATCH_SIZE:I = 0x64

.field public static final CHAR_CNT:I = 0x74

.field public static final CHAR_END:I = 0x7e

.field public static final CHAR_NONE:I = 0x20

.field public static final CHAR_START:I = 0x20

.field public static final CHAR_UNKNOWN:I = 0x5f

.field public static final FONT_SIZE_MAX:I = 0x200

.field public static final FONT_SIZE_MIN:I = 0x6


# instance fields
.field assets:Landroid/content/res/AssetManager;

.field batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

.field cellHeight:I

.field cellWidth:I

.field charHeight:F

.field charRgn:[Lfr/testudo/spacecorsair/textengine/TextureRegion;

.field charWidthMax:F

.field final charWidths:[F

.field colCnt:I

.field fontAscent:F

.field fontDescent:F

.field fontHeight:F

.field fontPadX:I

.field fontPadY:I

.field gl:Ljavax/microedition/khronos/opengles/GL10;

.field rowCnt:I

.field scaleX:F

.field scaleY:F

.field spaceX:F

.field textureId:I

.field textureRgn:Lfr/testudo/spacecorsair/textengine/TextureRegion;

.field textureSize:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V
    .registers 9

    .prologue
    const/16 v5, 0x74

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 67
    iput-object p2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->assets:Landroid/content/res/AssetManager;

    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;-><init>(Ljavax/microedition/khronos/opengles/GL10;I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    .line 71
    new-array v0, v5, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    .line 72
    new-array v0, v5, [Lfr/testudo/spacecorsair/textengine/TextureRegion;

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charRgn:[Lfr/testudo/spacecorsair/textengine/TextureRegion;

    .line 75
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    .line 76
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadY:I

    .line 78
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontHeight:F

    .line 79
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontAscent:F

    .line 80
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontDescent:F

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureId:I

    .line 83
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    .line 85
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    .line 86
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charHeight:F

    .line 88
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    .line 89
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    .line 90
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->rowCnt:I

    .line 91
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->colCnt:I

    .line 93
    iput v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    .line 94
    iput v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    .line 95
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->spaceX:F

    .line 96
    return-void
.end method


# virtual methods
.method public begin()V
    .registers 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 239
    invoke-virtual {p0, v0, v0, v0, v0}, Lfr/testudo/spacecorsair/textengine/GLText;->begin(FFFF)V

    .line 240
    return-void
.end method

.method public begin(F)V
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    invoke-virtual {p0, v0, v0, v0, p1}, Lfr/testudo/spacecorsair/textengine/GLText;->begin(FFFF)V

    .line 243
    return-void
.end method

.method public begin(FFFF)V
    .registers 8

    .prologue
    .line 245
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 246
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 247
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->beginBatch()V

    .line 248
    return-void
.end method

.method public draw(Ljava/lang/String;FFF)V
    .registers 15

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 263
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    mul-float v4, v0, v1

    .line 264
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float v3, v0, v1

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 266
    div-float v0, v3, v5

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float v1, p2, v0

    .line 267
    div-float v0, v4, v5

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadY:I

    int-to-float v2, v2

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    add-float v2, p3, v0

    .line 268
    const/4 v0, 0x0

    move v8, v0

    :goto_2c
    if-ge v8, v9, :cond_56

    .line 269
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v0

    .line 270
    if-ltz v0, :cond_3a

    const/16 v5, 0x74

    if-lt v0, v5, :cond_57

    .line 271
    :cond_3a
    const/16 v0, 0x73

    move v7, v0

    .line 272
    :goto_3d
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    iget-object v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charRgn:[Lfr/testudo/spacecorsair/textengine/TextureRegion;

    aget-object v5, v5, v7

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->drawSprite(FFFFLfr/testudo/spacecorsair/textengine/TextureRegion;F)V

    .line 273
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v0, v0, v7

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->spaceX:F

    add-float/2addr v0, v5

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float/2addr v0, v5

    add-float/2addr v1, v0

    .line 268
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2c

    .line 275
    :cond_56
    return-void

    :cond_57
    move v7, v0

    goto :goto_3d
.end method

.method public drawC(Ljava/lang/String;FFF)F
    .registers 9

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 283
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    .line 284
    div-float v1, v0, v3

    sub-float v1, p2, v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/textengine/GLText;->getCharHeight()F

    move-result v2

    div-float/2addr v2, v3

    sub-float v2, p3, v2

    invoke-virtual {p0, p1, v1, v2, p4}, Lfr/testudo/spacecorsair/textengine/GLText;->draw(Ljava/lang/String;FFF)V

    .line 285
    return v0
.end method

.method public drawCX(Ljava/lang/String;FFF)F
    .registers 7

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    .line 289
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, p1, v1, p3, p4}, Lfr/testudo/spacecorsair/textengine/GLText;->draw(Ljava/lang/String;FFF)V

    .line 290
    return v0
.end method

.method public drawCY(Ljava/lang/String;FFF)V
    .registers 7

    .prologue
    .line 293
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/textengine/GLText;->getCharHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lfr/testudo/spacecorsair/textengine/GLText;->draw(Ljava/lang/String;FFF)V

    .line 294
    return-void
.end method

.method public drawTexture(IIF)V
    .registers 11

    .prologue
    .line 387
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->beginBatch(I)V

    .line 388
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v3, v3

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v4, v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureRgn:Lfr/testudo/spacecorsair/textengine/TextureRegion;

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->drawSprite(FFFFLfr/testudo/spacecorsair/textengine/TextureRegion;F)V

    .line 389
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->endBatch()V

    .line 390
    return-void
.end method

.method public end()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 250
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->batch:Lfr/testudo/spacecorsair/textengine/SpriteBatch;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->endBatch()V

    .line 251
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 252
    return-void
.end method

.method public getAscent()F
    .registers 3

    .prologue
    .line 373
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontAscent:F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCharHeight()F
    .registers 3

    .prologue
    .line 365
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charHeight:F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCharWidth(C)F
    .registers 4

    .prologue
    .line 358
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v0

    .line 359
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v0, v1, v0

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCharWidthMax()F
    .registers 3

    .prologue
    .line 362
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDescent()F
    .registers 3

    .prologue
    .line 376
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontDescent:F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .registers 3

    .prologue
    .line 379
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontHeight:F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLength(Ljava/lang/String;)F
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 343
    const/4 v1, 0x0

    move v2, v0

    :goto_7
    if-ge v1, v3, :cond_1a

    .line 344
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v4

    .line 345
    iget-object v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v4, v5, v4

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 347
    :cond_1a
    const/4 v1, 0x1

    if-le v3, v1, :cond_26

    add-int/lit8 v0, v3, -0x1

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->spaceX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    mul-float/2addr v0, v1

    :cond_26
    add-float/2addr v0, v2

    .line 348
    return v0
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    return v0
.end method

.method public getSpace()F
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->spaceX:F

    return v0
.end method

.method public load(Ljava/lang/String;III)Z
    .registers 14

    .prologue
    .line 109
    iput p3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    .line 110
    iput p4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadY:I

    .line 113
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->assets:Landroid/content/res/AssetManager;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 114
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    int-to-float v1, p2

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    const/4 v1, -0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 122
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontHeight:F

    .line 123
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontAscent:F

    .line 124
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontDescent:F

    .line 128
    const/4 v0, 0x2

    new-array v1, v0, [C

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charHeight:F

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    .line 130
    const/4 v0, 0x2

    new-array v3, v0, [F

    .line 131
    const/4 v2, 0x0

    .line 132
    const/16 v0, 0x0

    :goto_61
    const/16 v4, 0x72

    if-gt v0, v4, :cond_8a

    .line 133
    const/4 v4, 0x0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->glPut([CI)V

    .line 134
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v6, v1, v4, v5, v3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 135
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    const/4 v5, 0x0

    aget v5, v3, v5

    aput v5, v4, v2

    .line 136
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v4, v4, v2

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_84

    .line 137
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v4, v4, v2

    iput v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    .line 138
    :cond_84
    add-int/lit8 v2, v2, 0x1

    .line 132
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_61

    .line 140
    :cond_8a
    const/4 v0, 0x0

    const/16 v4, 0x20

    aput-char v4, v1, v0

    .line 141
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v6, v1, v0, v4, v3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v0, v2

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v0, v0, v2

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_ab

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidths:[F

    aget v0, v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    .line 145
    :cond_ab
    add-int/lit8 v0, v2, 0x1

    .line 148
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontHeight:F

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charHeight:F

    .line 151
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charWidthMax:F

    float-to-int v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    .line 152
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charHeight:F

    float-to-int v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadY:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    .line 153
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    if-le v0, v2, :cond_d6

    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    .line 154
    :goto_cd
    const/4 v2, 0x6

    if-lt v0, v2, :cond_d4

    const/16 v2, 0x200

    if-le v0, v2, :cond_d9

    .line 155
    :cond_d4
    const/4 v0, 0x0

    .line 229
    :goto_d5
    return v0

    .line 153
    :cond_d6
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    goto :goto_cd

    .line 160
    :cond_d9
    const/16 v2, 0x17

    if-gt v0, v2, :cond_148

    .line 161
    const/16 v0, 0x100

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    .line 170
    :goto_e1
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 171
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 176
    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    div-int/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->colCnt:I

    .line 177
    const/high16 v2, 0x42c00000    # 96.0f

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->colCnt:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->rowCnt:I

    .line 180
    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    int-to-float v4, v2

    .line 181
    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontDescent:F

    sub-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadY:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    .line 182
    const/16 v2, 0x0

    move v7, v2

    :goto_11c
    const/16 v2, 0x72

    if-gt v7, v2, :cond_15f

    .line 183
    const/4 v2, 0x0

    invoke-static {v1, v7}, Lfr/testudo/spacecorsair/mod/ModLang;->glPut([CI)V

    .line 184
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 185
    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    .line 186
    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_142

    .line 187
    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->fontPadX:I

    int-to-float v2, v2

    .line 188
    iget v3, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    .line 182
    :cond_142
    add-int/lit8 v3, v7, 0x1

    int-to-char v3, v3

    move v7, v3

    move v4, v2

    goto :goto_11c

    .line 162
    :cond_148
    const/16 v2, 0x28

    if-gt v0, v2, :cond_151

    .line 163
    const/16 v0, 0x200

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    goto :goto_e1

    .line 164
    :cond_151
    const/16 v2, 0x50

    if-gt v0, v2, :cond_15a

    .line 165
    const/16 v0, 0x400

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    goto :goto_e1

    .line 167
    :cond_15a
    const/16 v0, 0x800

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    goto :goto_e1

    .line 191
    :cond_15f
    const/4 v2, 0x0

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 192
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 196
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 197
    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureId:I

    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 202
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 203
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 204
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 207
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 208
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 211
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    const/4 v3, 0x0

    .line 215
    const/4 v4, 0x0

    .line 216
    const/4 v0, 0x0

    move v7, v0

    :goto_1c6
    const/16 v0, 0x74

    if-ge v7, v0, :cond_1fc

    .line 217
    iget-object v8, p0, Lfr/testudo/spacecorsair/textengine/GLText;->charRgn:[Lfr/testudo/spacecorsair/textengine/TextureRegion;

    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextureRegion;

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v2, v2

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    iget v6, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/textengine/TextureRegion;-><init>(FFFFFF)V

    aput-object v0, v8, v7

    .line 218
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 219
    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f7

    .line 220
    const/4 v0, 0x0

    .line 221
    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->cellHeight:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 216
    :cond_1f7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v3, v0

    goto :goto_1c6

    .line 226
    :cond_1fc
    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextureRegion;

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v5, v5

    iget v6, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureSize:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/textengine/TextureRegion;-><init>(FFFFFF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/GLText;->textureRgn:Lfr/testudo/spacecorsair/textengine/TextureRegion;

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_d5
.end method

.method public setScale(F)V
    .registers 2

    .prologue
    .line 302
    iput p1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    iput p1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    .line 303
    return-void
.end method

.method public setScale(FF)V
    .registers 3

    .prologue
    .line 305
    iput p1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleX:F

    .line 306
    iput p2, p0, Lfr/testudo/spacecorsair/textengine/GLText;->scaleY:F

    .line 307
    return-void
.end method

.method public setSpace(F)V
    .registers 2

    .prologue
    .line 325
    iput p1, p0, Lfr/testudo/spacecorsair/textengine/GLText;->spaceX:F

    .line 326
    return-void
.end method
