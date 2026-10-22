.class public Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 120
    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 126
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlbatros()Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    .line 127
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 129
    return-object v0
.end method

.method public static newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 6

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 116
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 234
    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienBlatteSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienBlatteSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 240
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienBlatte()Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    .line 241
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienBlatteSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    .line 243
    return-object v0
.end method

.method public static newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
    .registers 6

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 230
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 215
    .line 217
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 221
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienRat()Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v0

    .line 222
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    .line 224
    return-object v0
.end method

.method public static newAlienRat(II)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;
    .registers 6

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 211
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 254
    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienTourelleSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienTourelleSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 260
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienTourelle()Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v0

    .line 261
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienTourelleSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    .line 263
    return-object v0
.end method

.method public static newAlienTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
    .registers 6

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 250
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 63
    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 70
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBasicEnnemyShip()Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 71
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    .line 72
    return-object v0
.end method

.method public static newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 6

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 59
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 139
    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->defensorSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->defensorSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 145
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newDefensor()Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 146
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->defensorSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    .line 148
    return-object v0
.end method

.method public static newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 6

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 135
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 6

    .prologue
    .line 14
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ennemis type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not bound to pop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_2a
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 47
    :goto_2e
    return-object v0

    .line 20
    :pswitch_2f
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    goto :goto_2e

    .line 23
    :pswitch_34
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    goto :goto_2e

    .line 26
    :pswitch_39
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    goto :goto_2e

    .line 29
    :pswitch_3e
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    goto :goto_2e

    .line 32
    :pswitch_43
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v0

    goto :goto_2e

    .line 35
    :pswitch_48
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    goto :goto_2e

    .line 38
    :pswitch_4d
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    goto :goto_2e

    .line 41
    :pswitch_52
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(II)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v0

    goto :goto_2e

    .line 44
    :pswitch_57
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    goto :goto_2e

    .line 47
    :pswitch_5c
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v0

    goto :goto_2e

    .line 14
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
        :pswitch_4d
        :pswitch_52
        :pswitch_57
        :pswitch_5c
    .end packed-switch
.end method

.method public static newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 82
    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->tourelleEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->tourelleEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 88
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newFixedTourelle()Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    .line 89
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->tourelleEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    .line 91
    return-object v0
.end method

.method public static newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 6

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 78
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 176
    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->FrelonSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->FrelonSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 182
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newFrelonShip()Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    .line 183
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->FrelonSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 185
    return-object v0
.end method

.method public static newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 6

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 172
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 100
    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->rocketTourelleEnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->rocketTourelleEnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 106
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRocketTourelle()Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    .line 107
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->rocketTourelleEnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    .line 109
    return-object v0
.end method

.method public static newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 6

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 96
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newTaupe(I)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 158
    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->TaupeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->TaupeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 164
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newTaupeShip()Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v0

    .line 165
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->TaupeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 167
    return-object v0
.end method

.method public static newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;
    .registers 6

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 154
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(I)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v0

    return-object v0
.end method

.method public static newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 195
    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 201
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienUfo()Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    .line 202
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    .line 204
    return-object v0
.end method

.method public static newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
    .registers 6

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 191
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    return-object v0
.end method
