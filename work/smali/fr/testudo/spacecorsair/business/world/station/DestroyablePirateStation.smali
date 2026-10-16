.class public Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
.super Lfr/testudo/spacecorsair/business/world/station/MissionStation;
.source "SourceFile"


# static fields
.field protected static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final timeBetweenExplodesInMilli:I = 0xc8

.field public static final timeDestroyInMilli:I = 0x1770


# instance fields
.field public curNextExpldeTime:I

.field public isDestroyAnimation:Z

.field public lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field public remainingDestroytime:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/high16 v2, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 198
    const/4 v0, 0x2

    new-array v6, v0, [Lfr/testudo/spacecorsair/engine/PopPoint;

    const/4 v7, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    const/high16 v1, -0x3c6a0000    # -300.0f

    const/high16 v3, -0x3ed00000    # -11.0f

    const/high16 v5, -0x3ccc0000    # -180.0f

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(FFFFF)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(FFFFF)V

    aput-object v0, v6, v7

    sput-object v6, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    .line 57
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->remainingDestroytime:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->curNextExpldeTime:I

    .line 58
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 59
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 60
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 62
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 40
    sput-object p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 43
    return-void
.end method


# virtual methods
.method public addRandomExplode()V
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 168
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v2, v2

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 170
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v2, v2

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 172
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 173
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 95
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeInPourc:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 98
    :cond_12
    return-void
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->doPhysic(J)V

    .line 105
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isDestroyAnimation:Z

    if-eqz v0, :cond_2a

    .line 106
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->curNextExpldeTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->curNextExpldeTime:I

    .line 107
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->remainingDestroytime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->remainingDestroytime:I

    .line 108
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->remainingDestroytime:I

    if-gtz v0, :cond_1f

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isDestroyAnimation:Z

    .line 110
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->realDestroy()V

    .line 112
    :cond_1f
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->curNextExpldeTime:I

    if-gez v0, :cond_2a

    .line 113
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->addRandomExplode()V

    .line 114
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->curNextExpldeTime:I

    .line 117
    :cond_2a
    return-void
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->mapHidden:Z

    if-nez v0, :cond_7

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 52
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public initDestroyStation(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;I)Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    .registers 8

    .prologue
    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    .line 68
    int-to-float v0, p3

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->maxLife:F

    .line 69
    int-to-float v0, p3

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->life:F

    .line 70
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->invincible:Z

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 73
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->enableDocking:Z

    .line 75
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isDestroyAnimation:Z

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->radarColorR:F

    .line 78
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->radarColorG:F

    .line 79
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->radarColorB:F

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_P:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 83
    return-object p0
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 145
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isDestroyAnimation:Z

    if-eqz v0, :cond_5

    .line 161
    :goto_4
    return-void

    .line 149
    :cond_5
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->remainingDestroytime:I

    .line 150
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->curNextExpldeTime:I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isDestroyAnimation:Z

    .line 153
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 154
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 157
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 158
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    goto :goto_4
.end method

.method public realDestroy()V
    .registers 6

    .prologue
    .line 183
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result v0

    .line 184
    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->onDestroyed(Z)V

    .line 186
    const/16 v0, 0x19

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 187
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 188
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 189
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42480000    # 50.0f

    const v3, 0x44098000    # 550.0f

    const/high16 v4, 0x442f0000    # 700.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 190
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 129
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_30

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v10

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->textDecal:F

    .line 132
    :cond_30
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->name:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v4, v9

    move v7, v9

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 136
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3e900000    # -15.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 140
    return-void
.end method
