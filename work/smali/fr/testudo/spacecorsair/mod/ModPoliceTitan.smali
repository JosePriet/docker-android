.class public final Lfr/testudo/spacecorsair/mod/ModPoliceTitan;
.super Ljava/lang/Object;
.source "ModPoliceTitan.java"


# static fields
.field static final COUNCIL_B:F = 0.62f

.field static final COUNCIL_G:F = 0.18f

.field static final COUNCIL_R:F = 0.42f

.field static final LOCKDOWN_COOLDOWN_MS:I = 0x61a8

.field static final LOCKDOWN_FIRST_MS:I = 0x1388

.field static final LOCKDOWN_MS:I = 0x1770

.field static final LOCKDOWN_RANGE:F = 5000.0f

.field static final LOCKDOWN_SPEED:F = 0.5f

.field private static final POL:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

.field static final POLICE_B:F = 1.0f

.field static final POLICE_G:F = 0.55f

.field static final POLICE_R:F = 0.35f

.field static final POLICE_TITAN_MULT:F = 1.2f

.field static final POLICE_TITAN_SHIELD_MULT:F = 1.2f

.field static final SHIELD_BREAK_CHARGE_MS:I = 0x4b0

.field static final SHIELD_BREAK_COOLDOWN_MS:I = 0x4650

.field static final SHIELD_BREAK_FIRST_MS:I = 0x2328

.field static final SHIELD_BREAK_FRACTION:F = 0.6f

.field static final SHIELD_BREAK_RANGE:F = 4500.0f

.field static final TEST_DELAY_MS:I = 0x9c4

.field static final TEST_DISTANCE:F = 2600.0f

.field static final TITAN_OVER_PLAYER:I = 0x2

.field private static breakCd:I

.field private static chargeMs:I

.field private static jamSaid:Z

.field private static lockCd:I

.field private static lockMs:I

.field private static name:Ljava/lang/String;

.field private static testMs:I

