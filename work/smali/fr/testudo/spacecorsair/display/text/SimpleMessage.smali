.class public Lfr/testudo/spacecorsair/display/text/SimpleMessage;
.super Lfr/testudo/spacecorsair/display/text/TextMessage;
.source "SourceFile"


# static fields
.field public static final TELEPORT_MSG:Ljava/lang/String;

.field public static lifetime:I


# instance fields
.field public curLifetime:I

.field public size:Lfr/testudo/spacecorsair/textengine/TextSize;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07038e

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->TELEPORT_MSG:Ljava/lang/String;

    .line 21
    const/16 v0, 0xbb8

    sput v0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->lifetime:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/text/TextMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/display/text/TextMessage;->doPhysic(J)V

    .line 117
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->curLifetime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->curLifetime:I

    .line 118
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->curLifetime:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1f

    .line 119
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->curLifetime:I

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->a:F

    .line 121
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->curLifetime:I

    if-gtz v0, :cond_1f

    .line 122
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->remove()V

    .line 125
    :cond_1f
    return-void
.end method

.method public init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 29
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/display/text/TextMessage;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/text/TextMessage;

    .line 30
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v4

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v4

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    iput v5, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 33
    const v0, 0x3f63d70a    # 0.89f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 34
    const v0, 0x3e947ae1    # 0.29f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 35
    iput v5, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->a:F

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 38
    sget v0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->lifetime:I

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->curLifetime:I

    .line 39
    return-object p0
.end method

.method public initAgility(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->AGILITY_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 94
    const v0, 0x3edadadb

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 95
    iput v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 96
    iput v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 99
    return-object p0
.end method

.method public initCrit(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 10

    .prologue
    .line 43
    const-string v0, "crit"

    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 45
    const v0, 0x3f5ededf

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 46
    const v0, 0x3e74f4f5

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 47
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 49
    return-object p0
.end method

.method public initDamage(Lfr/testudo/spacecorsair/business/Element;I)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 11

    .prologue
    const v2, 0x3e40c0c1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 55
    iput v2, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 56
    iput v2, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x4013333340000000L    # -0.8999999761581421

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3ffcccccc0000000L    # 1.7999999523162842

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 59
    return-object p0
.end method

.method public initPoison(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 10

    .prologue
    const v1, 0x3e40c0c1

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->POISON_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 65
    iput v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 66
    iput v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 67
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 69
    return-object p0
.end method

.method public initReload(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 10

    .prologue
    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->RELOAD_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 76
    const v0, 0x3f5cdcdd

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 79
    return-object p0
.end method

.method public initSnare(Lfr/testudo/spacecorsair/business/Element;Z)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 11

    .prologue
    .line 83
    if-eqz p2, :cond_2c

    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ROOT_MESSAGE:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 84
    const v0, 0x3f31b1b2

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 86
    const v0, 0x3f078788

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 89
    return-object p0

    .line 83
    :cond_2c
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->SNARE_MESSAGE:Ljava/lang/String;

    goto :goto_4
.end method

.method public initTeleport(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;
    .registers 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->TELEPORT_MSG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    .line 104
    const v0, 0x3edadadb

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    .line 105
    iput v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    .line 106
    iput v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 109
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->value:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->r:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->g:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->b:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->a:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->size:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 132
    return-void
.end method
