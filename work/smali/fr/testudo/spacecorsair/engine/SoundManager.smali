.class public Lfr/testudo/spacecorsair/engine/SoundManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INT_BETWEEN_ENNEMIS_SHOT:I = 0xa

.field public static final INT_BETWEEN_PLAYER_SHOT:I = 0x64

.field public static final SOUND_ACHIEVEMENT_UNLOCK:I = 0x16

.field public static final SOUND_ALIEN_LASER:I = 0x1c

.field public static final SOUND_ALIEN_RAT_LASER:I = 0x1d

.field public static final SOUND_CASH_TRANSACTION:I = 0xd

.field public static final SOUND_DANGER:I = 0xb

.field public static final SOUND_DEFUSE:I = 0x13

.field public static final SOUND_ELECTRIC_SPARK:I = 0x1a

.field public static final SOUND_EXPLODE:I = 0x2

.field public static final SOUND_EXPLODE2:I = 0x9

.field public static final SOUND_EXPLODE3:I = 0xa

.field public static final SOUND_GATELOAD:I = 0x3

.field public static final SOUND_GATEZAP:I = 0x4

.field public static final SOUND_IMPACT_ASTERO:I = 0xc

.field public static final SOUND_LASER5:I = 0x1

.field public static final SOUND_LASERE:I = 0x5

.field public static final SOUND_LOOT_GATHERED:I = 0x8

.field public static final SOUND_MAP_REVEALED:I = 0x17

.field public static final SOUND_MINE_ENGAGED:I = 0x10

.field public static final SOUND_MISSILE_ALERT:I = 0x6

.field public static final SOUND_MISSILE_START:I = 0x7

.field public static final SOUND_MISSION_COMPLETE:I = 0x14

.field public static final SOUND_MISSION_FAILURE:I = 0x15

.field public static final SOUND_PHASE_COMPLETE:I = 0x11

.field public static final SOUND_PIRATE:I = 0xf

.field public static final SOUND_PLAYER_DIE:I = 0x18

.field public static final SOUND_SHOCKWAVE:I = 0x12

.field public static final SOUND_SIGNAL_TRANSFERT:I = 0x1b

.field public static final SOUND_SONAR_BEEP:I = 0x19

.field public static final SOUND_TRASH:I = 0xe


# instance fields
.field private context:Landroid/content/Context;

.field public lastEnnemisLaser:J

.field lastPlayerDanger:J

.field public lastPlayerLaser:J

.field public lastRatLaser:J

.field public lastUfoLaser:J

.field private soundPool:Landroid/media/SoundPool;

.field private soundPoolIndex:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    .line 127
    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastPlayerLaser:J

    .line 173
    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastPlayerDanger:J

    .line 197
    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastEnnemisLaser:J

    .line 198
    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastRatLaser:J

    .line 199
    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastUfoLaser:J

    .line 55
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/SoundManager;->initSounds()V

    .line 57
    return-void
.end method

