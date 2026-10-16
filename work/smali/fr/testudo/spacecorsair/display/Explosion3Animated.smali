.class public Lfr/testudo/spacecorsair/display/Explosion3Animated;
.super Lfr/testudo/spacecorsair/display/ExplosionAnim;
.source "SourceFile"


# static fields
.field public static animTimeReference:[J

.field public static sprites:[Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;-><init>()V

    .line 37
    return-void
.end method

.method public static load([Lfr/testudo/spacecorsair/display/Texture;[JLfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 7

    .prologue
    .line 23
    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_c

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Animation texture array size and time array size are different !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    array-length v0, p0

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/display/Explosion3Animated;->sprites:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 27
    const/4 v0, 0x0

    :goto_12
    array-length v1, p0

    if-ge v0, v1, :cond_23

    .line 28
    sget-object v1, Lfr/testudo/spacecorsair/display/Explosion3Animated;->sprites:[Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    aget-object v3, p0, v0

    invoke-direct {v2, p2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 31
    :cond_23
    sput-object p1, Lfr/testudo/spacecorsair/display/Explosion3Animated;->animTimeReference:[J

    .line 32
    return-void
.end method


# virtual methods
.method public getDrawables()[Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/display/Explosion3Animated;->sprites:[Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getRefAnimTime()[J
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/display/Explosion3Animated;->animTimeReference:[J

    return-object v0
.end method