.field private static titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field private static final v:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->POL:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    .line 47
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testMs:I

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active()Z
    .registers 2

    .prologue
    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 104
    if-eqz v0, :cond_12

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static council(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 57
    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V
    .registers 16

    .prologue
    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eq p0, v0, :cond_5

    .line 271
    :cond_4
    :goto_4
    return-void

    .line 255
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v11, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 256
    if-eqz v11, :cond_4

    iget-boolean v0, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_4

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 258
    const-wide/16 v0, 0x1f4

    rem-long v0, v12, v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_e5

    const/4 v0, 0x1

    .line 259
    :goto_1e
    sget v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    if-lez v1, :cond_7c

    .line 260
    if-eqz v0, :cond_e8

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_26
    if-eqz v0, :cond_ed

    const v7, 0x3e19999a    # 0.15f

    :goto_2b
    if-eqz v0, :cond_f2

    const v8, 0x3dcccccd    # 0.1f

    .line 261
    :goto_30
    const-string v0, "marker_hostile"

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x44020000    # 520.0f

    const/high16 v4, 0x44020000    # 520.0f

    long-to-float v5, v12

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v5, v9

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float/2addr v5, v9

    const v9, 0x3f59999a    # 0.85f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 262
    const-string v0, "fx_shock"

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v4, 0x44200000    # 640.0f

    const/4 v5, 0x0

    const v9, 0x3ee66666    # 0.45f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 263
    const-string v0, "fx_beam"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 265
    :cond_7c
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    if-lez v0, :cond_4

    .line 266
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    int-to-float v0, v0

    const/high16 v1, 0x44960000    # 1200.0f

    div-float v14, v0, v1

    .line 267
    const/high16 v0, 0x43be0000    # 380.0f

    const/high16 v1, 0x44af0000    # 1400.0f

    mul-float/2addr v1, v14

    add-float v3, v0, v1

    .line 268
    const-string v0, "marker_hostile"

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-long v4, v12

    long-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v5, v4, v5

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3f0ccccd    # 0.55f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 269
    const-string v0, "fx_beam"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v6, 0x42f00000    # 120.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v14

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3f0ccccd    # 0.55f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3eb33333    # 0.35f

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v14

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_4

    .line 258
    :cond_e5
    const/4 v0, 0x0

    goto/16 :goto_1e

    .line 260
    :cond_e8
    const v6, 0x3e19999a    # 0.15f

    goto/16 :goto_26

    :cond_ed
    const v7, 0x3ecccccd    # 0.4f

    goto/16 :goto_2b

    :cond_f2
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_30
.end method

.method private static endLockdown()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 198
    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    .line 199
    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    .line 200
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->jamSaid:Z

    .line 202
    :try_start_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 203
    if-eqz v0, :cond_1c

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 207
    :cond_1c
    :goto_1c
    return-void

    .line 204
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method static gone(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Z)V
    .registers 3

    .prologue
    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-ne p0, v0, :cond_a

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->endLockdown()V

    .line 142
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    if-nez p1, :cond_12

    .line 150
    :goto_11
    return-void

    .line 144
    :cond_12
    const-string v0, "killed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V

    .line 146
    :try_start_17
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->onTitanKilled()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_11

    .line 147
    :catch_1b
    move-exception v0

    goto :goto_11
.end method

.method static isPoliceTitan(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 127
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static lockdown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3e99999a    # 0.3f

    .line 184
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    .line 185
    :cond_e
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    if-ge v1, v2, :cond_18

    sget v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    .line 186
    :cond_18
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    if-eqz v1, :cond_30

    .line 187
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 188
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->jamSaid:Z

    if-nez v1, :cond_30

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->jamSaid:Z

    const-string v1, "JUMP DRIVE JAMMED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3, v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 190
    :cond_30
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v2, v0

    .line 191
    :goto_39
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_56

    .line 192
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 193
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v1, :cond_52

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/world/Portal;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/Portal;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    .line 191
    :cond_52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    .line 195
    :cond_56
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 275
    const-string v0, "corsair_nodialog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ModPoliceTitan"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_d
    return-void
.end method

.method static onLevel()V
    .registers 1

    .prologue
    .line 134
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 135
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->endLockdown()V

    .line 136
    const-string v0, "corsair_poltitan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x9c4

    :goto_10
    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testMs:I

    .line 137
    return-void

    .line 136
    :cond_13
    const/4 v0, -0x1

    goto :goto_10
.end method

.method static skills(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/business/player/PlayerShip;JF)V
    .registers 19

    .prologue
    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eq p0, v0, :cond_5

    .line 242
    :cond_4
    :goto_4
    return-void

    .line 212
    :cond_5
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockCd:I

    int-to-long v0, v0

    sub-long v0, v0, p3

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockCd:I

    .line 213
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->breakCd:I

    int-to-long v0, v0

    sub-long v0, v0, p3

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->breakCd:I

    .line 214
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockCd:I

    if-gtz v0, :cond_5b

    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    if-gtz v0, :cond_5b

    const v0, 0x459c4000    # 5000.0f

    cmpg-float v0, p5, v0

    if-gez v0, :cond_5b

    .line 215
    const/16 v0, 0x61a8

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockCd:I

    .line 216
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->jamSaid:Z

    .line 218
    const-string v0, "LOCKDOWN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Ljava/lang/String;FFF)V

    .line 219
    const-string v0, "Engines locked down, jump drive jammed!"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {p2, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 221
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockdown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 223
    :cond_5b
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    if-gtz v0, :cond_84

    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->breakCd:I

    if-gtz v0, :cond_84

    const v0, 0x458ca000    # 4500.0f

    cmpg-float v0, p5, v0

    if-gez v0, :cond_84

    .line 224
    const/16 v0, 0x4650

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->breakCd:I

    .line 225
    const/16 v0, 0x4b0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    .line 226
    const-string v0, "SHIELD BREAKER"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Ljava/lang/String;FFF)V

    goto :goto_4

    .line 227
    :cond_84
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    if-lez v0, :cond_4

    .line 228
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    int-to-long v0, v0

    sub-long v0, v0, p3

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    .line 229
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    if-gtz v0, :cond_4

    .line 230
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I

    .line 231
    const/4 v0, 0x0

    .line 232
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v1, :cond_b4

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b4

    .line 233
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    .line 234
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sub-float/2addr v2, v0

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    :cond_b4
    move v12, v0

    .line 236
    const-string v0, "fx_shock"

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x44610000    # 900.0f

    const-wide/16 v6, 0x258

    const v8, 0x3eb33333    # 0.35f

    const v9, 0x3f0ccccd    # 0.55f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 238
    const-string v0, "Shield drained!"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shield breaker drained "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static spawn(Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;
    .registers 14

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->active()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 97
    :goto_9
    return-object v0

    .line 63
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 64
    const/4 v1, 0x0

    :goto_10
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    if-ge v1, v0, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    move v0, v1

    :goto_22
    add-int/lit8 v1, v1, 0x1

    move v8, v0

    goto :goto_10

    .line 65
    :cond_26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v9, v0, v8

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->POL:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v8

    if-nez v0, :cond_5e

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->POL:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->council(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 67
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    const-string v3, "%s High Council Titan"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v5, 0x3ed70a3d    # 0.42f

    const v6, 0x3e3851ec    # 0.18f

    const v7, 0x3f1eb852    # 0.62f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    .line 68
    :goto_5c
    aput-object v0, v10, v8

    .line 71
    :cond_5e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    if-eqz v0, :cond_b5

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 72
    :goto_6e
    const/4 v1, 0x0

    const/16 v2, 0x28

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->POL:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v8

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v8, v1, p2, v0, v2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawnPolice(IILfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;F)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 74
    if-nez v0, :cond_b7

    const/4 v0, 0x0

    goto/16 :goto_9

    .line 68
    :cond_8f
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    const-string v3, "%s Police Titan"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3f0ccccd    # 0.55f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    goto :goto_5c

    .line 96
    :catch_b1
    move-exception v0

    .line 97
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 71
    :cond_b5
    const/4 v0, 0x0

    goto :goto_6e

    .line 75
    :cond_b7
    const/4 v2, 0x6

    invoke-static {v1, v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldStats(III)[F

    move-result-object v2

    .line 76
    if-eqz v2, :cond_dc

    .line 77
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModV34$Sh;-><init>()V

    .line 78
    const/4 v4, 0x0

    aget v4, v2, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    .line 79
    const/4 v4, 0x1

    aget v4, v2, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    .line 80
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_dc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pol_cap_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pol_cap_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Ljava/lang/String;)V

    .line 84
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 85
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->name:Ljava/lang/String;

    .line 86
    const/16 v3, 0x1388

    sput v3, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockCd:I

    .line 87
    const/16 v3, 0x2328

    sput v3, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->breakCd:I

    .line 88
    const/4 v3, 0x0

    sput v3, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    .line 89
    const/4 v3, 0x0

    sput v3, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->chargeMs:I
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_120} :catch_b1

    .line 90
    :try_start_120
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_123} :catch_19a

    .line 91
    :goto_123
    :try_start_123
    const-string v3, "flagship_horn"

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f59999a    # 0.85f

    const-wide/16 v6, 0xbb8

    invoke-static {v3, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 92
    const-string v3, "warp_in"

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3f333333    # 0.7f

    const-wide/16 v6, 0x3e8

    invoke-static {v3, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 93
    const-string v3, "%s has arrived. It will not stop until you are destroyed."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spawn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " hull="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " shield="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_18e

    const/4 v1, 0x0

    :goto_181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_18e
    const/4 v1, 0x0

    aget v1, v2, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_198
    .catch Ljava/lang/Throwable; {:try_start_123 .. :try_end_198} :catch_b1

    move-result v1

    goto :goto_181

    .line 90
    :catch_19a
    move-exception v3

    goto :goto_123

    :cond_19c
    move v0, v8

    goto/16 :goto_22
.end method

.method public static standDown()V
    .registers 13

    .prologue
    .line 109
    sget-object v12, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 110
    if-nez v12, :cond_5

    .line 124
    :cond_4
    :goto_4
    return-void

    .line 111
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 112
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->endLockdown()V

    .line 114
    :try_start_b
    iget-boolean v0, v12, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_4

    .line 115
    const-string v0, "fx_shock"

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v3, v12, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v12, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x45034000    # 2100.0f

    const-wide/16 v6, 0x384

    const v8, 0x3eb33333    # 0.35f

    const v9, 0x3f0ccccd    # 0.55f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 116
    const-string v0, "warp_in"

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f99999a    # 1.2f

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, v12, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    .line 118
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v0, "%s warps out."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 120
    const-string v0, "stand down"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_5d} :catch_5e

    goto :goto_4

    .line 121
    :catch_5e
    move-exception v0

    goto :goto_4
.end method

.method private static testSpawn(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    .line 171
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 172
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 173
    if-ltz v0, :cond_75

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_75

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v2, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 174
    :goto_19
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, -0x3add8000    # -2600.0f

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 175
    iget v2, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->spawn(Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test spawn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_78

    const-string v0, " FAILED"

    :goto_69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V

    .line 180
    :goto_74
    return-void

    .line 173
    :cond_75
    const-string v0, "warden"

    goto :goto_19

    .line 176
    :cond_78
    const-string v0, ""
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7a} :catch_7b

    goto :goto_69

    .line 177
    :catch_7b
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test spawn error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V

    goto :goto_74
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    .line 154
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testMs:I

    if-ltz v0, :cond_18

    .line 155
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testMs:I

    .line 156
    sget v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testMs:I

    if-gez v0, :cond_18

    if-eqz p0, :cond_18

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_18

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->testSpawn(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 158
    :cond_18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 159
    if-eqz v0, :cond_2d

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_2d

    if-eqz p0, :cond_2d

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_2d

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v1, :cond_2d

    .line 160
    :try_start_2a
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_4c

    .line 162
    :cond_2d
    :goto_2d
    sget v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    if-lez v1, :cond_47

    if-eqz p0, :cond_47

    .line 163
    sget v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    int-to-long v2, v1

    sub-long/2addr v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    .line 164
    sget v1, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockMs:I

    if-lez v1, :cond_44

    if-eqz v0, :cond_44

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-eqz v0, :cond_48

    :cond_44
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->endLockdown()V

    .line 167
    :cond_47
    :goto_47
    return-void

    .line 165
    :cond_48
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->lockdown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_47

    .line 160
    :catch_4c
    move-exception v1

    goto :goto_2d
.end method

.method private static use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Ljava/lang/String;FFF)V
    .registers 11

    .prologue
    .line 246
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->name:Ljava/lang/String;

    const/16 v5, 0x898

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callout(Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 248
    const-string v0, "doom_charge"

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f99999a    # 1.2f

    const-wide/16 v4, 0x190

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->log(Ljava/lang/String;)V

    .line 250
    return-void
.end method
