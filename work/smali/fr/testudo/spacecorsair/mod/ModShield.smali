.class public final Lfr/testudo/spacecorsair/mod/ModShield;
.super Ljava/lang/Object;
.source "ModShield.java"


# static fields
.field static final BUBBLE:F = 1.1f

.field private static final BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final HIT_MS:J = 0x1e0L

.field private static final HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final REBOOT_MS:I = 0x514

.field private static final RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final RING_FRACTION:F = 0.773f

.field private static final SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final SLOW:F = 0.5f

.field private static fNoRegen:Ljava/lang/reflect/Field;

.field private static fRemaining:Ljava/lang/reflect/Field;

.field private static hidden:Lfr/testudo/spacecorsair/display/Drawable;

.field private static hitAt:J

.field private static last:F

.field private static lastFlash:I

.field private static lastShield:Lfr/testudo/spacecorsair/business/player/Shield;

.field private static logMs:J

.field private static rebootLeft:J

.field private static reflectFailed:Z

.field private static slow:Z

.field private static stockTex:Lfr/testudo/spacecorsair/display/Texture;

.field private static testMs:J

.field private static testWas:Z

.field private static used:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    .line 157
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 164
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 168
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allowed(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14

    const/4 v0, 0x2

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private static bubbleReady()Z
    .registers 1

    .prologue
    .line 178
    const-string v0, "vfx_shield_bubble"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 13

    .prologue
    const v11, 0x3f85c28f    # 1.045f

    const/high16 v10, 0x3f000000    # 0.5f

    const v8, 0x3eb33333    # 0.35f

    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 237
    if-eqz v1, :cond_18

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_18

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModShield;->drawBubble(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/Shield;)V

    .line 238
    :cond_18
    if-eqz v1, :cond_26

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpg-float v2, v2, v0

    if-lez v2, :cond_26

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_27

    .line 257
    :cond_26
    :goto_26
    return-void

    .line 239
    :cond_27
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_26

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v3, :cond_26

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v3, :cond_26

    .line 241
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget v5, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 243
    long-to-double v4, v4

    const-wide v6, 0x4084500000000000L    # 650.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v10

    .line 244
    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    if-lez v5, :cond_5c

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    int-to-float v0, v0

    const/high16 v5, 0x43c80000    # 400.0f

    div-float/2addr v0, v5

    .line 245
    :cond_5c
    const v5, 0x3f266666    # 0.65f

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3d75c28f    # 0.06f

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    mul-float/2addr v0, v8

    add-float v10, v3, v0

    .line 246
    iget-object v0, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 247
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShield;->SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v5, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v5, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 248
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShield;->SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 249
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShield;->SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v3, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 250
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShield;->RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v2, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 251
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    mul-float/2addr v0, v11

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    mul-float v2, v3, v11

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 253
    iget v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->RIM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v5, 0x0

    const v6, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v10

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->SHEEN:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v5, 0x0

    move v6, v10

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto/16 :goto_26
.end method

.method private static drawBubble(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/Shield;)V
    .registers 20

    .prologue
    .line 205
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_a

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eq v2, v3, :cond_b

    .line 232
    :cond_a
    :goto_a
    return-void

    .line 206
    :cond_b
    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 208
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    .line 209
    sget v2, Lfr/testudo/spacecorsair/mod/ModShield;->lastFlash:I

    if-le v3, v2, :cond_21

    const/16 v2, 0x12c

    if-lt v3, v2, :cond_21

    sput-wide v14, Lfr/testudo/spacecorsair/mod/ModShield;->hitAt:J

    .line 210
    :cond_21
    sput v3, Lfr/testudo/spacecorsair/mod/ModShield;->lastFlash:I

    .line 211
    const v2, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const v2, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const v2, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 212
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_fe

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    move-object/from16 v0, p1

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v12, v2

    .line 213
    :goto_62
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-lez v2, :cond_a8

    .line 214
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const-string v4, "vfx_shield_bubble"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 216
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const v4, 0x3f45e354    # 0.773f

    div-float v4, v13, v4

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 217
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v4, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 218
    if-lez v3, :cond_102

    int-to-float v2, v3

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    move v8, v2

    .line 219
    :goto_89
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModShield;->BUBBLE_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v7, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3eb33333    # 0.35f

    mul-float v8, v8, v17

    add-float/2addr v8, v12

    .line 220
    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 219
    invoke-virtual/range {v2 .. v11}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 222
    :cond_a8
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModShield;->hitAt:J

    sub-long v2, v14, v2

    .line 223
    const-string v4, "vfx_shield_hit"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 224
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_a

    const-wide/16 v6, 0x1e0

    cmp-long v5, v2, v6

    if-gez v5, :cond_a

    if-eqz v4, :cond_a

    .line 225
    long-to-float v2, v2

    const/high16 v3, 0x43f00000    # 480.0f

    div-float v8, v2, v3

    .line 226
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 227
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const v3, 0x3f3020c5    # 0.688f

    div-float v3, v13, v3

    const v4, 0x3f59999a    # 0.85f

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 228
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 229
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModShield;->HIT_SPR:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v7, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v8, v13, v8

    mul-float/2addr v8, v12

    invoke-virtual/range {v2 .. v11}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto/16 :goto_a

    .line 212
    :cond_fe
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_62

    .line 218
    :cond_102
    const/4 v2, 0x0

    move v8, v2

    goto :goto_89
.end method

.method private static fields()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->fNoRegen:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_7

    .line 48
    :goto_6
    return v0

    .line 37
    :cond_7
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->reflectFailed:Z

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 39
    :cond_d
    :try_start_d
    const-class v2, Lfr/testudo/spacecorsair/business/player/Shield;

    const-string v3, "isInNoRegenerationTime"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 40
    const-class v3, Lfr/testudo/spacecorsair/business/player/Shield;

    const-string v4, "remainingNoRegenrationTime"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 41
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->fRemaining:Ljava/lang/reflect/Field;

    .line 44
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->fNoRegen:Ljava/lang/reflect/Field;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_2a

    goto :goto_6

    .line 46
    :catch_2a
    move-exception v2

    .line 47
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->reflectFailed:Z

    move v0, v1

    .line 48
    goto :goto_6
.end method

.method private static hideStock()V
    .registers 4

    .prologue
    .line 188
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    .line 189
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 190
    if-eqz v1, :cond_48

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->bubbleReady()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 191
    :goto_16
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_39

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-ne v2, v1, :cond_20

    if-nez v0, :cond_39

    .line 192
    :cond_20
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v2, :cond_30

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    if-ne v2, v3, :cond_36

    :cond_30
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->stockTex:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 193
    :cond_36
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 195
    :cond_39
    if-eqz v0, :cond_47

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v0, :cond_47

    .line 196
    iget-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->stockTex:Lfr/testudo/spacecorsair/display/Texture;

    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->stockTex:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v0, :cond_4a

    .line 202
    :cond_47
    :goto_47
    return-void

    .line 190
    :cond_48
    const/4 v0, 0x0

    goto :goto_16

    .line 198
    :cond_4a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-lez v0, :cond_47

    .line 199
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 200
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    goto :goto_47
.end method

.method private static hold(Lfr/testudo/spacecorsair/business/player/Shield;F)V
    .registers 4

    .prologue
    .line 54
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->fNoRegen:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->fRemaining:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 59
    :goto_b
    return-void

    .line 56
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static onRepair()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 63
    sput v2, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 65
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 66
    return-void
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 74
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 75
    if-eqz v3, :cond_12

    iget v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_13

    .line 154
    :cond_12
    :goto_12
    return-void

    .line 77
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_144

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v1, v1

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 80
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v4

    .line 81
    if-eqz v4, :cond_55

    iget-object v1, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_55

    .line 82
    iget-object v1, v4, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->extent(Lfr/testudo/spacecorsair/display/Texture;)F

    move-result v1

    .line 83
    iget-object v5, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 84
    cmpl-float v6, v1, v8

    if-lez v6, :cond_155

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, v5

    mul-float/2addr v1, v5

    const v5, 0x3f8f5c29    # 1.12f

    mul-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 86
    :cond_55
    :goto_55
    const-string v1, "corsair_titans"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->logMs:J

    sub-long/2addr v6, p1

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->logMs:J

    cmp-long v1, v6, v10

    if-gtz v1, :cond_f7

    .line 87
    const-wide/16 v6, 0xbb8

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->logMs:J

    .line 88
    const-string v5, "ModShield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spec="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v6, v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " dimStatic="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " hd="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 89
    if-nez v4, :cond_15f

    const/high16 v1, -0x40800000    # -1.0f

    :goto_97
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " ext="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_165

    const/high16 v1, -0x3ef00000    # -9.0f

    :goto_a5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " d="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " stockShieldDim="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v1, :cond_16d

    const/high16 v1, -0x40800000    # -1.0f

    :goto_bf
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " hidden="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_175

    const/4 v1, 0x1

    :goto_ce
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " img="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " basicTex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 91
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModArt;->extent(Lfr/testudo/spacecorsair/display/Texture;)F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_f7
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_104

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 94
    :cond_104
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_121

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eq v1, v4, :cond_121

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_121

    .line 95
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 96
    :cond_121
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    int-to-float v1, v1

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    int-to-float v4, v4

    const v5, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 97
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_144

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    :cond_144
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->hideStock()V

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->lastShield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eq v3, v0, :cond_178

    .line 101
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->lastShield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 102
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    .line 103
    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    goto/16 :goto_12

    .line 84
    :cond_155
    const v1, 0x3f933333    # 1.15f

    mul-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_55

    .line 89
    :cond_15f
    iget-object v1, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_97

    :cond_165
    iget-object v1, v4, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->extent(Lfr/testudo/spacecorsair/display/Texture;)F

    move-result v1

    goto/16 :goto_a5

    .line 90
    :cond_16d
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_bf

    :cond_175
    move v1, v2

    goto/16 :goto_ce

    .line 106
    :cond_178
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_182

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->fields()Z

    move-result v0

    if-nez v0, :cond_188

    .line 107
    :cond_182
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    goto/16 :goto_12

    .line 111
    :cond_188
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    .line 112
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_1a9

    .line 113
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    .line 114
    const-string v0, "corsair_shieldbreak"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_1a7

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModShield;->testWas:Z

    if-nez v1, :cond_1a7

    .line 116
    iput v8, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 117
    iput v8, v3, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    .line 119
    :cond_1a7
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->testWas:Z

    .line 121
    :cond_1a9
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 122
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1db

    cmpg-float v1, v0, v8

    if-gtz v1, :cond_1db

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    cmp-long v1, v4, v10

    if-gtz v1, :cond_1db

    .line 123
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShield;->allowed(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    if-ge v1, v4, :cond_221

    .line 124
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    .line 125
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 126
    const-wide/16 v4, 0x514

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 127
    const-string v1, "SHIELDS REBOOTING"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x3f59999a    # 0.85f

    invoke-static {p0, v1, v9, v4, v12}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 133
    :cond_1db
    :goto_1db
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    if-eqz v1, :cond_203

    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShield;->allowed(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    if-ge v1, v4, :cond_203

    .line 134
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 135
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    .line 136
    cmpg-float v1, v0, v8

    if-gtz v1, :cond_203

    .line 137
    const-wide/16 v4, 0x514

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 138
    const-string v1, "SHIELDS REBOOTING"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-static {p0, v1, v9, v2, v12}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 141
    :cond_203
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_23c

    .line 142
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 143
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_238

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    add-long/2addr v0, p1

    long-to-float v0, v0

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModShield;->hold(Lfr/testudo/spacecorsair/business/player/Shield;F)V

    .line 153
    :cond_21b
    :goto_21b
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    goto/16 :goto_12

    .line 128
    :cond_221
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    if-nez v1, :cond_1db

    .line 129
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 130
    const-string v1, "SHIELD EMITTERS DAMAGED - HALF RECHARGE UNTIL REPAIRED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {p0, v1, v12, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_1db

    .line 144
    :cond_238
    invoke-static {v3, v8}, Lfr/testudo/spacecorsair/mod/ModShield;->hold(Lfr/testudo/spacecorsair/business/player/Shield;F)V

    goto :goto_21b

    .line 145
    :cond_23c
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    if-eqz v1, :cond_21b

    .line 147
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    sub-float/2addr v0, v1

    .line 148
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_21b

    cmpl-float v1, v0, v8

    if-lez v1, :cond_21b

    iget v1, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_21b

    .line 149
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v1

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 150
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v0, v1

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    goto :goto_21b
.end method