.method private initSounds()V
    .registers 9

    .prologue
    const v7, 0x7f06000c

    const/16 v6, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 60
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x64

    invoke-direct {v0, v6, v4, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v3, 0x7f060012

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 62
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v7, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 63
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v3, 0x7f06000f

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 64
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060010

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060016

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06001c

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 67
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/4 v1, 0x7

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06001d

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06001a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x9

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v7, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 70
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v3, 0x7f06000d

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0xb

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0xc

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060011

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 73
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0xd

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 74
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0xe

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06002c

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 75
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0xf

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060021

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 76
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x10

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06001b

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x11

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060002

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x12

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060026

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x13

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060008

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 80
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x19

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060028

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 81
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x1a

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060009

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x1b

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060027

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x1c

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060015

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x1d

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060023

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x14

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06001e

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x15

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f06001f

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x16

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const/high16 v4, 0x7f060000

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x17

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060006

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    const/16 v1, 0x18

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const v4, 0x7f060022

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 96
    return-void
.end method

.method private playMissileAlert()V
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 243
    return-void
.end method


# virtual methods
.method public onMissileLockedOnPlayerStarted()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileAlert()V

    .line 233
    return-void
.end method

.method public playAchievementUnlocked()V
    .registers 2

    .prologue
    .line 267
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 268
    return-void
.end method

.method public playAlienLaser()V
    .registers 5

    .prologue
    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 314
    iget-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastUfoLaser:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 315
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 317
    :cond_f
    return-void
.end method

.method public playAlienRatLaser()V
    .registers 5

    .prologue
    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 213
    iget-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastRatLaser:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 214
    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastRatLaser:J

    .line 215
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 220
    :cond_14
    return-void
.end method

.method public playCashTransactionSound()V
    .registers 2

    .prologue
    .line 246
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 248
    return-void
.end method

.method public playDanger()V
    .registers 5

    .prologue
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 176
    iget-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastPlayerDanger:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_14

    .line 177
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 178
    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastPlayerDanger:J

    .line 181
    :cond_14
    return-void
.end method

.method public playDefuse()V
    .registers 2

    .prologue
    .line 294
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 295
    return-void
.end method

.method public playElectricSpark()V
    .registers 2

    .prologue
    .line 303
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 304
    return-void
.end method

.method public playGateLoad()V
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 187
    return-void
.end method

.method public playGateZap()V
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 192
    return-void
.end method

.method public playImpacAstero()V
    .registers 2

    .prologue
    .line 140
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 141
    return-void
.end method

.method public playLaserEnnemis()V
    .registers 5

    .prologue
    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 203
    iget-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastEnnemisLaser:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    .line 204
    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastEnnemisLaser:J

    .line 205
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 209
    :cond_13
    return-void
.end method

.method public playLoot()V
    .registers 5

    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 163
    iget-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastEnnemisLaser:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 164
    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastEnnemisLaser:J

    .line 166
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 169
    :cond_14
    return-void
.end method

.method public playMapRevealed()V
    .registers 2

    .prologue
    .line 276
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 277
    return-void
.end method

.method public playMineEngaged()V
    .registers 2

    .prologue
    .line 282
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 283
    return-void
.end method

.method public playMissileStart()V
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 225
    return-void
.end method

.method public playMissionComplete()V
    .registers 2

    .prologue
    .line 259
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 260
    return-void
.end method

.method public playMissionFailure()V
    .registers 2

    .prologue
    .line 263
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 264
    return-void
.end method

.method public playPhaseComplete()V
    .registers 2

    .prologue
    .line 290
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 291
    return-void
.end method

.method public playPirate()V
    .registers 2

    .prologue
    .line 106
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 107
    return-void
.end method

.method public playPlayerDie()V
    .registers 1

    .prologue
    .line 273
    return-void
.end method

.method public playPlayerLaser()V
    .registers 5

    .prologue
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 131
    iget-wide v2, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastPlayerLaser:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    .line 132
    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->lastPlayerLaser:J

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 137
    :cond_13
    return-void
.end method

.method public playRandomExplode()V
    .registers 5

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 147
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v2, v0, v2

    if-gez v2, :cond_12

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 157
    :goto_11
    return-void

    .line 150
    :cond_12
    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v0, v0, v2

    if-gez v0, :cond_21

    .line 151
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    goto :goto_11

    .line 153
    :cond_21
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    goto :goto_11
.end method

.method public playShockWave()V
    .registers 2

    .prologue
    .line 286
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 287
    return-void
.end method

.method public playSignalTransfert()V
    .registers 2

    .prologue
    .line 307
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 308
    return-void
.end method

.method public playSonarbeep()V
    .registers 2

    .prologue
    .line 299
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 300
    return-void
.end method

.method public playSound(I)I
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(IZ)I

    move-result v0

    return v0
.end method

.method public playSound(IZ)I
    .registers 10

    .prologue
    const/4 v2, 0x3

    const/4 v5, -0x1

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    if-nez v0, :cond_b

    .line 120
    :goto_a
    return v5

    .line 114
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 115
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    .line 116
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    .line 117
    div-float v2, v1, v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->sfx()F

    move-result v0

    mul-float/2addr v2, v0

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/SoundManager;->soundPoolIndex:[I

    aget v1, v1, p1

    const/4 v4, 0x1

    if-eqz p2, :cond_32

    :goto_2a
    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v5

    goto :goto_a

    :cond_32
    const/4 v5, 0x0

    goto :goto_2a
.end method

.method public playTrash()V
    .registers 2

    .prologue
    .line 251
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSound(I)I

    .line 253
    return-void
.end method
