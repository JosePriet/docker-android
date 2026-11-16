.class final Lfr/testudo/spacecorsair/mod/ModLanCheck;
.super Ljava/lang/Object;
.source "ModLanCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;,
        Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;
    }
.end annotation


# static fields
.field static final DMG_SLACK:F = 12.0f

.field static final DOOMSDAY_DPS:F = 150000.0f

.field static final HULL_SLACK:F = 1.794f

.field static final MAX_NAME:I = 0x40

.field static final SHIELD_SLACK:F = 2.5f

.field private static volatile best:[[F

.field private static room:F

.field private static roomAt:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allow(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJ)F
    .registers 6

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->allow(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJZ)F

    move-result v0

    return v0
.end method

.method static allow(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJZ)F
    .registers 15

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 237
    cmpl-float v0, p1, v1

    if-gtz v0, :cond_9

    move p1, v1

    .line 249
    :cond_8
    :goto_8
    return p1

    .line 238
    :cond_9
    if-eqz p0, :cond_8

    .line 239
    if-eqz p4, :cond_23

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dpsPvp:F

    move v2, v0

    :goto_10
    if-eqz p4, :cond_27

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shotPvp:F

    .line 240
    :goto_14
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v2

    .line 241
    cmpl-float v4, v3, v1

    if-lez v4, :cond_21

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_21
    move p1, v1

    goto :goto_8

    .line 239
    :cond_23
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    move v2, v0

    goto :goto_10

    :cond_27
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    goto :goto_14

    .line 242
    :cond_2a
    sget v4, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_38

    sget v4, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3a

    :cond_38
    sput v1, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    .line 243
    :cond_3a
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLanCheck;->roomAt:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_5b

    sput v3, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    .line 245
    :goto_42
    sput-wide p2, Lfr/testudo/spacecorsair/mod/ModLanCheck;->roomAt:J

    .line 246
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 247
    sget v2, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_54

    sget v0, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 248
    :cond_54
    sget v1, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    sub-float/2addr v1, v0

    sput v1, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    move p1, v0

    .line 249
    goto :goto_8

    .line 244
    :cond_5b
    sget v4, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLanCheck;->roomAt:J

    sub-long v6, p2, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-float v5, v6

    mul-float/2addr v2, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    goto :goto_42
.end method

.method static best()[[F
    .registers 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanCheck;->best:[[F

    .line 137
    if-eqz v0, :cond_a

    .line 161
    :goto_9
    return-object v0

    .line 138
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->maxLevel()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 139
    const/4 v0, 0x6

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 140
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v7

    array-length v8, v7

    move v5, v3

    :goto_23
    if-ge v5, v8, :cond_e9

    aget-object v1, v7, v5

    .line 142
    :try_start_27
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_10d

    move-result-object v2

    .line 143
    if-nez v2, :cond_31

    .line 140
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_23

    .line 144
    :cond_31
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v9, "debug"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string v9, "godmode"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string v9, "cheat"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 146
    add-int/lit8 v1, v6, -0x1

    iget v9, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 147
    instance-of v1, v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v1, :cond_88

    .line 148
    aget-object v10, v0, v9

    aget-object v1, v0, v9

    aget v11, v1, v3

    move-object v1, v2

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    int-to-float v1, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v10, v3

    .line 149
    aget-object v1, v0, v9

    aget-object v9, v0, v9

    aget v9, v9, v4

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->laserDps(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v4

    goto :goto_2d

    .line 150
    :cond_88
    instance-of v1, v2, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v1, :cond_ba

    .line 151
    aget-object v10, v0, v9

    aget-object v1, v0, v9

    aget v11, v1, v13

    move-object v1, v2

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v12, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    move-object v1, v2

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v10, v13

    .line 152
    aget-object v1, v0, v9

    aget-object v9, v0, v9

    aget v9, v9, v14

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->missileDps(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v14

    goto/16 :goto_2d

    .line 153
    :cond_ba
    instance-of v1, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v1, :cond_d0

    .line 154
    aget-object v1, v0, v9

    aget-object v9, v0, v9

    aget v9, v9, v15

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v15

    goto/16 :goto_2d

    .line 155
    :cond_d0
    instance-of v1, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    if-eqz v1, :cond_2d

    .line 156
    aget-object v1, v0, v9

    const/4 v10, 0x5

    aget-object v9, v0, v9

    const/4 v11, 0x5

    aget v9, v9, v11

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v2, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v10

    goto/16 :goto_2d

    :cond_e9
    move v2, v4

    .line 159
    :goto_ea
    if-ge v2, v6, :cond_109

    move v1, v3

    :goto_ed
    const/4 v4, 0x6

    if-ge v1, v4, :cond_105

    aget-object v4, v0, v2

    aget-object v5, v0, v2

    aget v5, v5, v1

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    aget v7, v7, v1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    :cond_105
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_ea

    .line 160
    :cond_109
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanCheck;->best:[[F

    goto/16 :goto_9

    .line 142
    :catch_10d
    move-exception v1

    goto/16 :goto_2d
.end method

.method static decode([B)Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x40

    .line 95
    if-eqz p0, :cond_9

    array-length v0, p0

    const/16 v1, 0x258

    if-le v0, v1, :cond_11

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "declaration too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_11
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;-><init>()V

    .line 98
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    .line 99
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    .line 100
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F

    .line 101
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    .line 105
    return-object v1
.end method

.method static encode(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 85
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 89
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static laserDps(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_16

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_18

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15

    :catch_18
    move-exception v0

    move v0, v1

    goto :goto_15
.end method

.method static levelOf(I)I
    .registers 3

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->maxLevel()I

    move-result v1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;
    .registers 22

    .prologue
    .line 167
    new-instance v17, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    invoke-direct/range {v17 .. v17}, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;-><init>()V

    .line 168
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->best()[[F

    move-result-object v13

    .line 169
    if-nez p0, :cond_238

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->maxLevel()I

    move-result v1

    move v5, v1

    .line 170
    :goto_10
    aget-object v18, v13, v5

    .line 171
    if-eqz p0, :cond_24

    move-object/from16 v0, p0

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    if-eq v1, v5, :cond_24

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    .line 172
    :cond_24
    const/4 v1, 0x0

    aget v10, v18, v1

    const/4 v1, 0x1

    aget v1, v18, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    const/4 v1, 0x2

    aget v12, v18, v1

    const/4 v1, 0x3

    aget v11, v18, v1

    const/4 v1, 0x4

    aget v6, v18, v1

    const/4 v1, 0x5

    aget v14, v18, v1

    .line 173
    const/16 v16, 0x4

    .line 174
    const/4 v9, 0x0

    .line 175
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 176
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->exact:Z

    .line 177
    if-eqz p0, :cond_293

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v4

    .line 180
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move/from16 v19, v0

    instance-of v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    move/from16 v20, v0

    .line 181
    if-nez v19, :cond_79

    array-length v6, v13

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v13, v6

    const/4 v13, 0x4

    aget v6, v6, v13

    .line 182
    :cond_79
    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8f

    if-nez v19, :cond_8f

    move-object/from16 v0, v17

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    iput v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    .line 183
    :cond_8f
    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_a5

    if-nez v20, :cond_a5

    move-object/from16 v0, v17

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    iput v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    .line 184
    :cond_a5
    move-object/from16 v0, p0

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    if-ltz v13, :cond_b3

    move-object/from16 v0, p0

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    const/16 v15, 0xa

    if-le v13, v15, :cond_bd

    :cond_b3
    move-object/from16 v0, v17

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    iput v13, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    .line 185
    :cond_bd
    if-eqz v19, :cond_28f

    .line 186
    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 187
    iget v15, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 188
    const/4 v6, 0x1

    iget v13, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    iget v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 190
    :try_start_d4
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v13

    .line 191
    if-eqz v13, :cond_28b

    const/high16 v1, 0x3f800000    # 1.0f

    iget v6, v13, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_e1} :catch_243

    move-result v6

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_e4
    iget v8, v13, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_e9} :catch_286

    move-result v1

    :try_start_ea
    iget-boolean v7, v13, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->doomsday:Z
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_ec} :catch_288

    move v9, v7

    :goto_ed
    move v13, v1

    move v8, v6

    .line 194
    :goto_ef
    if-eqz v20, :cond_249

    move-object v1, v2

    .line 195
    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    int-to-float v6, v1

    .line 196
    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->laserDps(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)F

    move-result v1

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v1, v2

    move v2, v1

    .line 198
    :goto_102
    instance-of v1, v3, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v1, :cond_254

    move-object v1, v3

    .line 199
    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v7, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    move-object v1, v3

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 200
    check-cast v3, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->missileDps(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)F

    move-result v1

    move v3, v1

    .line 202
    :goto_11b
    instance-of v1, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    if-eqz v1, :cond_26c

    move-object v1, v4

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v14, v1

    move v4, v14

    .line 204
    :goto_126
    if-eqz v19, :cond_283

    if-eqz v20, :cond_283

    const/4 v1, 0x1

    :goto_12b
    move-object/from16 v0, v17

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->exact:Z

    move v1, v13

    move v12, v7

    move v10, v6

    .line 206
    :goto_132
    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    move-object/from16 v0, v17

    iput v6, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    .line 207
    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v6

    move-object/from16 v0, v17

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    .line 208
    move-object/from16 v0, v17

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    move-object/from16 v0, v17

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shotPvp:F

    move-object/from16 v0, v17

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    move-object/from16 v0, v17

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dpsPvp:F

    .line 209
    if-eqz v9, :cond_180

    move-object/from16 v0, v17

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    const v3, 0x48127c00    # 150000.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    move-object/from16 v0, v17

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    const v3, 0x48127c00    # 150000.0f

    add-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    .line 210
    :cond_180
    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lfr/testudo/spacecorsair/business/player/XpBuilder;->PLAYER_SHIP_LIFE:[I

    aget v3, v3, v5

    int-to-float v3, v3

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v3, v5

    const v5, 0x3fe5a1cb    # 1.794f

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    .line 211
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shield:F

    .line 212
    const/16 v1, 0x12c

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shotsPerSec:I

    .line 213
    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sane(F)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sane(F)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shotPvp:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sane(F)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shotPvp:F

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dpsPvp:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sane(F)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dpsPvp:F

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sane(F)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shield:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sane(F)F

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shield:F

    .line 214
    if-eqz p0, :cond_237

    .line 215
    move-object/from16 v0, p0

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_20e

    move-object/from16 v0, p0

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    move-object/from16 v0, v17

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_218

    :cond_20e
    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    .line 216
    :cond_218
    move-object/from16 v0, p0

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_22d

    move-object/from16 v0, p0

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F

    move-object/from16 v0, v17

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shield:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_237

    :cond_22d
    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    .line 218
    :cond_237
    return-object v17

    .line 169
    :cond_238
    move-object/from16 v0, p0

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->levelOf(I)I

    move-result v1

    move v5, v1

    goto/16 :goto_10

    .line 192
    :catch_243
    move-exception v1

    move v6, v8

    :goto_245
    move v13, v7

    move v8, v6

    goto/16 :goto_ef

    .line 197
    :cond_249
    const/4 v1, 0x1

    aget v1, v18, v1

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v1, v2

    move v2, v1

    move v6, v10

    goto/16 :goto_102

    .line 201
    :cond_254
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_268

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    :cond_268
    move v3, v11

    move v7, v12

    goto/16 :goto_11b

    .line 203
    :cond_26c
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_280

    move-object/from16 v0, v17

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    :cond_280
    move v4, v14

    goto/16 :goto_126

    .line 204
    :cond_283
    const/4 v1, 0x0

    goto/16 :goto_12b

    .line 192
    :catch_286
    move-exception v1

    goto :goto_245

    :catch_288
    move-exception v7

    move v7, v1

    goto :goto_245

    :cond_28b
    move v1, v7

    move v6, v8

    goto/16 :goto_ed

    :cond_28f
    move v13, v7

    move v15, v6

    goto/16 :goto_ef

    :cond_293
    move v1, v7

    move v4, v14

    move v15, v6

    move v3, v11

    goto/16 :goto_132
.end method

.method private static maxLevel()I
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/business/player/XpBuilder;->PLAYER_SHIP_LIFE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static mine()Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;
    .registers 3

    .prologue
    .line 63
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;-><init>()V

    .line 65
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 66
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 67
    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    .line 68
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->name(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    .line 69
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->name(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    .line 70
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->name(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    .line 71
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->name(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    .line 72
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 74
    if-eqz v0, :cond_4d

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_4e

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    :goto_4b
    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4d} :catch_50

    .line 78
    :cond_4d
    :goto_4d
    return-object v1

    .line 74
    :cond_4e
    const/4 v0, 0x0

    goto :goto_4b

    .line 75
    :catch_50
    move-exception v0

    goto :goto_4d
.end method

.method static missileDps(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)F
    .registers 7

    .prologue
    .line 130
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 131
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    :cond_17
    return v0
.end method

.method private static name(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static reset()V
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLanCheck;->room:F

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLanCheck;->roomAt:J

    return-void
.end method

.method private static sane(F)F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 222
    cmpl-float v1, p0, v0

    if-ltz v1, :cond_d

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return p0

    :cond_d
    move p0, v0

    goto :goto_c
.end method

.method static spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p0, :cond_11

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_12

    .line 121
    :cond_11
    :goto_11
    return-object v0

    .line 119
    :cond_12
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_11

    .line 120
    :catch_1b
    move-exception v1

    goto :goto_11
.end method
