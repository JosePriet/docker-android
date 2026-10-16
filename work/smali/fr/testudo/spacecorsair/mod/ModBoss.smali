.class public Lfr/testudo/spacecorsair/mod/ModBoss;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "ModBoss.java"


# static fields
.field private static final DESC:[Ljava/lang/String;

.field private static final DONE:Ljava/lang/String;

.field public static final EMPRESS:I = 0x2

.field public static final GUARDIAN:I = 0x1

.field public static final MATRIARCH:I = 0x0

.field private static final MISSION_NAMES:[Ljava/lang/String;

.field private static final NAMES:[Ljava/lang/String;

.field public static final TEXT_BASE:I = 0x7f7f0000

.field private static distKind:I

.field private static distM:I

.field private static distText:Ljava/lang/String;

.field private static final pos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field private boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field private completed:Z

.field private enraged:Z

.field private final hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private inHub:Z

.field private inZone:Z

.field private instr:Ljava/lang/String;

.field private instrDist:I

.field private instrInv:Z

.field private instrPct:I

.field private introDone:Z

.field private invulnTimer:I

.field private final kind:I

.field private final level:I

.field private shield33:Z

.field private shield66:Z

.field private final spawn:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final station:Ljava/lang/String;

.field private timerA:I

.field private timerB:I

.field private final tmp:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final zone:Lfr/testudo/spacecorsair/game/levels/LevelId;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Banshee Matriarch"

    aput-object v1, v0, v2

    const-string v1, "Guardian Prime"

    aput-object v1, v0, v3

    const-string v1, "Hive Empress"

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "The Matriarch"

    aput-object v1, v0, v2

    const-string v1, "Rogue Cruiser"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Queen of the Hive"

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->MISSION_NAMES:[Ljava/lang/String;

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Long-range scanners picked up an enormous Banshee UFO hunting convoys in the <b>Hermes</b> sector. Pilots call her the Matriarch.<br><br><b>Known behaviour</b>: she blinks next to her prey every few seconds, and below a third of her hull she calls Arwing escorts, burns twice as hard and blinks more often.<br><br><b>Reward</b>: Banshee Beam Lev. 5 and Arwing Plasma Bolt Lev. 5."

    .line 38
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "A Guardian-class cruiser has stopped answering SPARTAN command codes and is shelling traffic in the <b>Solar Field</b>. SPARTAN wants it gone before the press hears about it.<br><br><b>Known behaviour</b>: repulsion shockwaves that also burn your hull if you get within 450, heavy missile salvos, and at two thirds and one third of its hull it raises an invulnerable SPARTAN shield for 6 seconds and launches two Defensor escorts.<br><br><b>Reward</b>: Megatron Heavy Battery Lev. 10 and Megatron Salvo Missile Lev. 10."

    .line 42
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "The alien hive has crowned an Empress. Her command ship sits deep in <b>The Hive</b>, spawning broods without end.<br><br><b>Known behaviour</b>: everything a Regent does, plus volleys of three rooting shots every 8 seconds, a venom aura that burns anything within 500, and once she drops under 30% she regenerates 20% of her hull and releases two Banshees.<br><br><b>Reward</b>: Regent Venom Beam Lev. 15 and Regent Hive Bay Lev. 15."

    .line 47
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->DESC:[Ljava/lang/String;

    .line 52
    const-string v0, "Target destroyed. The reward has been transferred to your hold."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->DONE:Ljava/lang/String;

    .line 112
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 114
    sput v6, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    sput v6, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    return-void
.end method

.method private constructor <init>(IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 166
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 152
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45abe000    # 5500.0f

    const v2, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->spawn:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 153
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 167
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    .line 168
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    .line 169
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 170
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 171
    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static addMissions(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_3

    .line 94
    :cond_2
    :goto_2
    return-void

    .line 79
    :cond_3
    :try_start_3
    const-string v0, "VENTOHIGH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 80
    const-string v0, "VENTOHIGH_MOD_BOSS_MATRIARCH"

    const/4 v1, 0x0

    const/4 v2, 0x7

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v5, "ventohigh Command Center"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "alienBeamLaserL5"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "arwingBoltLaserL5"

    aput-object v8, v6, v7

    const/16 v7, 0xbb8

    const/16 v8, 0x61a8

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModBoss;->make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :catch_2e
    move-exception v0

    goto :goto_2

    .line 83
    :cond_30
    const-string v0, "SPARTAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 84
    const-string v0, "SPARTAN_MOD_BOSS_GUARDIAN"

    const/4 v1, 0x1

    const/16 v2, 0xa

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v5, "spartan headquarters"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "megatronBatteryL10"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "megatronSalvoL10"

    aput-object v8, v6, v7

    const/16 v7, 0x1770

    const v8, 0xea60

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModBoss;->make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_5d
    const-string v0, "OMICRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "OMICRON_MOD_BOSS_EMPRESS"

    const/4 v1, 0x2

    const/16 v2, 0xe

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v5, "omicron spaceport"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "regentBeamLaserL15"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "regentHiveBayL15"

    aput-object v8, v6, v7

    const/16 v7, 0x2ee0

    const v8, 0x249f0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModBoss;->make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_89} :catch_2e

    goto/16 :goto_2
.end method

.method private static beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    .registers 3

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fakeProjectile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 338
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 340
    :goto_14
    return-object v0

    .line 339
    :catch_15
    move-exception v0

    .line 340
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private bossPhysic(J)V
    .registers 16

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const v8, 0x3e4ccccd    # 0.2f

    const v12, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    .line 240
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_20

    if-eqz v1, :cond_20

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_21

    .line 332
    :cond_20
    :goto_20
    return-void

    .line 242
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 243
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v3, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v0, v3

    .line 244
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    if-nez v3, :cond_6d

    const v3, 0x451c4000    # 2500.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6d

    .line 245
    iput-boolean v10, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ENGAGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v11, v12, v12}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 247
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 248
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v3, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 250
    :cond_6d
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    if-eqz v3, :cond_20

    .line 251
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    int-to-long v4, v3

    sub-long/2addr v4, p1

    long-to-int v3, v4

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 252
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    int-to-long v4, v3

    sub-long/2addr v4, p1

    long-to-int v3, v4

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 254
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v3, :cond_12a

    .line 255
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v3, :cond_b5

    const v3, 0x3eb33333    # 0.35f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_b5

    .line 256
    iput-boolean v10, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v3, v4

    iput v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_a9

    iget v3, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iput v3, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 260
    :cond_a9
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModBoss;->escort(II)V

    .line 261
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v3, "ENRAGED"

    invoke-static {v0, v3, v11, v8, v8}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 263
    :cond_b5
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_20

    const v0, 0x453b8000    # 3000.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_20

    .line 264
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-static {v0, v2, v8, v3, v4}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 265
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    .line 266
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x407e000000000000L    # 480.0

    mul-double/2addr v4, v6

    double-to-float v1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x407e000000000000L    # 480.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 267
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 268
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 269
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v0, v1, v8, v2, v3}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 271
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-eqz v0, :cond_127

    const/16 v0, 0xfa0

    :goto_123
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    goto/16 :goto_20

    :cond_127
    const/16 v0, 0x1b58

    goto :goto_123

    .line 273
    :cond_12a
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-ne v3, v10, :cond_1dd

    .line 274
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    if-lez v3, :cond_19e

    .line 275
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    int-to-long v4, v0

    sub-long/2addr v4, p1

    long-to-int v0, v4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 276
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    if-gtz v0, :cond_14d

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-static {v0, v12, v3, v11, v4}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 278
    const/16 v0, 0x1f4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 280
    :cond_14d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    if-gtz v0, :cond_164

    .line 281
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v3, "SHIELD DOWN"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v3, v6, v4, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 293
    :cond_164
    :goto_164
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_20

    .line 294
    const/high16 v0, 0x43e10000    # 450.0f

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_198

    .line 295
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/16 v2, 0x12c

    const/16 v3, 0x3e8

    const/16 v4, 0x320

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V

    .line 296
    iget v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 299
    :cond_198
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    goto/16 :goto_20

    .line 284
    :cond_19e
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    if-nez v3, :cond_1a9

    const v3, 0x3f28f5c3    # 0.66f

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1b4

    :cond_1a9
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    if-nez v3, :cond_164

    const v3, 0x3ea8f5c3    # 0.33f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_164

    .line 285
    :cond_1b4
    const v3, 0x3ea8f5c3    # 0.33f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1bd

    iput-boolean v10, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    .line 286
    :cond_1bd
    iput-boolean v10, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    .line 287
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-boolean v10, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 288
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 290
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->escort(II)V

    .line 291
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v3, "SPARTAN SHIELD UP"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v3, v6, v4, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_164

    .line 302
    :cond_1dd
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v3, :cond_21f

    cmpg-float v0, v0, v12

    if-gez v0, :cond_21f

    .line 303
    iput-boolean v10, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 304
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v3, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v4, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setNewLife(F)V

    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_20f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v3, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 306
    :cond_20f
    const/4 v0, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModBoss;->escort(II)V

    .line 307
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v3, "BROOD SURGE"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6, v11, v6}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 309
    :cond_21f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_2aa

    const v0, 0x45098000    # 2200.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2aa

    .line 310
    const/4 v0, -0x1

    :goto_22b
    if-gt v0, v10, :cond_29f

    .line 311
    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    iget-object v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    iget-object v5, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 312
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v4, v6

    mul-int/lit8 v3, v0, 0xf

    int-to-double v6, v3

    add-double/2addr v4, v6

    .line 313
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v3

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v6, v6, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/16 v7, 0x8

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v9, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->root100_4sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v3, v6, v7, v8, v9}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v3

    .line 314
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v7, v7, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 315
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x0

    const/high16 v8, -0x3ed00000    # -11.0f

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 316
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 317
    double-to-float v4, v4

    iput v4, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 318
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_22b

    .line 320
    :cond_29f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 321
    const/16 v0, 0x1f40

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 323
    :cond_2aa
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    if-gtz v0, :cond_20

    .line 324
    const/high16 v0, 0x43fa0000    # 500.0f

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2d0

    .line 325
    iget v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 326
    const/4 v0, 0x3

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 328
    :cond_2d0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {v0, v12, v11, v12, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 329
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    goto/16 :goto_20
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 118
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v2, :cond_7

    .line 143
    :cond_6
    :goto_6
    return-void

    .line 119
    :cond_7
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v11, v2, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 120
    instance-of v2, v11, Lfr/testudo/spacecorsair/mod/ModBoss;

    if-eqz v2, :cond_6

    move-object v2, v11

    .line 121
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget-object v12, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 122
    if-eqz v12, :cond_6

    iget-boolean v2, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_6

    .line 123
    invoke-static {v12}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 124
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 125
    if-eqz v2, :cond_6

    .line 126
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 127
    const/high16 v4, 0x43020000    # 130.0f

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v5, v3

    add-float v13, v4, v5

    .line 128
    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v2, v4

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v6

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_13f

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    :goto_63
    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v2, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v4

    add-float v14, v2, v3

    .line 131
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    neg-float v4, v14

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 132
    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v16, 0x406f400000000000L    # 250.0

    div-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float/2addr v3, v4

    add-float v7, v2, v3

    .line 133
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3e19999a    # 0.15f

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 134
    check-cast v11, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    iget-object v3, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    float-to-int v3, v3

    .line 135
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    if-eqz v4, :cond_d3

    sget v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    if-ne v2, v4, :cond_d3

    sget v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    if-eq v3, v4, :cond_fa

    .line 136
    :cond_d3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    .line 137
    sput v2, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    .line 138
    sput v3, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    .line 140
    :cond_fa
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    .line 141
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v13

    add-float/2addr v4, v14

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_6

    .line 130
    :cond_13f
    const/16 v2, 0xc8

    goto/16 :goto_63
.end method

.method private escort(II)V
    .registers 15

    .prologue
    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 226
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_54

    .line 228
    if-nez p1, :cond_43

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v0

    .line 231
    :goto_14
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    sub-double/2addr v4, v8

    double-to-float v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 232
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 233
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 234
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 235
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 226
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 229
    :cond_43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4d

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_14

    .line 230
    :cond_4d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    goto :goto_14

    .line 237
    :cond_54
    return-void
.end method

.method private instruction()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 427
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-eqz v0, :cond_4b

    .line 428
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dock at "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to claim your reward"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_2e
    return-object v0

    .line 428
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Return to "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 430
    :cond_4b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-nez v0, :cond_7b

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Go to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and hunt the "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 433
    :cond_7b
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 434
    if-eqz v1, :cond_83

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_a1

    .line 435
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroy the "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 437
    :cond_a1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 438
    const/high16 v0, 0x42c80000    # 100.0f

    iget v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    mul-float/2addr v0, v4

    iget v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 439
    if-eqz v3, :cond_d3

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-int v0, v0

    .line 440
    :goto_be
    iget-boolean v5, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 442
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    .line 443
    if-eqz v1, :cond_d6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrPct:I

    if-ne v4, v6, :cond_d6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrDist:I

    if-ne v0, v6, :cond_d6

    iget-boolean v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrInv:Z

    if-ne v5, v6, :cond_d6

    move-object v0, v1

    goto/16 :goto_2e

    .line 439
    :cond_d3
    const/high16 v0, -0x80000000

    goto :goto_be

    .line 444
    :cond_d6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  HP "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    div-int/lit8 v1, v4, 0xa

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 447
    :goto_102
    if-ge v2, v8, :cond_112

    if-ge v2, v7, :cond_10f

    const/16 v1, 0x7c

    :goto_108
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_102

    :cond_10f
    const/16 v1, 0x2e

    goto :goto_108

    .line 448
    :cond_112
    if-eqz v3, :cond_123

    .line 449
    const-string v1, "  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_123
    if-eqz v5, :cond_12a

    const-string v1, "  [SHIELDED]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_12a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrPct:I

    .line 454
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrDist:I

    .line 455
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrInv:Z

    .line 456
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    move-object v0, v1

    .line 457
    goto/16 :goto_2e
.end method

.method public static isBoss(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_8

    .line 177
    :goto_7
    return v1

    .line 176
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 177
    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    if-eqz v2, :cond_1d

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v0, p0, :cond_1d

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    move v1, v0

    goto :goto_7

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method

.method private static make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 22

    .prologue
    .line 97
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 98
    move-object/from16 v0, p6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_1b

    aget-object v4, p6, v2

    .line 99
    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 101
    :cond_1b
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModBoss;

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModBoss;-><init>(IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 102
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/Mission;

    const v5, 0x7f070136

    const/high16 v4, 0x7f7f0000

    add-int v6, v4, p1

    const v4, 0x7f7f000a

    add-int v7, v4, p1

    const/4 v8, 0x0

    .line 103
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v9, v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v11

    const/4 v12, 0x0

    move-object v4, p0

    move v9, p2

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 104
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->MISSION_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/mission/Mission;->localizedName:Ljava/lang/String;

    .line 105
    return-object v3
.end method

.method private markGates(Z)V
    .registers 4

    .prologue
    .line 346
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-nez v0, :cond_21

    .line 347
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-nez v0, :cond_20

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_20

    .line 350
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 351
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 371
    :cond_20
    :goto_20
    return-void

    .line 355
    :cond_21
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    if-eqz v0, :cond_39

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_39

    .line 358
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 359
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 362
    :cond_39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_20

    .line 364
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 365
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_20

    .line 368
    :catch_52
    move-exception v0

    goto :goto_20
.end method

.method private onBossDead()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 374
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-eqz v0, :cond_6

    .line 380
    :goto_5
    return-void

    .line 375
    :cond_6
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->bossBonus(I)V

    .line 379
    invoke-direct {p0, v4}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    goto :goto_5
.end method

.method private spawnBoss()V
    .registers 8

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    add-int/lit8 v0, v0, 0x2

    .line 184
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v1, :cond_6e

    .line 185
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v1

    .line 186
    const/high16 v0, 0x41200000    # 10.0f

    .line 194
    :goto_12
    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 195
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 196
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 197
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 198
    iput v6, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 199
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 200
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_39

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v6}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 201
    :cond_39
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->spawn:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 202
    iput-boolean v5, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 204
    const v0, 0x469c4000    # 20000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 205
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarPointSize:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarPointSize:F

    .line 206
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 208
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 209
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    .line 210
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    .line 211
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 212
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 213
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 214
    return-void

    .line 187
    :cond_6e
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-ne v1, v5, :cond_79

    .line 188
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v1

    .line 189
    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_12

    .line 191
    :cond_79
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v1

    .line 192
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_12
.end method

.method public static text(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 55
    const/high16 v0, 0x7f7f0000

    sub-int v0, p0, v0

    .line 56
    if-ltz v0, :cond_e

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->DESC:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 72
    :cond_d
    :goto_d
    return-object v0

    .line 57
    :cond_e
    const/16 v1, 0xa

    if-lt v0, v1, :cond_40

    const/16 v1, 0xd

    if-ge v0, v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0xa

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b> destroyed.<br><br>"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 58
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->text(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_d

    .line 63
    :try_start_46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 64
    if-eqz v0, :cond_50

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    if-nez v0, :cond_89

    .line 65
    :cond_50
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->appString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "corsair_titans"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "ModText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "early lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_82} :catch_83

    goto :goto_d

    .line 69
    :catch_83
    move-exception v0

    .line 70
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->appString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 72
    :cond_89
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 3

    .prologue
    .line 110
    return-void
.end method

.method private static wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V
    .registers 8

    .prologue
    .line 217
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v0, p0, v1, p4, v2}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 218
    iput p1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 219
    iput p2, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 220
    iput p3, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 221
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_7

    .line 422
    :cond_6
    :goto_6
    return-object v0

    .line 419
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 420
    :catch_a
    move-exception v0

    .line 421
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    .line 422
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_f

    .line 480
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 482
    :cond_f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->terminate()V

    .line 483
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 467
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 468
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 474
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 4

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModBoss;->bossPhysic(J)V

    .line 407
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->onBossDead()V

    .line 397
    :cond_b
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->onBossDead()V

    .line 402
    :cond_b
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 411
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 385
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 386
    if-eqz p1, :cond_34

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    .line 387
    if-eqz p1, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v2, v1

    :cond_23
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    .line 388
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-nez v0, :cond_30

    .line 389
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->spawnBoss()V

    .line 391
    :cond_30
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 392
    return-void

    :cond_34
    move v0, v2

    .line 386
    goto :goto_14
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 494
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 496
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 497
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 501
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 488
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 490
    return-void
.end method
