.class public Lfr/testudo/spacecorsair/business/player/XpBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEATH_PENALITY:[I

.field public static final LEVEL_MAX:I = 0x11

.field public static final PLAYER_SHIP_LIFE:[I

.field public static final XP_CAP:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lfr/testudo/spacecorsair/business/player/XpBuilder;->DEATH_PENALITY:[I

    .line 21
    const/16 v0, 0x14

    new-array v0, v0, [J

    fill-array-data v0, :array_52

    sput-object v0, Lfr/testudo/spacecorsair/business/player/XpBuilder;->XP_CAP:[J

    .line 22
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    sput-object v0, Lfr/testudo/spacecorsair/business/player/XpBuilder;->PLAYER_SHIP_LIFE:[I

    return-void

    .line 18
    :array_1c
    .array-data 4
        0xa
        0x14
        0x32
        0x64
        0x96
        0xb4
        0xf0
        0x12c
        0x15e
        0x190
        0x1c2
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
        0x44c
        0x4b0
        0x514
        0x578
        0x640
        0x708
        0x7d0
        0x898
    .end array-data

    .line 21
    :array_52
    .array-data 8
        0x4b0
        0x514
        0x640
        0xaf0
        0x1194
        0x1388
        0x1f40
        0x2ee0
        0x3a98
        0x3e80
        0x4650
        0x4e20
        0x55f0
        0x61a8
        0x7148
        0x84d0
        0x9088
        0x9c40
        0x6ddd0
        0xc350
    .end array-data

    .line 22
    :array_a6
    .array-data 4
        0x12c
        0x15e
        0x190
        0x1c2
        0x1f4
        0x226
        0x258
        0x28a
        0x2bc
        0x320
        0x384
        0x44c
        0x514
        0x640
        0x76c
        0x9c4
        0xbb8
        0xe74
        0x1194
        0x15e0
        0x19c8
        0x1f40
        0x23f0
        0x2774
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static canLootFromEnnemisWithLevel(I)Z
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sub-int/2addr v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getDeathMoneyPenality()I
    .registers 1

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->deathFee()I

    move-result v0

    return v0
.end method

.method public static getMitigedDamage(IIF)F
    .registers 5

    .prologue
    const/4 v0, -0x6

    .line 75
    sub-int v1, p0, p1

    .line 76
    if-ge v1, v0, :cond_16

    .line 79
    :goto_5
    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p2

    .line 80
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_15

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    :cond_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_5
.end method

.method public static getMitigedXp(II)F
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 53
    const/high16 v0, 0x41700000    # 15.0f

    .line 54
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-ge p0, v2, :cond_f

    .line 55
    const/high16 v0, 0x41f00000    # 30.0f

    .line 57
    :cond_f
    int-to-float v2, p1

    int-to-float v3, p1

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sub-int v4, p0, v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 58
    cmpg-float v2, v0, v1

    if-gez v2, :cond_27

    move v0, v1

    .line 61
    :cond_27
    return v0
.end method

.method public static getNextLevelXp(I)J
    .registers 3

    .prologue
    .line 31
    const/16 v0, 0x11

    if-gt p0, v0, :cond_9

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/business/player/XpBuilder;->XP_CAP:[J

    aget-wide v0, v0, p0

    .line 36
    :goto_8
    return-wide v0

    :cond_9
    const-wide/32 v0, 0x3b9aca00

    goto :goto_8
.end method
