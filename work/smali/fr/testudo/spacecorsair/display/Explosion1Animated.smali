.class public Lfr/testudo/spacecorsair/display/Explosion1Animated;
.super Lfr/testudo/spacecorsair/display/ExplosionAnim;
.source "SourceFile"


# static fields
.field public static animTimeReference:[J

.field public static sprites:[Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;-><init>()V

    .line 30
    return-void
.end method

.method public static load([Lfr/testudo/spacecorsair/display/Texture;[JLfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 7

    .prologue
    .line 16
    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_c

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Animation texture array size and time array size are different !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_c
    array-length v0, p0

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/display/Explosion1Animated;->sprites:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 20
    const/4 v0, 0x0

    :goto_12
    array-length v1, p0

    if-ge v0, v1, :cond_23

    .line 21
    sget-object v1, Lfr/testudo/spacecorsair/display/Explosion1Animated;->sprites:[Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    aget-object v3, p0, v0

    invoke-direct {v2, p2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 24
    :cond_23
    sput-object p1, Lfr/testudo/spacecorsair/display/Explosion1Animated;->animTimeReference:[J

    .line 25
    return-void
.end method


# virtual methods
.method public getDrawables()[Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/display/Explosion1Animated;->sprites:[Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getRefAnimTime()[J
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/display/Explosion1Animated;->animTimeReference:[J

    return-object v0
.end method
