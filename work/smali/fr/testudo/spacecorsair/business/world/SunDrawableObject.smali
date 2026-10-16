.class public Lfr/testudo/spacecorsair/business/world/SunDrawableObject;
.super Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;
.source "SourceFile"


# static fields
.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x442f0000    # 700.0f

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;-><init>()V

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 43
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 15

    .prologue
    const-wide/16 v12, 0xff

    const-wide/16 v10, 0x9b

    const-wide/16 v8, 0x64

    const/high16 v6, 0x437f0000    # 255.0f

    const-wide/16 v4, 0x1770

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    rem-long/2addr v0, v2

    .line 27
    cmp-long v2, v0, v4

    if-gez v2, :cond_27

    .line 28
    mul-long v2, v0, v8

    div-long/2addr v2, v4

    add-long/2addr v2, v10

    long-to-float v2, v2

    div-float/2addr v2, v6

    iput v2, p0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->g:F

    .line 29
    mul-long/2addr v0, v8

    div-long/2addr v0, v4

    add-long/2addr v0, v10

    long-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->b:F

    .line 38
    :goto_24
    sget-object v0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0

    .line 31
    :cond_27
    sub-long v0, v4, v0

    .line 32
    mul-long v2, v0, v8

    div-long/2addr v2, v4

    add-long/2addr v2, v12

    long-to-float v2, v2

    div-float/2addr v2, v6

    iput v2, p0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->g:F

    .line 33
    mul-long/2addr v0, v8

    div-long/2addr v0, v4

    add-long/2addr v0, v12

    long-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->b:F

    goto :goto_24
.end method
