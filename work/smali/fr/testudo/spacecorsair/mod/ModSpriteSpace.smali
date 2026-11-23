.class final Lfr/testudo/spacecorsair/mod/ModSpriteSpace;
.super Ljava/lang/Object;
.source "ModSpriteSpace.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static local(FF)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 8
    add-float v0, p0, v2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    return v0
.end method
