.class final Lfr/testudo/spacecorsair/mod/ModPoliceData;
.super Ljava/lang/Object;
.source "ModPoliceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;,
        Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;
    }
.end annotation


# static fields
.field static final AI:[I

.field static final CLASSES:I = 0x6

.field static final CLASS_MAX:[I

.field static final CLASS_MIN:[I

.field static final CLASS_SIZE:[I

.field static final PREFIX:Ljava/lang/String; = "pol_"

.field static final ROSTER:[[[Ljava/lang/String;

.field static final TINT_B:F = 1.0f

.field static final TINT_G:F = 0.75f

.field static final TINT_R:F = 0.55f

.field private static final drawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 23
    new-array v0, v10, [I

    fill-array-data v0, :array_1e4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->CLASS_SIZE:[I

    .line 25
    new-array v0, v10, [I

    fill-array-data v0, :array_1f4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->CLASS_MIN:[I

    .line 26
    new-array v0, v10, [I

    fill-array-data v0, :array_204

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->CLASS_MAX:[I

    .line 28
    new-array v0, v10, [I

    fill-array-data v0, :array_214

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->AI:[I

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [[[Ljava/lang/String;

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bastion:130"

    aput-object v3, v2, v6

    const-string v3, "hornet:200"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "mantis:300"

    aput-object v3, v2, v6

    aput-object v2, v1, v8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "verdant:420"

    aput-object v3, v2, v6

    const-string v3, "secret_spartan:460"

    aput-object v3, v2, v7

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "monolith:600"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "viper:80"

    aput-object v3, v2, v6

    const-string v3, "rv_raider:90"

    aput-object v3, v2, v7

    const-string v3, "rv_gunship:100"

    aput-object v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "bulldog:150"

    aput-object v3, v2, v6

    const-string v3, "rv_hunter:120"

    aput-object v3, v2, v7

    const-string v3, "rv_marauder:150"

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "albatros:300"

    aput-object v3, v2, v6

    const-string v3, "raptor:300"

    aput-object v3, v2, v7

    const-string v3, "rv_corsair:160"

    aput-object v3, v2, v8

    const-string v3, "rv_lancer:190"

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "warlord:400"

    aput-object v3, v2, v6

    const-string v3, "rv_warlord:300"

    aput-object v3, v2, v7

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "secret_reaver:640"

    aput-object v4, v3, v6

    const-string v4, "rv_dreadnought:420"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "kt_scout:90"

    aput-object v3, v2, v6

    const-string v3, "kt_bomber:100"

    aput-object v3, v2, v7

    const-string v3, "kt_frigate:150"

    aput-object v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "kt_destroyer:180"

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "secret_kretari:330"

    aput-object v3, v2, v6

    const-string v3, "kt_cruiser:260"

    aput-object v3, v2, v7

    const-string v3, "kt_heavycruiser:300"

    aput-object v3, v2, v8

    aput-object v2, v1, v8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "harbinger:420"

    aput-object v3, v2, v6

    const-string v3, "kt_battlecruiser:380"

    aput-object v3, v2, v7

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "kt_battleship:450"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "kt_mothership:700"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "cobalt:190"

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "hydra:300"

    aput-object v3, v2, v6

    const-string v3, "cardinal:320"

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "sovereign:440"

    aput-object v3, v2, v6

    const-string v3, "sunlance:460"

    aput-object v3, v2, v7

    const-string v3, "secret_varn:460"

    aput-object v3, v2, v8

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "wraith:600"

    aput-object v4, v3, v6

    const-string v4, "bastille:660"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "moth:800"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v10, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v2, v6

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "sanctum:300"

    aput-object v4, v3, v6

    const-string v4, "ironside:320"

    aput-object v4, v3, v7

    aput-object v3, v2, v8

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "tempest:600"

    aput-object v5, v4, v6

    const-string v5, "imperator:640"

    aput-object v5, v4, v7

    const-string v5, "secret_ironclad:640"

    aput-object v5, v4, v8

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v10, [[Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "comet:90"

    aput-object v4, v3, v6

    const-string v4, "talon:85"

    aput-object v4, v3, v7

    const-string v4, "nightjar:95"

    aput-object v4, v3, v8

    aput-object v3, v2, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "aurora:150"

    aput-object v4, v3, v6

    const-string v4, "raven:150"

    aput-object v4, v3, v7

    aput-object v3, v2, v7

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v2, v8

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "secret_helion:460"

    aput-object v4, v3, v6

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-array v4, v6, [Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "shade:70"

    aput-object v3, v2, v6

    const-string v3, "kite:90"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "seraph:140"

    aput-object v3, v2, v6

    const-string v3, "tidewarden:130"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "secret_warden:330"

    aput-object v3, v2, v6

    aput-object v2, v1, v8

    new-array v2, v6, [Ljava/lang/String;

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->drawables:Ljava/util/Map;

    return-void

    .line 23
    nop

    :array_1e4
    .array-data 4
        0x5f
        0xa0
        0x12c
        0x19a
        0x244
        0x320
    .end array-data

    .line 25
    :array_1f4
    .array-data 4
        0x3c
        0x6e
        0xd2
        0x14a
        0x1ae
        0x26c
    .end array-data

    .line 26
    :array_204
    .array-data 4
        0x64
        0xc8
        0x140
        0x1a4
        0x258
        0x384
    .end array-data

    .line 28
    :array_214
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x3
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arts()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    array-length v6, v5

    move v3, v1

    :goto_a
    if-ge v3, v6, :cond_38

    aget-object v7, v5, v3

    array-length v8, v7

    move v2, v1

    :goto_10
    if-ge v2, v8, :cond_34

    aget-object v9, v7, v2

    array-length v10, v9

    move v0, v1

    :goto_16
    if-ge v0, v10, :cond_30

    aget-object v11, v9, v0

    .line 99
    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v11, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 100
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_30
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_34
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    .line 102
    :cond_38
    return-object v4
.end method

.method static drawable(Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 7

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pol_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_20

    move-object v1, v2

    .line 127
    :goto_1c
    if-nez v1, :cond_28

    const/4 v0, 0x0

    .line 136
    :cond_1f
    :goto_1f
    return-object v0

    .line 126
    :cond_20
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    move-object v1, v0

    goto :goto_1c

    .line 128
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_72

    const-string v0, "pol_"

    :goto_31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->drawables:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Drawable;

    .line 130
    if-eqz v0, :cond_59

    iget-object v4, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v4, v1, :cond_1f

    .line 131
    :cond_59
    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v0, v0

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v5, v5

    invoke-direct {v4, v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 132
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 133
    if-eqz v2, :cond_75

    .line 134
    :goto_6c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceData;->drawables:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 128
    :cond_72
    const-string v0, "tint:"

    goto :goto_31

    .line 133
    :cond_75
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v4, v4

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v1, v2, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Drawable;)V

    move-object v0, v1

    goto :goto_6c
.end method

.method static hull(III)Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->sourceClass(II)I

    move-result v1

    .line 82
    if-gez v1, :cond_9

    const/4 v0, 0x0

    .line 86
    :goto_8
    return-object v0

    .line 83
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    .line 84
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 85
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->sizeFor(III)I

    move-result v1

    invoke-direct {v0, v4, p1, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;-><init>(Ljava/lang/String;II)V

    goto :goto_8
.end method

.method static randomHull(II)Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;
    .registers 6

    .prologue
    .line 90
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->sourceClass(II)I

    move-result v0

    .line 91
    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 92
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    aget-object v1, v1, p0

    aget-object v0, v1, v0

    array-length v0, v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->hull(III)Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;

    move-result-object v0

    goto :goto_7
.end method

.method static sizeFor(III)I
    .registers 5

    .prologue
    .line 75
    if-eq p1, p0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->CLASS_SIZE:[I

    aget v0, v0, p0

    .line 76
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->CLASS_MIN:[I

    aget v0, v0, p0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceData;->CLASS_MAX:[I

    aget v1, v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6
.end method

.method static sourceClass(II)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 65
    if-ltz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_a

    :cond_8
    move p1, v1

    .line 70
    :cond_9
    :goto_9
    return p1

    .line 66
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    aget-object v2, v0, p0

    .line 67
    aget-object v0, v2, p1

    array-length v0, v0

    if-gtz v0, :cond_9

    .line 68
    add-int/lit8 v0, p1, -0x1

    :goto_15
    if-ltz v0, :cond_21

    aget-object v3, v2, v0

    array-length v3, v3

    if-lez v3, :cond_1e

    move p1, v0

    goto :goto_9

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 69
    :cond_21
    add-int/lit8 p1, p1, 0x1

    :goto_23
    const/4 v0, 0x6

    if-ge p1, v0, :cond_2e

    aget-object v0, v2, p1

    array-length v0, v0

    if-gtz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_2e
    move p1, v1

    .line 70
    goto :goto_9
.end method
