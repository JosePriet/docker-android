.class public Lfr/testudo/spacecorsair/display/Fleche;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field glow:Z

.field glowFrequency:I

.field glowcount:I

.field mingGlow:F

.field sens:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_256:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/display/Fleche;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 23
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/display/Fleche;->glow:Z

    .line 24
    iput v1, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    .line 26
    const/16 v0, 0x4b0

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowFrequency:I

    .line 27
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->mingGlow:F

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->sens:I

    .line 46
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/display/Fleche;->doesColideWithOthers:Z

    .line 48
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 65
    sput-object p0, Lfr/testudo/spacecorsair/display/FixParticule;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 66
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/Fleche;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Fleche;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 67
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 73
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glow:Z

    if-eqz v0, :cond_43

    .line 74
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    int-to-long v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/display/Fleche;->sens:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    .line 75
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    iget v1, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowFrequency:I

    if-lt v0, v1, :cond_24

    .line 76
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    .line 77
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->sens:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->sens:I

    .line 79
    :cond_24
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    if-gtz v0, :cond_31

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    .line 81
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->sens:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->sens:I

    .line 83
    :cond_31
    iget v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->mingGlow:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/Fleche;->mingGlow:F

    sub-float v1, v4, v1

    iget v2, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowFrequency:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->a:F

    .line 90
    :goto_42
    return-void

    .line 87
    :cond_43
    iput v4, p0, Lfr/testudo/spacecorsair/display/Fleche;->a:F

    goto :goto_42
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/display/Fleche;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/display/Fleche;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/display/Fleche;
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/display/Fleche;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 52
    int-to-float v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->spin:F

    .line 53
    return-object p0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->removed:Z

    if-nez v0, :cond_12

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->removed:Z

    .line 98
    :cond_12
    return-void
.end method

.method public withGlow()Lfr/testudo/spacecorsair/display/Fleche;
    .registers 5

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glow:Z

    .line 58
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowFrequency:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/Fleche;->glowcount:I

    .line 59
    return-object p0
.end method
