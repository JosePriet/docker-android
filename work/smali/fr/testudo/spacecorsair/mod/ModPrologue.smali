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

.field static final FLASH_MS:I = 0x1194

.field static final HULL:Ljava/lang/String; = "corvette"

.field static final HULL_FLOOR:F = 0.04f

.field static final PLAYER_LEVEL:I = 0x19

.field static final TEST_FLAG:Ljava/lang/String; = "corsair_prologue"

.field static final WARN_MS:I = 0x4e20

.field public static active:Z

.field private static armed:Z

.field private static boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field private static bossMax:F

.field private static briefMs:I

.field private static creptSaid:Z

.field private static endMs:I

.field private static ending:Z

.field private static enteredAt:J

.field private static finished:Z

.field private static flashMs:I

.field private static flashText:Ljava/lang/String;

.field private static floorSaid:Z

.field private static lastStand:Z

.field private static left:I

.field private static pending:Z

.field private static preLevel:I

.field private static preXp:J

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

.method private static backup()V
    .registers 4

    .prologue
    .line 336
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->backupDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->store(Landroid/content/Context;Ljava/io/File;)V

    .line 338
    const-string v0, "prologue"

    const-string v1, "pristine save copied aside"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 342
    :goto_16
    return-void

    .line 339
    :catch_17
    move-exception v0

    .line 340
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private static backupDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 330
    new-instance v0, Ljava/io/File;

    const-string v1, "corsair_profiles"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "prologue_backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static begetEnd(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V
    .registers 8

    .prologue
    .line 304
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    .line 305
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    .line 306
    sput-boolean p1, Lfr/testudo/spacecorsair/mod/ModPrologue;->lastStand:Z

    .line 308
    if-eqz p1, :cond_1e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sOut:Ljava/lang/String;

    :goto_d
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->flash(Ljava/lang/String;)V

    .line 309
    const-string v0, "warp_in"

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f19999a    # 0.6f

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 310
    return-void

    .line 308
    :cond_1e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sDown:Ljava/lang/String;

    goto :goto_d
.end method

.method public static blockSave()Z
    .registers 2

    .prologue
    .line 100
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 102
    :goto_5
    return v0

    .line 101
    :cond_6
    const-string v0, "prologue"

    const-string v1, "save blocked"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static build()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 6

    .prologue
    const/16 v5, 0x28

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 251
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x452f0000    # 2800.0f

    const/high16 v4, 0x448c0000    # 1120.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v1, v5, v2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawnBoss(IILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 254
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_43

    .line 255
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    .line 256
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :try_start_30
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3d} :catch_78

    .line 259
    :goto_3d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBossName:Ljava/lang/String;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 261
    :cond_43
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 262
    const v2, 0x7f06002d

    iput v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 263
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 264
    iput v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMinLevel:I

    .line 265
    iput v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMaxLevel:I

    .line 266
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

    .line 267
    return-object v1

    .line 258
    :catch_78
    move-exception v1

    goto :goto_3d
.end method

.method private static center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V
    .registers 20

    .prologue
    .line 425
    if-eqz p1, :cond_9

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p8, v1

    if-gtz v1, :cond_a

    .line 432
    :cond_9
    :goto_9
    return-void

    .line 426
    :cond_a
    invoke-static {p4}, Lfr/testudo/spacecorsair/mod/ModPrologue;->font(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/textengine/GLText;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_9

    .line 428
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

    .line 429
    const v1, 0x8074

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 430
    const/16 v1, 0xbe2

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 431
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_9
.end method

.method public static damage(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)F
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 139
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v1, :cond_b

    if-eqz p0, :cond_b

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_d

    :cond_b
    move v0, p1

    .line 145
    :cond_c
    :goto_c
    return v0

    .line 140
    :cond_d
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    if-nez v1, :cond_c

    .line 142
    :try_start_11
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3d23d70a    # 0.04f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 143
    cmpg-float v2, v1, v0

    if-lez v2, :cond_c

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_21} :catch_23

    move-result v0

    goto :goto_c

    .line 144
    :catch_23
    move-exception v0

    move v0, p1

    .line 145
    goto :goto_c
.end method

