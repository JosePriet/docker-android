.class public final Lfr/testudo/spacecorsair/mod/ModPrologue;
.super Ljava/lang/Object;
.source "ModPrologue.java"


# static fields
.field static final BOSS_DIST:F = 2800.0f

.field static final BOSS_FI:I = 0x1

.field static final BOSS_FLOOR:F = 0.12f

.field static final BOSS_LEVEL:I = 0x28

.field static final BRIEF_MS:I = 0x1b58

.field static final DEATH_HULL:F = 0.1f

.field static final DONE:Ljava/lang/String; = "v46_prologue_done"

.field static final END_MS:I = 0x1770

.field static final FIGHT_MS:I = 0x1d4c0

.field static final HULL:Ljava/lang/String; = "corvette"

.field static final HULL_FLOOR:F = 0.04f

.field static final PLAYER_LEVEL:I = 0x19

.field static final TEST_FLAG:Ljava/lang/String; = "corsair_prologue"

.field static final WARN_MS:I = 0x4e20

.field public static active:Z

.field private static boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field private static bossMax:F

.field private static briefMs:I

.field private static endMs:I

.field private static ending:Z

.field private static enteredAt:J

.field private static finished:Z

.field private static floorSaid:Z

.field private static lastStand:Z

.field private static left:I

.field private static pending:Z

.field private static sBossName:Ljava/lang/String;

.field private static sBrief1:Ljava/lang/String;

.field private static sBrief2:Ljava/lang/String;

.field private static sDown:Ljava/lang/String;

.field private static sFloor:Ljava/lang/String;

.field private static sOut:Ljava/lang/String;

.field private static sRestart:Ljava/lang/String;

.field private static sSalvage1:Ljava/lang/String;

.field private static sSalvage2:Ljava/lang/String;

.field private static sTimer:Ljava/lang/String;

