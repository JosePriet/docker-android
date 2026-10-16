.class public final Lfr/testudo/spacecorsair/mod/ModFx;
.super Ljava/lang/Object;
.source "ModFx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModFx$Sprite;
    }
.end annotation


# static fields
.field static final BOOM_COLS:I = 0x8

.field static final BOOM_FRAMES:I = 0x40

.field static final BOOM_MAX:I = 0x18

.field static final BOOM_TEX:Ljava/lang/String; = "vfx_explosion_sheet"

.field public static final EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final MAX:I = 0x168

.field static final PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final QUAD:Ljava/nio/FloatBuffer;

.field private static final RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field public static final TEXTURES:[Ljava/lang/String;

.field private static final UV:Ljava/nio/FloatBuffer;

.field private static arrowTex:Lfr/testudo/spacecorsair/display/Texture;

.field private static arrows:[Lfr/testudo/spacecorsair/display/Drawable;

.field private static final at:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final bage:[F

.field static final bb:[F

.field static final bdur:[F

.field static final bg:[F

.field static booms:I

.field static final br:[F

.field static final brot:[F

.field static final bsize:[F

.field public static budget:I

.field static final bx:[F

.field static final by:[F

.field static flatNext:Z

.field private static final la:Lfr/testudo/spacecorsair/engine/Vector2;

.field static last:I

.field private static final lb:Lfr/testudo/spacecorsair/engine/Vector2;

.field static live:I

.field static final pa:[F

.field static final padd:[Z

.field static final pb:[F

.field static final pdrag:[F

.field static final pg:[F

.field static final plife:[F

.field static final pmax:[F

.field static final pover:[Z

.field static final pr:[F

.field static final prot:[F

.field static final ps0:[F

.field static final ps1:[F

.field static final pstretch:[F

.field static final ptex:[Ljava/lang/String;

.field private static final pumpAt:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final pvrot:[F

.field static final pvx:[F

.field static final pvy:[F

.field static final px:[F

.field static final py:[F

.field static relative:Z

.field private static ringPos:I

.field static final v:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/16 v5, 0x18

    const/16 v4, 0x168

    .line 22
    new-array v0, v7, [F

    fill-array-data v0, :array_166

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFx;->buf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->QUAD:Ljava/nio/FloatBuffer;

    .line 23
    new-array v0, v6, [F

    fill-array-data v0, :array_182

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFx;->buf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->UV:Ljava/nio/FloatBuffer;

    .line 120
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 123
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 124
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pumpAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v2, Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/display/Texture;-><init>()V

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 130
    const/16 v0, 0xc80

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move v0, v1

    .line 133
    :goto_44
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v2, v2

    if-ge v0, v2, :cond_55

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 151
    :cond_55
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 248
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->la:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 284
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "fx_glow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fx_core"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fx_ring"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fx_shock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fx_smoke"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fx_fire"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fx_spark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fx_plus"

    aput-object v2, v0, v1

    const-string v1, "fx_hex"

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const-string v2, "fx_flame"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fx_beam"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fx_beamcore"

    aput-object v2, v0, v1

    const-string v1, "fx_bolt"

    aput-object v1, v0, v7

    const/16 v1, 0xd

    const-string v2, "fx_streak"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fx_scorch"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fx_crack"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fx_lance"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "vfx_shield_bubble"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "vfx_shield_hit"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "vfx_explosion_sheet"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "vfx_nova_ring"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "vfx_doomsday_charge"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "vfx_lance_core"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->TEXTURES:[Ljava/lang/String;

    .line 295
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ptex:[Ljava/lang/String;

    .line 296
    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    .line 297
    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pmax:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ps0:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ps1:[F

    .line 298
    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pr:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pg:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pb:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pa:[F

    .line 299
    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvrot:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    .line 300
    new-array v0, v4, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->padd:[Z

    new-array v0, v4, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pover:[Z

    .line 336
    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bx:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->by:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bsize:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->brot:[F

    .line 337
    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bdur:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->br:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bg:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bb:[F

    .line 421
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 22
    nop

    :array_166
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    .line 23
    :array_182
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/FloatBuffer;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->UV:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$100([F)Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFx;->buf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/nio/FloatBuffer;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->QUAD:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    const/16 v2, 0x800

    .line 269
    float-to-int v1, p1

    .line 270
    if-ltz v1, :cond_7

    if-lt v1, v2, :cond_12

    :cond_7
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, p1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 280
    :cond_11
    :goto_11
    return-object v0

    .line 271
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->arrows:[Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->arrowTex:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v0, p0, :cond_20

    .line 272
    :cond_1a
    new-array v0, v2, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->arrows:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 273
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModFx;->arrowTex:Lfr/testudo/spacecorsair/display/Texture;

    .line 275
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->arrows:[Lfr/testudo/spacecorsair/display/Drawable;

    aget-object v0, v0, v1

    .line 276
    if-nez v0, :cond_11

    .line 277
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v2, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 278
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->arrows:[Lfr/testudo/spacecorsair/display/Drawable;

    aput-object v0, v2, v1

    goto :goto_11
.end method

.method public static boom(FFFFFFF)V
    .registers 13

    .prologue
    .line 345
    const-string v0, "vfx_explosion_sheet"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFx;->tex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-nez v0, :cond_9

    .line 349
    :goto_8
    return-void

    .line 346
    :cond_9
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4c

    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    .line 347
    :goto_15
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bx:[F

    aput p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->by:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bsize:[F

    aput p2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->brot:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    .line 348
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bdur:[F

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->br:[F

    aput p4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bg:[F

    aput p5, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bb:[F

    aput p6, v1, v0

    goto :goto_8

    .line 346
    :cond_4c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_15
.end method

.method private static buf([F)Ljava/nio/FloatBuffer;
    .registers 3

    .prologue
    .line 26
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    return-object v0
.end method

.method public static clear()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 416
    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    .line 417
    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    .line 418
    return-void
.end method

.method private static copy(II)V
    .registers 4

    .prologue
    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ptex:[Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ptex:[Ljava/lang/String;

    aget-object v1, v1, p0

    aput-object v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aget v1, v1, p0

    aput v1, v0, p1

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pmax:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pmax:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ps0:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ps0:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ps1:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ps1:[F

    aget v1, v1, p0

    aput v1, v0, p1

    .line 385
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pr:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pr:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pg:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pg:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pb:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pb:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pa:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pa:[F

    aget v1, v1, p0

    aput v1, v0, p1

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvrot:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvrot:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    aget v1, v1, p0

    aput v1, v0, p1

    .line 387
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->padd:[Z

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->padd:[Z

    aget-boolean v1, v1, p0

    aput-boolean v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pover:[Z

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pover:[Z

    aget-boolean v1, v1, p0

    aput-boolean v1, v0, p1

    .line 388
    return-void
.end method

.method public static drawParticles(Z)V
    .registers 15

    .prologue
    .line 392
    if-nez p0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pumpAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V

    .line 393
    :cond_f
    if-eqz p0, :cond_56

    .line 394
    const/4 v0, 0x0

    move v13, v0

    :goto_13
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    if-ge v13, v0, :cond_56

    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    aget v0, v0, v13

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->bdur:[F

    aget v1, v1, v13

    div-float/2addr v0, v1

    .line 396
    const/16 v1, 0x3f

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 397
    const-string v0, "vfx_explosion_sheet"

    const/16 v1, 0x8

    const/16 v2, 0x8

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bx:[F

    aget v4, v4, v13

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFx;->by:[F

    aget v5, v5, v13

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFx;->bsize:[F

    aget v6, v6, v13

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFx;->brot:[F

    aget v7, v7, v13

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModFx;->br:[F

    aget v8, v8, v13

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModFx;->bg:[F

    aget v9, v9, v13

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModFx;->bb:[F

    aget v10, v10, v13

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-static/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->flip(Ljava/lang/String;IIIFFFFFFFFZ)V

    .line 394
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_13

    .line 400
    :cond_56
    const/4 v0, 0x0

    move v11, v0

    :goto_58
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    if-ge v11, v0, :cond_122

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pover:[Z

    aget-boolean v0, v0, v11

    if-eq v0, p0, :cond_66

    .line 400
    :goto_62
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_58

    .line 402
    :cond_66
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    aget v1, v1, v11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->pmax:[F

    aget v2, v2, v11

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 403
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ps0:[F

    aget v1, v1, v11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->ps1:[F

    aget v2, v2, v11

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->ps0:[F

    aget v3, v3, v11

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float v3, v1, v2

    .line 404
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pa:[F

    aget v1, v1, v11

    const v2, 0x3e19999a    # 0.15f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_f3

    const v2, 0x3e19999a    # 0.15f

    div-float/2addr v0, v2

    :goto_91
    mul-float v9, v1, v0

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    aget v0, v0, v11

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fc

    .line 406
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aget v0, v0, v11

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aget v1, v1, v11

    mul-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aget v1, v1, v11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v4, v0

    .line 407
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aget v0, v0, v11

    float-to-double v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aget v2, v2, v11

    float-to-double v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v5, v0, v1

    .line 408
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ptex:[Ljava/lang/String;

    aget-object v0, v0, v11

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    aget v1, v1, v11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    aget v2, v2, v11

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    aget v6, v6, v11

    mul-float/2addr v4, v6

    add-float/2addr v4, v3

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFx;->pr:[F

    aget v6, v6, v11

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFx;->pg:[F

    aget v7, v7, v11

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModFx;->pb:[F

    aget v8, v8, v11

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModFx;->padd:[Z

    aget-boolean v10, v10, v11

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_62

    .line 404
    :cond_f3
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    const v2, 0x3f59999a    # 0.85f

    div-float/2addr v0, v2

    goto :goto_91

    .line 410
    :cond_fc
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->ptex:[Ljava/lang/String;

    aget-object v0, v0, v11

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    aget v1, v1, v11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    aget v2, v2, v11

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    aget v5, v4, v11

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->pr:[F

    aget v6, v4, v11

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->pg:[F

    aget v7, v4, v11

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->pb:[F

    aget v8, v4, v11

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->padd:[Z

    aget-boolean v10, v4, v11

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_62

    .line 413
    :cond_122
    return-void
.end method

.method public static fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;
    .registers 6

    .prologue
    .line 138
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    .line 139
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFx;->tex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 140
    iput p1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 141
    iput p2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 142
    iput-boolean p3, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 143
    return-object v0
.end method

.method public static flip(Ljava/lang/String;IIIFFFFFFFFZ)V
    .registers 30

    .prologue
    .line 178
    mul-int v1, p1, p2

    .line 179
    if-ltz p3, :cond_8

    move/from16 v0, p3

    if-lt v0, v1, :cond_9

    .line 183
    :cond_8
    :goto_8
    return-void

    .line 180
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 181
    rem-int v3, p3, p1

    div-int v4, p3, p1

    .line 182
    int-to-float v5, v3

    mul-float v12, v5, v1

    int-to-float v5, v4

    mul-float v13, v5, v2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float v14, v3, v1

    add-int/lit8 v1, v4, 0x1

    int-to-float v1, v1

    mul-float v15, v1, v2

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-static/range {v1 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprUV(Ljava/lang/String;FFFFFFFFFZFFFFZ)V

    goto :goto_8
.end method

.method public static flipR(Ljava/lang/String;IIIFFFFFFFFZ)V
    .registers 29

    .prologue
    .line 212
    mul-int v1, p1, p2

    .line 213
    if-ltz p3, :cond_8

    move/from16 v0, p3

    if-lt v0, v1, :cond_9

    .line 219
    :cond_8
    :goto_8
    return-void

    .line 214
    :cond_9
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_8

    .line 216
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 217
    rem-int v4, p3, p1

    div-int v5, p3, p1

    .line 218
    int-to-float v6, v4

    mul-float v12, v6, v2

    int-to-float v6, v5

    mul-float v13, v6, v3

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float v14, v4, v2

    add-int/lit8 v2, v5, 0x1

    int-to-float v2, v2

    mul-float v15, v2, v3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-static/range {v1 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_8
.end method

.method public static lastDrag(F)V
    .registers 3

    .prologue
    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModFx;->last:I

    aput p0, v0, v1

    return-void
.end method

.method public static lastSpin(FF)V
    .registers 4

    .prologue
    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModFx;->last:I

    aput p0, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pvrot:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModFx;->last:I

    aput p1, v0, v1

    return-void
.end method

.method public static lastStretch(F)V
    .registers 3

    .prologue
    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModFx;->last:I

    aput p0, v0, v1

    return-void
.end method

.method public static line(FFFFFFFF)V
    .registers 16

    .prologue
    .line 252
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    if-gtz v0, :cond_5

    .line 257
    :goto_4
    return-void

    .line 253
    :cond_5
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->la:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->la:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    move v4, p7

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    goto :goto_4
.end method

.method public static local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    .line 425
    invoke-virtual {p4, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 426
    return-object p4
.end method

.method public static part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    .registers 20

    .prologue
    .line 310
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    const/16 v1, 0x168

    if-ge v0, v1, :cond_73

    .line 311
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    .line 316
    :goto_c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ptex:[Ljava/lang/String;

    aput-object p0, v1, v0

    .line 317
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    aput p2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aput p3, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aput p4, v1, v0

    .line 318
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    aput p5, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pmax:[F

    aput p5, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ps0:[F

    aput p6, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->ps1:[F

    aput p7, v1, v0

    .line 319
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pr:[F

    aput p8, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pg:[F

    aput p9, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pb:[F

    aput p10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pa:[F

    aput p11, v1, v0

    .line 320
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pvrot:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    .line 321
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pstretch:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 322
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->padd:[Z

    aput-boolean p12, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->pover:[Z

    aput-boolean p13, v1, v0

    .line 323
    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->last:I

    .line 324
    return-void

    .line 314
    :cond_73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_c
.end method

.method private static queue(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;FFFFFFFFFZ)V
    .registers 22

    .prologue
    .line 232
    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 233
    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 234
    move/from16 v0, p10

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 235
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p9

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 237
    return-void
.end method

.method public static rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 148
    if-eqz p0, :cond_8

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFx;->tex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 149
    :cond_8
    return-void
.end method

.method static rnd(FF)F
    .registers 4

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static spr(Ljava/lang/String;FFFFFFFFFZ)V
    .registers 23

    .prologue
    .line 158
    move/from16 v0, p9

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFx;->take(Ljava/lang/String;F)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v1

    .line 159
    if-nez v1, :cond_9

    .line 163
    :goto_8
    return-void

    .line 160
    :cond_9
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->fullUV()V

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 162
    invoke-static/range {v1 .. v11}, Lfr/testudo/spacecorsair/mod/ModFx;->queue(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;FFFFFFFFFZ)V

    goto :goto_8
.end method

.method public static sprR(Ljava/lang/String;FFFFFFFFFZ)V
    .registers 26

    .prologue
    .line 206
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_23

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 208
    :cond_23
    return-void
.end method

.method public static sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V
    .registers 27

    .prologue
    .line 188
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 189
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 190
    if-eqz p0, :cond_12

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p9, v1

    if-lez v1, :cond_12

    sget v1, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    if-gtz v1, :cond_13

    .line 199
    :cond_12
    :goto_12
    return-void

    .line 191
    :cond_13
    sget v1, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 192
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sget v3, Lfr/testudo/spacecorsair/mod/ModFx;->ringPos:I

    aget-object v1, v1, v3

    .line 193
    sget v3, Lfr/testudo/spacecorsair/mod/ModFx;->ringPos:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v4, v4

    rem-int/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModFx;->ringPos:I

    .line 194
    iput-object p0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 195
    move/from16 v0, p11

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    move/from16 v0, p12

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move/from16 v0, p13

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move/from16 v0, p14

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 196
    const/4 v3, 0x0

    iput-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 197
    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 198
    invoke-static/range {v1 .. v11}, Lfr/testudo/spacecorsair/mod/ModFx;->queue(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;FFFFFFFFFZ)V

    goto :goto_12
.end method

.method public static sprUV(Ljava/lang/String;FFFFFFFFFZFFFFZ)V
    .registers 28

    .prologue
    .line 168
    move/from16 v0, p9

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFx;->take(Ljava/lang/String;F)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v1

    .line 169
    if-nez v1, :cond_9

    .line 174
    :goto_8
    return-void

    .line 170
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 171
    move/from16 v0, p11

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    move/from16 v0, p12

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move/from16 v0, p13

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move/from16 v0, p14

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 172
    move/from16 v0, p15

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 173
    invoke-static/range {v1 .. v11}, Lfr/testudo/spacecorsair/mod/ModFx;->queue(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;FFFFFFFFFZ)V

    goto :goto_8
.end method

.method public static strip(Ljava/lang/String;FFFFFFFFFZ)V
    .registers 22

    .prologue
    .line 241
    sub-float v0, p3, p1

    sub-float v1, p4, p2

    .line 242
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v4, v2

    .line 243
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_16

    .line 246
    :goto_15
    return-void

    .line 244
    :cond_16
    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v5, v0, v1

    .line 245
    add-float v0, p1, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    add-float v0, p2, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    move-object v0, p0

    move/from16 v3, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_15
.end method

.method private static take(Ljava/lang/String;F)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;
    .registers 6

    .prologue
    .line 222
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFx;->tex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_11

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_11

    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    if-gtz v0, :cond_13

    :cond_11
    const/4 v0, 0x0

    .line 228
    :goto_12
    return-object v0

    .line 224
    :cond_13
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sget v2, Lfr/testudo/spacecorsair/mod/ModFx;->ringPos:I

    aget-object v0, v0, v2

    .line 226
    sget v2, Lfr/testudo/spacecorsair/mod/ModFx;->ringPos:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->RING:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v3, v3

    rem-int/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModFx;->ringPos:I

    .line 227
    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    goto :goto_12
.end method

.method static tex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 2

    .prologue
    .line 290
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static update(J)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 353
    long-to-float v0, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, v0, v2

    move v0, v1

    .line 354
    :goto_8
    sget v3, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    if-ge v0, v3, :cond_85

    .line 355
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    aget v4, v3, v0

    long-to-float v5, p0

    add-float/2addr v4, v5

    aput v4, v3, v0

    .line 356
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    aget v3, v3, v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bdur:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_82

    .line 357
    sget v3, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    .line 358
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bx:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bx:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->by:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->by:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bsize:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bsize:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->brot:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->brot:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bage:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    .line 359
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bdur:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bdur:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->br:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->br:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bg:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bg:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->bb:[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->bb:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModFx;->booms:I

    aget v4, v4, v5

    aput v4, v3, v0

    .line 360
    add-int/lit8 v0, v0, -0x1

    .line 354
    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 363
    :cond_85
    :goto_85
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    if-ge v1, v0, :cond_f0

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    aget v3, v0, v1

    long-to-float v4, p0

    sub-float/2addr v3, v4

    aput v3, v0, v1

    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->plife:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_a9

    .line 366
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    .line 367
    sget v0, Lfr/testudo/spacecorsair/mod/ModFx;->live:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFx;->copy(II)V

    .line 368
    add-int/lit8 v1, v1, -0x1

    .line 363
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 371
    :cond_a9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v6

    if-lez v0, :cond_cb

    .line 372
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->pdrag:[F

    aget v3, v3, v1

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 373
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aget v4, v3, v1

    mul-float/2addr v4, v0

    aput v4, v3, v1

    .line 374
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aget v4, v3, v1

    mul-float/2addr v0, v4

    aput v0, v3, v1

    .line 376
    :cond_cb
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->px:[F

    aget v3, v0, v1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->pvx:[F

    aget v4, v4, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->py:[F

    aget v3, v0, v1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->pvy:[F

    aget v4, v4, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 378
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->prot:[F

    aget v3, v0, v1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->pvrot:[F

    aget v4, v4, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, v0, v1

    goto :goto_a6

    .line 380
    :cond_f0
    return-void
.end method