.method private static done()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
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
    .line 389
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    if-eqz v0, :cond_9

    .line 422
    :cond_8
    :goto_8
    return-void

    .line 391
    :cond_9
    :try_start_9
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v9, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    .line 392
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    if-eqz v0, :cond_70

    .line 393
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    rsub-int v0, v0, 0x1770

    .line 394
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

    .line 395
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    .line 396
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

    .line 397
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage2:Ljava/lang/String;

    add-int/lit8 v3, v9, -0xa

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f6147ae    # 0.88f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 398
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

    .line 419
    :catch_6b
    move-exception v0

    goto :goto_8

    .line 396
    :cond_6d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sDown:Ljava/lang/String;

    goto :goto_31

    .line 402
    :cond_70
    const/4 v0, 0x0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v1, v0, 0x3e8

    .line 403
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    const/16 v3, 0x4e20

    if-gt v0, v3, :cond_197

    const/4 v0, 0x1

    move v7, v0

    .line 404
    :goto_81
    if-eqz v7, :cond_19b

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

    .line 405
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

    if-ge v0, v4, :cond_19f

    const-string v0, "0"

    :goto_c5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v3, v0, -0x46

    if-eqz v7, :cond_1a3

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 407
    :goto_db
    if-eqz v7, :cond_1a7

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_df
    if-eqz v7, :cond_1ac

    const v6, 0x3eb33333    # 0.35f

    :goto_e4
    if-eqz v7, :cond_1b1

    const v7, 0x3e99999a    # 0.3f

    :goto_e9
    move-object v0, p0

    .line 406
    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 408
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 409
    if-eqz v0, :cond_140

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_140

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_140

    .line 410
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

    .line 411
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

    .line 413
    :cond_140
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    if-lez v0, :cond_174

    .line 414
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    int-to-float v1, v1

    const/high16 v3, 0x44610000    # 900.0f

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 415
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief1:Ljava/lang/String;

    add-int/lit8 v3, v9, 0x28

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 416
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief2:Ljava/lang/String;

    add-int/lit8 v3, v9, -0x14

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f59999a    # 0.85f

    const v6, 0x3f6b851f    # 0.92f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    .line 418
    :cond_174
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashMs:I

    if-lez v0, :cond_8

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashText:Ljava/lang/String;

    const/16 v3, 0x96

    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v0, 0x3f800000    # 1.0f

    sget v8, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashMs:I

    int-to-float v8, v8

    const/high16 v9, 0x442f0000    # 700.0f

    div-float/2addr v8, v9

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModPrologue;->center(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IILfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    goto/16 :goto_8

    .line 403
    :cond_197
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_81

    .line 404
    :cond_19b
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_a0

    .line 405
    :cond_19f
    const-string v0, ""

    goto/16 :goto_c5

    .line 406
    :cond_1a3
    sget-object v4, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1a5} :catch_6b

    goto/16 :goto_db

    .line 407
    :cond_1a7
    const v5, 0x3f59999a    # 0.85f

    goto/16 :goto_df

    :cond_1ac
    const v6, 0x3f733333    # 0.95f

    goto/16 :goto_e4

    :cond_1b1
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_e9
.end method

.method private static endBeat(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    .line 314
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    .line 315
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    rsub-int v0, v0, 0x1770

    .line 316
    const/16 v1, 0xa28

    if-ge v0, v1, :cond_80

    div-int/lit16 v1, v0, 0x140

    long-to-int v2, p1

    sub-int v2, v0, v2

    div-int/lit16 v2, v2, 0x140

    if-eq v1, v2, :cond_80

    .line 317
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const v2, 0x45228000    # 2600.0f

    div-float/2addr v0, v2

    sub-float v5, v1, v0

    .line 318
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

    .line 319
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

    .line 318
    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 320
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

    .line 322
    :cond_80
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->endMs:I

    if-lez v0, :cond_85

    .line 326
    :goto_84
    return-void

    .line 323
    :cond_85
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    .line 324
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

    .line 325
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->restart()V

    goto :goto_84
.end method

.method private static enter(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 187
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModPrologue;->started:Z

    .line 188
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    .line 190
    :try_start_6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "v46_prologue_done"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    :cond_1a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 193
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->backup()V

    .line 194
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    .line 195
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->strings()V

    .line 196
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->outfit()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2d} :catch_9e

    .line 200
    :try_start_2d
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v2, 0x0

    iput-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_32} :catch_c3

    .line 201
    :goto_32
    :try_start_32
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v2, "VECTOR00_GATE"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const v1, 0x1d4c0

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    .line 203
    const/16 v1, 0x1b58

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->enteredAt:J

    .line 205
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->floorSaid:Z

    .line 206
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->creptSaid:Z

    .line 207
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->lastStand:Z

    .line 208
    const-string v1, "flagship_horn"

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const-wide/16 v4, 0xbb8

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 209
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entered, hull "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_8a

    :goto_6e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " boss "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_91

    const-string v0, "none"

    :goto_7e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_89
    return-void

    .line 209
    :cond_8a
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_6e

    :cond_91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_9c} :catch_9e

    move-result-object v0

    goto :goto_7e

    .line 210
    :catch_9e
    move-exception v0

    .line 214
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", restarting on the saved state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    .line 216
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->restart()V

    goto :goto_89

    .line 200
    :catch_c3
    move-exception v1

    goto/16 :goto_32