.field private static started:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static begetEnd(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V
    .registers 8

    .prologue
    .line 238
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    .line 239
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    .line 240
    sput-boolean p1, Lfr/testudo/spacecorsair/mod/ModPrologue;->lastStand:Z

    .line 241
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 242
    if-eqz p1, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sOut:Ljava/lang/String;

    :goto_15
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 243
    const-string v0, "warp_in"

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f19999a    # 0.6f

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 244
    return-void

    .line 242
    :cond_26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sDown:Ljava/lang/String;

    goto :goto_15
.end method

.method public static blockSave()Z
    .registers 2

    .prologue
    .line 91
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 93
    :goto_5
    return v0

    .line 92
    :cond_6
    const-string v0, "prologue"

    const-string v1, "save blocked"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static build()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 6

    .prologue
    const/16 v5, 0x28

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 204
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x452f0000    # 2800.0f

    const/high16 v4, 0x448c0000    # 1120.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v1, v5, v2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawnBoss(IILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 207
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_36

    .line 208
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    .line 209
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBossName:Ljava/lang/String;

    .line 212
    :cond_36
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 213
    const v2, 0x7f06002d

    iput v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 214
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 215
    iput v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMinLevel:I

    .line 216
    iput v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMaxLevel:I

    .line 217
    const-string v2, "prologue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level built, elements "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v1
.end method

.method private static center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V
    .registers 20

    .prologue
    .line 319
    if-eqz p1, :cond_9

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p8, v1

    if-gtz v1, :cond_a

    .line 326
    :cond_9
    :goto_9
    return-void

    .line 320
    :cond_a
    invoke-static {p4}, Lfr/testudo/spacecorsair/mod/ModPrologue;->font(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/textengine/GLText;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_9

    .line 322
    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v3, p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v0, p8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v10, p4

    invoke-static/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 323
    const v1, 0x8074

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 324
    const/16 v1, 0xbe2

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 325
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_9
.end method

.method private static done()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_18

    const-string v2, "v46_prologue_done"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "corsair_prologue"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13

    .prologue
    .line 284
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    if-eqz v0, :cond_9

    .line 316
    :cond_8
    :goto_8
    return-void

    .line 286
    :cond_9
    :try_start_9
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v9, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    .line 287
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    if-eqz v0, :cond_70

    .line 288
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    rsub-int v0, v0, 0x1770

    .line 289
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    add-int/lit16 v0, v0, -0x7d0

    int-to-float v0, v0

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 290
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    .line 291
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->lastStand:Z

    if-eqz v0, :cond_6d

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage1:Ljava/lang/String;

    :goto_31
    add-int/lit8 v3, v9, 0x3c

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3eb33333    # 0.35f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 292
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage2:Ljava/lang/String;

    add-int/lit8 v3, v9, -0xa

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f6147ae    # 0.88f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 293
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sRestart:Ljava/lang/String;

    add-int/lit8 v3, v9, -0x5a

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3f733333    # 0.95f

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr v8, v0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    goto :goto_8

    .line 313
    :catch_6b
    move-exception v0

    goto :goto_8

    .line 291
    :cond_6d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sDown:Ljava/lang/String;

    goto :goto_31

    .line 297
    :cond_70
    const/4 v0, 0x0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v1, v0, 0x3e8

    .line 298
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    const/16 v3, 0x4e20

    if-gt v0, v3, :cond_176

    const/4 v0, 0x1

    move v7, v0

    .line 299
    :goto_81
    if-eqz v7, :cond_17a

    const v0, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v10, 0x406b800000000000L    # 220.0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    .line 300
    :goto_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPrologue;->sTimer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v3, v1, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v0, v1, 0x3c

    const/16 v4, 0xa

    if-ge v0, v4, :cond_17e

    const-string v0, "0"

    :goto_c5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v3, v0, -0x46

    if-eqz v7, :cond_182

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 302
    :goto_db
    if-eqz v7, :cond_186

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_df
    if-eqz v7, :cond_18b

    const v6, 0x3eb33333    # 0.35f

    :goto_e4
    if-eqz v7, :cond_190

    const v7, 0x3e99999a    # 0.3f

    :goto_e9
    move-object v0, p0

    .line 301
    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 304
    if-eqz v0, :cond_140

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_140

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_140

    .line 305
    const/4 v1, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v0, v3

    sget v3, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBossName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v9, 0x2

    add-int/lit16 v3, v0, -0x82

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3f733333    # 0.95f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 308
    :cond_140
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    if-lez v0, :cond_8

    .line 309
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    int-to-float v1, v1

    const/high16 v3, 0x44610000    # 900.0f

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 310
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief1:Ljava/lang/String;

    add-int/lit8 v3, v9, 0x28

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 311
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief2:Ljava/lang/String;

    add-int/lit8 v3, v9, -0x14

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f59999a    # 0.85f

    const v6, 0x3f6b851f    # 0.92f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    goto/16 :goto_8

    .line 298
    :cond_176
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_81

    .line 299
    :cond_17a
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_a0

    .line 300
    :cond_17e
    const-string v0, ""

    goto/16 :goto_c5

    .line 301
    :cond_182
    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_184} :catch_6b

    goto/16 :goto_db

    .line 302
    :cond_186
    const v5, 0x3f59999a    # 0.85f

    goto/16 :goto_df

    :cond_18b
    const v6, 0x3f733333    # 0.95f

    goto/16 :goto_e4

    :cond_190
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_e9
.end method

.method private static endBeat(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    .line 248
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    .line 249
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 250
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    rsub-int v0, v0, 0x1770

    .line 251
    const/16 v1, 0xa28

    if-ge v0, v1, :cond_88

    div-int/lit16 v1, v0, 0x140

    long-to-int v2, p1

    sub-int v2, v0, v2

    div-int/lit16 v2, v2, 0x140

    if-eq v1, v2, :cond_88

    .line 252
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const v2, 0x45228000    # 2600.0f

    div-float/2addr v0, v2

    sub-float v5, v1, v0

    .line 253
    const-string v0, "fx_explosion_big_sheet"

    const/4 v1, 0x4

    const/16 v2, 0x10

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    double-to-float v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 254
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v4, v6

    const/high16 v6, 0x43a00000    # 320.0f

    const/high16 v7, 0x44020000    # 520.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    const-wide/16 v6, 0x2bc

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v11, 0x1

    .line 253
    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 255
    const-string v0, "explosion_big"

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f666666    # 0.9f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const-wide/16 v4, 0x78

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 257
    :cond_88
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    if-lez v0, :cond_8d

    .line 261
    :goto_8c
    return-void

    .line 258
    :cond_8d
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    .line 259
    const-string v0, "prologue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end played after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModPrologue;->enteredAt:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms, restarting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->restart()V

    goto :goto_8c
.end method

.method private static enter(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModPrologue;->started:Z

    .line 151
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    .line 153
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 154
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v46_prologue_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    :cond_21
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    .line 157
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->strings()V

    .line 158
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->outfit()V

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v1, "VECTOR00_GATE"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const v0, 0x1d4c0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    .line 161
    const/16 v0, 0x1b58

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->enteredAt:J

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->floorSaid:Z

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->lastStand:Z

    .line 165
    const-string v0, "flagship_horn"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief1:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 167
    const-string v1, "prologue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered, hull "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " boss "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_88

    const-string v0, "none"

    :goto_7c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_87
    return-void

    .line 167
    :cond_88
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_93} :catch_95

    move-result-object v0

    goto :goto_7c

    .line 168
    :catch_95
    move-exception v0

    .line 169
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    .line 171
    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    goto :goto_87
.end method

.method public static firstStart()V
    .registers 2

    .prologue
    .line 78
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->done()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    :goto_6
    return-void

    .line 79
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    .line 80
    const-string v0, "prologue"

    const-string v1, "pending (first start)"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static font(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/textengine/GLText;
    .registers 3

    .prologue
    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue$1;->$SwitchMap$fr$testudo$spacecorsair$textengine$TextSize:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

    :goto_d
    return-object v0

    .line 330
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 331
    :pswitch_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 332
    :pswitch_14
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 333
    :pswitch_17
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 334
    :pswitch_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 329
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private static holdBoss()V
    .registers 4

    .prologue
    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 224
    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_f

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    .line 234
    :cond_f
    :goto_f
    return-void

    .line 225
    :cond_10
    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    .line 226
    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_f

    .line 227
    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 228
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeInPourc:F

    .line 229
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->floorSaid:Z

    if-nez v0, :cond_f

    .line 230
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->floorSaid:Z

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sFloor:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 232
    const-string v0, "prologue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boss floor reached at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x1d4c0

    sget v3, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 98
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v1, :cond_11

    if-eqz p0, :cond_11

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 103
    :cond_11
    :goto_11
    return-object v0

    .line 100
    :cond_12
    :try_start_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->build()Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_11

    .line 101
    :catch_17
    move-exception v1

    .line 102
    const-string v2, "prologue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private static outfit()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 178
    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 179
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 180
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 181
    const-string v1, "corvette"

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 182
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_25
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V

    .line 184
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 185
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 186
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->omegaMissileModLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 187
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 188
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 189
    iput v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    .line 191
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_5c

    .line 193
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    .line 194
    iget v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 195
    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 197
    :cond_5c
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outfit L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "corvette"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static replay()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    .line 86
    const-string v0, "prologue"

    const-string v1, "pending (replay)"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static restart()V
    .registers 4

    .prologue
    .line 266
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 267
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1f

    .line 270
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_2b

    .line 276
    :cond_1f
    :goto_1f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 278
    return-void

    .line 273
    :catch_2b
    move-exception v0

    .line 274
    const-string v1, "ModPrologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private static strings()V
    .registers 1

    .prologue
    .line 340
    const-string v0, "BOUNTY: BLOODFORGE - 2,000,000 cr"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief1:Ljava/lang/String;

    .line 341
    const-string v0, "Crimson Reaver flagship, level 40. Kill it and you are set for life."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief2:Ljava/lang/String;

    .line 342
    const-string v0, "REAVER REINFORCEMENTS IN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sTimer:Ljava/lang/String;

    .line 343
    const-string v0, "Crimson Reavers flagship: Bloodforge"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBossName:Ljava/lang/String;

    .line 344
    const-string v0, "Its armour is holding. Nothing you carry can cut through that hull."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sFloor:Ljava/lang/String;

    .line 345
    const-string v0, "Reaver wing on approach. The Bloodforge turns its ram on you."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sOut:Ljava/lang/String;

    .line 346
    const-string v0, "HULL BREACH - THE CORSAIR IS LOST"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sDown:Ljava/lang/String;

    .line 347
    const-string v0, "THE CORSAIR IS LOST"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage1:Ljava/lang/String;

    .line 348
    const-string v0, "Genesis salvage recovered your pod. Licence revoked, savings seized, one loaner hull."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage2:Ljava/lang/String;

    .line 349
    const-string v0, "Reporting to the Genesis tutorial sector..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sRestart:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const v4, 0x3d23d70a    # 0.04f

    .line 116
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    if-eqz v2, :cond_a

    .line 146
    :cond_9
    :goto_9
    return-void

    .line 117
    :cond_a
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    if-eqz v2, :cond_2a

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->started:Z

    if-nez v2, :cond_2a

    .line 118
    if-eqz p0, :cond_9

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_9

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v0, :cond_9

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v0, :cond_9

    .line 119
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->enter(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_9

    .line 122
    :cond_2a
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v2, :cond_9

    if-eqz p0, :cond_9

    .line 124
    :try_start_30
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_3c

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v2, :cond_3d

    :cond_3c
    move v0, v1

    .line 125
    :cond_3d
    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    if-lez v1, :cond_48

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    int-to-long v2, v1

    sub-long/2addr v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    .line 126
    :cond_48
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    if-eqz v1, :cond_6a

    .line 127
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPrologue;->endBeat(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_4f} :catch_50

    goto :goto_9

    .line 143
    :catch_50
    move-exception v0

    .line 144
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 130
    :cond_6a
    if-nez v0, :cond_73

    :try_start_6c
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    .line 131
    :cond_73
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->holdBoss()V

    .line 132
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_88

    .line 133
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v0, v4

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 134
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 136
    :cond_88
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_be

    .line 137
    const-string v0, "prologue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hull gone at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x1d4c0

    sget v3, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->begetEnd(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto/16 :goto_9

    .line 139
    :cond_be
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    if-gtz v0, :cond_9

    .line 140
    const-string v0, "prologue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clock out, hull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    mul-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->begetEnd(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_f0} :catch_50

    goto/16 :goto_9
.end method
