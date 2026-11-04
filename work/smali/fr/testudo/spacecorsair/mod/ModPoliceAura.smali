.class final Lfr/testudo/spacecorsair/mod/ModPoliceAura;
.super Ljava/lang/Object;
.source "ModPoliceAura.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;
    }
.end annotation


# static fields
.field static final DROP:Ljava/lang/String; = "polfx_drop"

.field static final HELION:I = 0x5

.field private static final HT:F = 0.001953125f

.field static final KRETARI:I = 0x2

.field static final MAX:I = 0x1a4

.field static final NONE:I = -0x1

.field static final REAVER:I = 0x1

.field static final SPARTAN:I = 0x0

.field static final T_CORE:I = 0x0

.field static final T_DROP:I = 0x3

.field static final T_FIRE:I = 0x5

.field static final T_GLOW:I = 0x1

.field static final T_SMOKE:I = 0x2

.field static final T_SPARK:I = 0x4

.field static final WARDEN:I = 0x6

.field private static final add:[Z

.field private static final auras:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;",
            ">;"
        }
    .end annotation
.end field

.field private static final ca:[F

.field private static final cb:[F

.field private static final cg:[F

.field private static final cr:[F

.field private static final drag:[F

.field private static lastMs:J

.field private static final life:[F

.field private static live:I

.field private static final max:[F

.field private static final pa:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final pb:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final px:[F

.field private static final py:[F

.field private static final rot:[F

.field private static final s0:[F

.field private static final s1:[F

.field private static final stretch:[F

.field private static final tex:[I

.field private static final tile:[I

.field private static final vrot:[F

.field private static final vx:[F

.field private static final vy:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x1a4

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->auras:Ljava/util/WeakHashMap;

    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 68
    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    .line 69
    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->max:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s0:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s1:[F

    .line 70
    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->ca:[F

    .line 71
    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->rot:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vrot:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->drag:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->stretch:[F

    .line 72
    new-array v0, v1, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tex:[I

    new-array v0, v1, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tile:[I

    .line 73
    new-array v0, v1, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static astern(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 156
    return-void
.end method

.method static clearAll()V
    .registers 2

    .prologue
    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->auras:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 258
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    .line 259
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->lastMs:J

    .line 260
    return-void
.end method

.method private static copy(II)V
    .registers 4

    .prologue
    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tex:[I

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tex:[I

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->max:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->max:[F

    aget v1, v1, p0

    aput v1, v0, p1

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s0:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s0:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s1:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s1:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->ca:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->ca:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v1, v1, p0

    aput-boolean v1, v0, p1

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->drag:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->drag:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->stretch:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->stretch:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->rot:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->rot:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vrot:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vrot:[F

    aget v1, v1, p0

    aput v1, v0, p1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tile:[I

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tile:[I

    aget v1, v1, p0

    aput v1, v0, p1

    .line 136
    return-void
.end method

.method private static edge(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 8

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->art:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->get(Ljava/lang/String;)[F

    move-result-object v1

    .line 141
    if-eqz v1, :cond_e

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_10

    :cond_e
    const/4 v0, 0x0

    .line 149
    :goto_f
    return v0

    .line 142
    :cond_10
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 143
    mul-int/lit8 v3, v2, 0x2

    aget v3, v1, v3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    mul-float/2addr v3, v4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    mul-float/2addr v2, v1

    .line 144
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v4, v3, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 145
    mul-float v1, v3, v3

    mul-float v4, v2, v2

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 146
    cmpg-float v4, v1, v0

    if-gez v4, :cond_66

    .line 147
    :goto_42
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    div-float/2addr v3, v0

    div-float v0, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v4, v3, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 149
    const/4 v0, 0x1

    goto :goto_f

    :cond_66
    move v0, v1

    goto :goto_42
.end method

.method private static halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V
    .registers 26

    .prologue
    .line 53
    const v1, 0x3b83126f    # 0.004f

    cmpg-float v1, p8, v1

    if-gtz v1, :cond_8

    .line 60
    :cond_7
    :goto_7
    return-void

    .line 54
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mfx_pa_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->art:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_7

    .line 56
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    const v3, 0x3fae147b    # 1.36f

    mul-float/2addr v2, v3

    mul-float v4, v2, p2

    .line 57
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    mul-float v5, v5, p3

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    mul-float v6, v6, p4

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 58
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 59
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p1

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p8

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v12, 0x3b000000    # 0.001953125f

    const/high16 v13, 0x3b000000    # 0.001953125f

    const v14, 0x3f7f8000

    const v15, 0x3f7f8000

    move v5, v4

    move/from16 v11, p9

    invoke-static/range {v1 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_7
.end method

.method static has(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->auras:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static put(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;IF)V
    .registers 6

    .prologue
    .line 38
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 43
    :cond_4
    :goto_4
    return-void

    .line 39
    :cond_5
    if-eqz p2, :cond_13

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v0, 0x2

    if-eq p2, v0, :cond_13

    const/4 v0, 0x5

    if-eq p2, v0, :cond_13

    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    .line 40
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mfx_pa_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 41
    const-string v0, "polfx_drop"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->auras:Ljava/util/WeakHashMap;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;

    invoke-direct {v1, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method static remove(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 253
    if-eqz p0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->auras:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_7
    return-void
.end method

.method private static spawn(IFFFFFFFFFFFZFF)V
    .registers 21

    .prologue
    .line 79
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    const/16 v1, 0x1a4

    if-ge v0, v1, :cond_77

    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    .line 80
    :goto_c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tex:[I

    aput p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aput p2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aput p3, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aput p4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    aput p5, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->max:[F

    aput p5, v1, v0

    .line 81
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s0:[F

    aput p6, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s1:[F

    aput p7, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aput p8, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aput p9, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aput p10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->ca:[F

    aput p11, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aput-boolean p12, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->drag:[F

    aput p13, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->stretch:[F

    aput p14, v1, v0

    .line 82
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->rot:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vrot:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tile:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 83
    return-void

    .line 79
    :cond_77
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x407a400000000000L    # 420.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_c
.end method

.method private static tick(J)V
    .registers 20

    .prologue
    .line 87
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->lastMs:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 130
    :cond_6
    return-void

    .line 88
    :cond_7
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->lastMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    const/high16 v0, 0x41800000    # 16.0f

    .line 89
    :goto_11
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->lastMs:J

    .line 90
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    .line 91
    const/4 v1, 0x0

    :goto_18
    sget v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    if-ge v1, v3, :cond_97

    .line 92
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    aget v4, v3, v1

    sub-float/2addr v4, v0

    aput v4, v3, v1

    .line 93
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4e

    .line 94
    sget v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    .line 95
    sget v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->copy(II)V

    .line 96
    add-int/lit8 v1, v1, -0x1

    .line 91
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 88
    :cond_3c
    const-wide/16 v0, 0x3c

    const-wide/16 v2, 0x0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->lastMs:J

    sub-long v4, p0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_11

    .line 99
    :cond_4e
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->drag:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_72

    .line 100
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->drag:[F

    aget v5, v5, v1

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 101
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aget v5, v4, v1

    mul-float/2addr v5, v3

    aput v5, v4, v1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aget v5, v4, v1

    mul-float/2addr v3, v5

    aput v3, v4, v1

    .line 103
    :cond_72
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v4, v3, v1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aget v5, v5, v1

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v4, v3, v1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aget v5, v5, v1

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->rot:[F

    aget v4, v3, v1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vrot:[F

    aget v5, v5, v1

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v1

    goto :goto_39

    .line 105
    :cond_97
    const/4 v0, 0x0

    move v15, v0

    :goto_99
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->live:I

    if-ge v15, v0, :cond_6

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->life:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->max:[F

    aget v2, v2, v15

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 107
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s0:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s1:[F

    aget v2, v2, v15

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->s0:[F

    aget v3, v3, v15

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float v3, v1, v2

    .line 108
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->ca:[F

    aget v1, v1, v15

    const v2, 0x3e19999a    # 0.15f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_137

    const v2, 0x3e19999a    # 0.15f

    div-float/2addr v0, v2

    :goto_c8
    mul-float v9, v1, v0

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->rot:[F

    aget v5, v0, v15

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->stretch:[F

    aget v0, v0, v15

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_207

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aget v0, v0, v15

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aget v1, v1, v15

    mul-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aget v2, v2, v15

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 112
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->stretch:[F

    aget v1, v1, v15

    mul-float/2addr v0, v1

    add-float v4, v3, v0

    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vy:[F

    aget v0, v0, v15

    float-to-double v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->vx:[F

    aget v2, v2, v15

    float-to-double v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v5, v0, v1

    .line 115
    :goto_10e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tex:[I

    aget v0, v0, v15

    packed-switch v0, :pswitch_data_20a

    .line 127
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v2, v2, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v6, v6, v15

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v7, v7, v15

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v8, v8, v15

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v10, v10, v15

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 105
    :cond_132
    :goto_132
    add-int/lit8 v0, v15, 0x1

    move v15, v0

    goto/16 :goto_99

    .line 108
    :cond_137
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    const v2, 0x3f59999a    # 0.85f

    div-float/2addr v0, v2

    goto :goto_c8

    .line 117
    :pswitch_140
    const-string v0, "polfx_drop"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_132

    .line 119
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tile:[I

    aget v1, v1, v15

    rem-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v13, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tile:[I

    aget v1, v1, v15

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v14, v1, v2

    .line 120
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v2, v2, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v6, v6, v15

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v7, v7, v15

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v8, v8, v15

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v10, v10, v15

    const v11, 0x3b83126f    # 0.004f

    add-float/2addr v11, v13

    const v12, 0x3b83126f    # 0.004f

    add-float/2addr v12, v14

    const v16, 0x3efdf3b6    # 0.496f

    add-float v13, v13, v16

    const v16, 0x3efdf3b6    # 0.496f

    add-float v14, v14, v16

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_132

    .line 123
    :pswitch_18c
    const-string v0, "fx_smoke"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v2, v2, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v6, v6, v15

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v7, v7, v15

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v8, v8, v15

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v10, v10, v15

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_132

    .line 124
    :pswitch_1aa
    const-string v0, "fx_fire"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v2, v2, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v6, v6, v15

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v7, v7, v15

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v8, v8, v15

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v10, v10, v15

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_132

    .line 125
    :pswitch_1c9
    const-string v0, "fx_glow"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v2, v2, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v6, v6, v15

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v7, v7, v15

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v8, v8, v15

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v10, v10, v15

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_132

    .line 126
    :pswitch_1e8
    const-string v0, "fx_spark"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->px:[F

    aget v1, v1, v15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->py:[F

    aget v2, v2, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cr:[F

    aget v6, v6, v15

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cg:[F

    aget v7, v7, v15

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->cb:[F

    aget v8, v8, v15

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->add:[Z

    aget-boolean v10, v10, v15

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_132

    :cond_207
    move v4, v3

    goto/16 :goto_10e

    .line 115
    :pswitch_data_20a
    .packed-switch 0x1
        :pswitch_1c9
        :pswitch_18c
        :pswitch_140
        :pswitch_1e8
        :pswitch_1aa
    .end packed-switch
.end method

.method static under(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 21

    .prologue
    .line 160
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->auras:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;

    .line 161
    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_13

    .line 250
    :cond_12
    :goto_12
    return-void

    .line 162
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 163
    invoke-static {v14, v15}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->tick(J)V

    .line 164
    const-wide/32 v4, 0x927c0

    rem-long v4, v14, v4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v16, v3, v4

    .line 165
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    move/from16 v17, v0

    .line 166
    iget-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->nextSpawn:J

    cmp-long v3, v14, v4

    if-ltz v3, :cond_b8

    const/4 v3, 0x1

    move v12, v3

    .line 167
    :goto_30
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->fac:I

    packed-switch v3, :pswitch_data_4f2

    :pswitch_35
    goto :goto_12

    .line 169
    :pswitch_36
    const/4 v3, 0x0

    move v13, v3

    :goto_38
    const/4 v3, 0x3

    if-ge v13, v3, :cond_bc

    .line 170
    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x41100000    # 9.0f

    mul-float v5, v5, v16

    int-to-float v6, v13

    const v7, 0x3fd9999a    # 1.7f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    const v5, 0x40466666    # 3.1f

    mul-float v5, v5, v16

    int-to-float v6, v13

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 171
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ccccccd    # 0.025f

    int-to-float v6, v13

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const v5, 0x3c03126f    # 0.008f

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float v6, v6, v16

    int-to-float v7, v13

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 172
    const v5, 0x3ba3d70a    # 0.005f

    const/high16 v6, 0x41300000    # 11.0f

    mul-float v6, v6, v16

    mul-int/lit8 v7, v13, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x3c9374bc    # 0.018f

    int-to-float v7, v13

    mul-float/2addr v6, v7

    const v7, 0x3c03126f    # 0.008f

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float v8, v8, v16

    int-to-float v9, v13

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 173
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f47ae14    # 0.78f

    const v9, 0x3ebd70a4    # 0.37f

    const v10, 0x3e8a3d71    # 0.27f

    mul-float/2addr v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 169
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_38

    .line 166
    :cond_b8
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_30

    .line 175
    :cond_bc
    const v4, 0x3f7c28f6    # 0.985f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3edc28f6    # 0.43f

    const v8, 0x3f2b851f    # 0.67f

    const/high16 v9, 0x3f800000    # 1.0f

    const v3, 0x3e23d70a    # 0.16f

    const v10, 0x3d23d70a    # 0.04f

    const v11, 0x40133333    # 2.3f

    mul-float v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    mul-float/2addr v10, v11

    add-float/2addr v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 176
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->edge(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 177
    const-wide/16 v4, 0x46

    add-long/2addr v4, v14

    iput-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->nextSpawn:J

    .line 178
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 179
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->astern(Lfr/testudo/spacecorsair/business/Element;)V

    .line 180
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, v8, v10

    if-gez v2, :cond_15e

    const/4 v2, 0x1

    move v12, v2

    .line 181
    :goto_117
    const v2, 0x3e6147ae    # 0.22f

    mul-float v7, v17, v2

    .line 182
    const/4 v2, 0x0

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v8, v7

    mul-float v5, v5, v17

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v9

    add-float/2addr v5, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v7, v8

    mul-float v6, v6, v17

    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    const v7, 0x443b8000    # 750.0f

    const v8, 0x3d23d70a    # 0.04f

    mul-float v8, v8, v17

    const v9, 0x3c23d70a    # 0.01f

    mul-float v9, v9, v17

    .line 183
    if-eqz v12, :cond_161

    const v10, 0x3ee66666    # 0.45f

    :goto_147
    if-eqz v12, :cond_164

    const v11, 0x3f2e147b    # 0.68f

    :goto_14c
    if-eqz v12, :cond_168

    const/high16 v12, 0x3f800000    # 1.0f

    :goto_150
    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const v15, 0x3f19999a    # 0.6f

    const/high16 v16, 0x3e800000    # 0.25f

    .line 182
    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->spawn(IFFFFFFFFFFFZFF)V

    goto/16 :goto_12

    .line 180
    :cond_15e
    const/4 v2, 0x0

    move v12, v2

    goto :goto_117

    .line 183
    :cond_161
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_147

    :cond_164
    const v11, 0x3f4ccccd    # 0.8f

    goto :goto_14c

    :cond_168
    const v12, 0x3ecccccd    # 0.4f

    goto :goto_150

    .line 189
    :pswitch_16c
    const/4 v3, 0x0

    move v13, v3

    :goto_16e
    const/4 v3, 0x3

    if-ge v13, v3, :cond_1f7

    .line 190
    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v5, v5, v16

    int-to-float v6, v13

    const v7, 0x40066666    # 2.1f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float v18, v3, v4

    .line 191
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3d3851ec    # 0.045f

    int-to-float v5, v13

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3c75c28f    # 0.015f

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float v5, v5, v16

    int-to-float v6, v13

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 192
    const v3, 0x3cf5c28f    # 0.03f

    int-to-float v5, v13

    mul-float/2addr v3, v5

    const v5, 0x3c23d70a    # 0.01f

    const v6, 0x40c9999a    # 6.3f

    mul-float v6, v6, v16

    int-to-float v7, v13

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v6, v3, v5

    .line 193
    const v3, 0x3bc49ba6    # 0.006f

    const/high16 v5, 0x41100000    # 9.0f

    mul-float v5, v5, v16

    int-to-float v7, v13

    add-float/2addr v5, v7

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v3

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3c23d70a    # 0.01f

    const v9, 0x3cf5c28f    # 0.03f

    const v3, 0x3f19999a    # 0.6f

    mul-float v10, v3, v18

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 194
    const/4 v5, 0x0

    const v7, 0x3eb33333    # 0.35f

    const v8, 0x3ca3d70a    # 0.02f

    const v9, 0x3cf5c28f    # 0.03f

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v10, v3, v18

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 189
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto/16 :goto_16e

    .line 196
    :cond_1f7
    const v3, 0x3f8ccccd    # 1.1f

    rem-float v3, v16, v3

    const v4, 0x3f8ccccd    # 1.1f

    div-float/2addr v3, v4

    .line 197
    const v4, 0x3d4ccccd    # 0.05f

    sub-float v4, v3, v4

    const v5, 0x3d4ccccd    # 0.05f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    const v8, 0x3e6147ae    # 0.22f

    sub-float/2addr v3, v8

    const v8, 0x3d4ccccd    # 0.05f

    div-float/2addr v3, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    neg-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 198
    const v4, 0x3f7d70a4    # 0.99f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f400000    # 0.75f

    const v8, 0x3d4ccccd    # 0.05f

    const v9, 0x3d75c28f    # 0.06f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3e6147ae    # 0.22f

    mul-float/2addr v3, v11

    add-float/2addr v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 199
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->edge(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 200
    const-wide/16 v4, 0x28

    add-long/2addr v4, v14

    iput-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->nextSpawn:J

    .line 201
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 202
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->astern(Lfr/testudo/spacecorsair/business/Element;)V

    .line 203
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    .line 204
    const-wide v10, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, v8, v10

    if-gez v2, :cond_2c6

    .line 205
    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    mul-float v7, v17, v2

    .line 206
    const/4 v2, 0x5

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v8, v7

    mul-float v5, v5, v17

    const v9, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v9

    add-float/2addr v5, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v7, v8

    mul-float v6, v6, v17

    const v8, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x442f0000    # 700.0f

    const v8, 0x3db851ec    # 0.09f

    mul-float v8, v8, v17

    const v9, 0x3e19999a    # 0.15f

    mul-float v9, v9, v17

    const v10, 0x3f59999a    # 0.85f

    const v11, 0x3d8f5c29    # 0.07f

    const v12, 0x3d75c28f    # 0.06f

    const/high16 v13, 0x3f400000    # 0.75f

    const/4 v14, 0x1

    const v15, 0x3e99999a    # 0.3f

    const v16, 0x3f4ccccd    # 0.8f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->spawn(IFFFFFFFFFFFZFF)V

    goto/16 :goto_12

    .line 208
    :cond_2c6
    const-wide v10, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v8, v10

    if-gez v2, :cond_30f

    .line 209
    const v2, 0x3e23d70a    # 0.16f

    mul-float v7, v17, v2

    .line 210
    const/4 v2, 0x2

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v8, v7

    mul-float v5, v5, v17

    const v9, 0x3db851ec    # 0.09f

    mul-float/2addr v5, v9

    add-float/2addr v5, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v7, v8

    mul-float v6, v6, v17

    const v8, 0x3db851ec    # 0.09f

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    const v7, 0x44898000    # 1100.0f

    const v8, 0x3da3d70a    # 0.08f

    mul-float v8, v8, v17

    const v9, 0x3e19999a    # 0.15f

    mul-float v9, v9, v17

    const v10, 0x3e23d70a    # 0.16f

    const/4 v11, 0x0

    const v12, 0x3ca3d70a    # 0.02f

    const/high16 v13, 0x3f400000    # 0.75f

    const/4 v14, 0x0

    const v15, 0x3ecccccd    # 0.4f

    const v16, 0x3eb33333    # 0.35f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->spawn(IFFFFFFFFFFFZFF)V

    goto/16 :goto_12

    .line 213
    :cond_30f
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    const v8, 0x3d75c28f    # 0.06f

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    mul-float v7, v17, v2

    .line 214
    const v2, 0x3cf5c28f    # 0.03f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v8, v8

    const v9, 0x3d0f5c29    # 0.035f

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    mul-float v8, v17, v2

    .line 215
    const/4 v2, 0x3

    mul-float/2addr v5, v7

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float v9, v9, v17

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v7, v7, v17

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    const/high16 v7, 0x44e10000    # 1800.0f

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v8

    const v10, 0x3f147ae1    # 0.58f

    const v11, 0x3cf5c28f    # 0.03f

    const v12, 0x3d75c28f    # 0.06f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const v15, 0x3f666666    # 0.9f

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->spawn(IFFFFFFFFFFFZFF)V

    goto/16 :goto_12

    .line 222
    :pswitch_362
    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x40066666    # 2.1f

    mul-float v5, v5, v16

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 223
    const v4, 0x3f79999a    # 0.975f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f63d70a    # 0.89f

    const v9, 0x3f170a3d    # 0.59f

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 224
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->edge(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 225
    const-wide/16 v4, 0x104

    add-long/2addr v4, v14

    iput-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->nextSpawn:J

    .line 226
    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float v5, v5, v17

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v6, v6, v17

    const v7, 0x3c23d70a    # 0.01f

    mul-float/2addr v6, v7

    const v7, 0x44228000    # 650.0f

    const v8, 0x3d4ccccd    # 0.05f

    mul-float v8, v8, v17

    const v9, 0x3c23d70a    # 0.01f

    mul-float v9, v9, v17

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f6b851f    # 0.92f

    const v12, 0x3f266666    # 0.65f

    const/high16 v13, 0x3f400000    # 0.75f

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->spawn(IFFFFFFFFFFFZFF)V

    goto/16 :goto_12

    .line 231
    :pswitch_3d8
    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3e19999a    # 0.15f

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, v16

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 232
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3c75c28f    # 0.015f

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, v16

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3edc28f6    # 0.43f

    const v8, 0x3f2b851f    # 0.67f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 233
    const v3, 0x4019999a    # 2.4f

    rem-float v3, v16, v3

    const v4, 0x4019999a    # 2.4f

    div-float/2addr v3, v4

    .line 234
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e051eb8    # 0.13f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v3, v11, v3

    mul-float/2addr v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    goto/16 :goto_12

    .line 238
    :pswitch_44e
    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3e19999a    # 0.15f

    const v5, 0x3fa66666    # 1.3f

    mul-float v5, v5, v16

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float v13, v3, v4

    .line 239
    const v3, 0x3f828f5c    # 1.02f

    const v4, 0x3ca3d70a    # 0.02f

    const v5, 0x3f666666    # 0.9f

    mul-float v5, v5, v16

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    const/4 v5, 0x0

    const v6, 0x3c23d70a    # 0.01f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3cf5c28f    # 0.03f

    const v9, 0x3e23d70a    # 0.16f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v10, v3, v13

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 240
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3e3851ec    # 0.18f

    const v9, 0x3f266666    # 0.65f

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v10, v3, v13

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->halo(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;FFFFFFFZ)V

    .line 241
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->edge(Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 242
    const-wide/16 v4, 0xb4

    add-long/2addr v4, v14

    iput-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->nextSpawn:J

    .line 243
    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float v5, v5, v17

    const v6, 0x3cf5c28f    # 0.03f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v6, v6, v17

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44c80000    # 1600.0f

    const v8, 0x3d23d70a    # 0.04f

    mul-float v8, v8, v17

    const v9, 0x3d8f5c29    # 0.07f

    mul-float v9, v9, v17

    const v10, 0x3ee66666    # 0.45f

    const v11, 0x3e4ccccd    # 0.2f

    const v12, 0x3f333333    # 0.7f

    const v13, 0x3ee66666    # 0.45f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->spawn(IFFFFFFFFFFFZFF)V

    goto/16 :goto_12

    .line 167
    :pswitch_data_4f2
    .packed-switch 0x0
        :pswitch_36
        :pswitch_16c
        :pswitch_44e
        :pswitch_35
        :pswitch_35
        :pswitch_362
        :pswitch_3d8
    .end packed-switch
.end method