.end method

.method public static firstStart()V
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->done()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    :goto_6
    return-void

    .line 85
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    .line 86
    const-string v0, "prologue"

    const-string v1, "pending (first start)"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static flash(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 448
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashText:Ljava/lang/String;

    .line 449
    const/16 v0, 0x1194

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashMs:I

    .line 450
    return-void
.end method

.method private static font(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/textengine/GLText;
    .registers 3

    .prologue
    .line 435
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue$1;->$SwitchMap$fr$testudo$spacecorsair$textengine$TextSize:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 441
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

    :goto_d
    return-object v0

    .line 436
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 437
    :pswitch_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 438
    :pswitch_14
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 439
    :pswitch_17
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 440
    :pswitch_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 435
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
    .line 289
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->boss:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 290
    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_f

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    .line 300
    :cond_f
    :goto_f
    return-void

    .line 291
    :cond_10
    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->bossMax:F

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    .line 292
    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_f

    .line 293
    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 294
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeInPourc:F

    .line 295
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->floorSaid:Z

    if-nez v0, :cond_f

    .line 296
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->floorSaid:Z

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sFloor:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->flash(Ljava/lang/String;)V

    .line 298
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

.method private static holdLevel(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x19

    .line 274
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 275
    if-nez v0, :cond_d

    .line 285
    :cond_c
    :goto_c
    return-void

    .line 276
    :cond_d
    iget-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_17

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 277
    :cond_17
    iget v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-eq v1, v4, :cond_c

    .line 278
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->creptSaid:Z

    if-nez v1, :cond_4e

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->creptSaid:Z

    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level crept to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", held at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (logged once)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_4e
    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 280
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_55} :catch_56

    goto :goto_c

    .line 282
    :catch_56
    move-exception v0

    goto :goto_c
.end method

.method public static level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 107
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v1, :cond_11

    if-eqz p0, :cond_11

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 112
    :cond_11
    :goto_11
    return-object v0

    .line 109
    :cond_12
    :try_start_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->build()Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_11

    .line 110
    :catch_17
    move-exception v1

    .line 111
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

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 223
    iget v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->preLevel:I

    .line 224
    iget-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->preXp:J

    .line 225
    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 226
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 227
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 228
    const-string v1, "corvette"

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 229
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V

    .line 231
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 232
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 233
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->omegaMissileModLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 234
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 235
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 236
    iput v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    .line 237
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    .line 238
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_64

    .line 240
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    .line 241
    iget v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 242
    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 244
    :cond_64
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

    .line 245
    return-void
.end method

.method public static preFrame()V
    .registers 2

    .prologue
    .line 127
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->armed:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->started:Z

    if-eqz v0, :cond_9

    .line 132
    :cond_8
    :goto_8
    return-void

    .line 128
    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->armed:Z

    .line 129
    const/4 v0, 0x0

    .line 130
    :try_start_d
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_15

    move-result-object v0

    .line 131
    :goto_11
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->enter(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_8

    .line 130
    :catch_15
    move-exception v1

    goto :goto_11
.end method

.method public static replay()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    .line 92
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    .line 93
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->started:Z

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    .line 95
    const-string v0, "prologue"

    const-string v1, "pending (replay)"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private static restart()V
    .registers 4

    .prologue
    .line 362
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 363
    const-string v2, "prologue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pilot at restart: level "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_79

    const/4 v0, -0x1

    :goto_16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModPrologue;->preLevel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-eqz v1, :cond_40

    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->preLevel:I

    iput v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->preXp:J

    iput-wide v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 365
    :cond_40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_7c

    .line 369
    :goto_4b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->restore()V

    .line 371
    :try_start_4e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 372
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_6d

    .line 375
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_6d} :catch_96

    .line 381
    :cond_6d
    :goto_6d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 382
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 383
    return-void

    .line 363
    :cond_79
    :try_start_79
    iget v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7b} :catch_7c

    goto :goto_16

    .line 366
    :catch_7c
    move-exception v0

    .line 367
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pilot reset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 378
    :catch_96
    move-exception v0

    .line 379
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

    goto :goto_6d
.end method

.method private static restore()V
    .registers 4

    .prologue
    .line 349
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->backupDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 351
    new-instance v2, Ljava/io/File;

    const-string v3, "complete"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v0, "prologue"

    const-string v1, "no backup to restore"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_20
    return-void

    .line 352
    :cond_21
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->load(Landroid/content/Context;Ljava/io/File;)V

    .line 353
    const-string v0, "prologue"

    const-string v1, "pristine save restored"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_20

    .line 354
    :catch_2c
    move-exception v0

    .line 355
    const-string v1, "prologue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private static strings()V
    .registers 1

    .prologue
    .line 453
    const-string v0, "BOUNTY: BLOODFORGE - 2,000,000 cr"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief1:Ljava/lang/String;

    .line 454
    const-string v0, "Crimson Reaver flagship, level 40. Kill it and you are set for life."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBrief2:Ljava/lang/String;

    .line 455
    const-string v0, "REAVER REINFORCEMENTS IN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sTimer:Ljava/lang/String;

    .line 456
    const-string v0, "Crimson Reavers flagship: Bloodforge"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sBossName:Ljava/lang/String;

    .line 457
    const-string v0, "Its armour is holding. Nothing you carry can cut through that hull."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sFloor:Ljava/lang/String;

    .line 458
    const-string v0, "Reaver wing on approach. The Bloodforge turns its ram on you."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sOut:Ljava/lang/String;

    .line 459
    const-string v0, "HULL BREACH - THE CORSAIR IS LOST"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sDown:Ljava/lang/String;

    .line 460
    const-string v0, "THE CORSAIR IS LOST"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage1:Ljava/lang/String;

    .line 461
    const-string v0, "Genesis salvage recovered your pod. Licence revoked, savings seized, one loaner hull."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sSalvage2:Ljava/lang/String;

    .line 462
    const-string v0, "Reporting to the Genesis tutorial sector..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->sRestart:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const v4, 0x3d23d70a    # 0.04f

    const/4 v1, 0x1

    .line 151
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->finished:Z

    if-eqz v2, :cond_a

    .line 183
    :cond_9
    :goto_9
    return-void

    .line 152
    :cond_a
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->pending:Z

    if-eqz v2, :cond_29

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->started:Z

    if-nez v2, :cond_29

    .line 153
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

    .line 154
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->armed:Z

    goto :goto_9

    .line 157
    :cond_29
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v2, :cond_9

    if-eqz p0, :cond_9

    .line 159
    :try_start_2f
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v2, :cond_3c

    :cond_3b
    move v0, v1

    .line 160
    :cond_3c
    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    if-lez v1, :cond_47

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    int-to-long v2, v1

    sub-long/2addr v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->briefMs:I

    .line 161
    :cond_47
    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashMs:I

    if-lez v1, :cond_52

    sget v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashMs:I

    int-to-long v2, v1

    sub-long/2addr v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->flashMs:I

    .line 162
    :cond_52
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->holdLevel(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 163
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->holdBoss()V

    .line 164
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->ending:Z

    if-eqz v1, :cond_7a

    .line 165
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPrologue;->endBeat(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_5f} :catch_60

    goto :goto_9

    .line 180
    :catch_60
    move-exception v0

    .line 181
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

    .line 168
    :cond_7a
    if-nez v0, :cond_83

    :try_start_7c
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    .line 169
    :cond_83
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_95

    .line 170
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v0, v4

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 171
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 173
    :cond_95
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_cb

    .line 174
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

    .line 175
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->begetEnd(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto/16 :goto_9

    .line 176
    :cond_cb
    sget v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->left:I

    if-gtz v0, :cond_9

    .line 177
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

    .line 178
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->begetEnd(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_fd} :catch_60

    goto/16 :goto_9
.end method
