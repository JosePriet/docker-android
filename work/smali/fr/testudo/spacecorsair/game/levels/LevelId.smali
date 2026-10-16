.class public final enum Lfr/testudo/spacecorsair/game/levels/LevelId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/game/levels/LevelId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static final RANGE:I = 0x1f4

.field public static final enum SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public static final enum VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;


# instance fields
.field public bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public isMulti:Z

.field public jumpPortalName:Ljava/lang/String;

.field public left:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public final levelMax:I

.field public final levelMin:I

.field public final levelName:Ljava/lang/String;

.field public final levelRange:Ljava/lang/String;

.field public mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

.field public right:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public top:Lfr/testudo/spacecorsair/game/levels/LevelId;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x4

    const/16 v13, 0xd

    const/16 v12, 0xc

    const/4 v2, 0x0

    const/16 v11, 0x8

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "GENESIS"

    const-string v3, "genesis"

    const/4 v4, 0x0

    const v5, -0x40b33333    # -0.8f

    const/4 v7, 0x2

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 21
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "PLANCK_PRIDE"

    const/4 v5, 0x1

    const-string v6, "planck Pride"

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x40400000    # -1.5f

    const/4 v10, 0x2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 22
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "THOR_PASSING"

    const/4 v5, 0x2

    const-string v6, "thor passing"

    const v7, -0x41b33333    # -0.2f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 23
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "VENTOHIGH"

    const/4 v5, 0x3

    const-string v6, "ventohigh"

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    move v9, v14

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 24
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "CONSTELLATION"

    const-string v6, "constellation"

    const v7, 0x3fb33333    # 1.4f

    const v8, 0x3fe66666    # 1.8f

    const/4 v10, 0x5

    move v5, v14

    move v9, v14

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 25
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "TWIN_STAR"

    const/4 v5, 0x5

    const-string v6, "twin stars"

    const/high16 v7, -0x40800000    # -1.0f

    const v8, 0x3fe66666    # 1.8f

    const/4 v10, 0x5

    move v9, v14

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 26
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "PIRATE_BAY"

    const/4 v5, 0x6

    const-string v6, "pirate bay"

    const/high16 v7, 0x40800000    # 4.0f

    const v8, 0x400ccccd    # 2.2f

    const/4 v9, 0x5

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 27
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "HUGO_WISDOM"

    const/4 v5, 0x7

    const-string v6, "hugo wisdom"

    const v7, -0x4059999a    # -1.3f

    const v8, 0x40466666    # 3.1f

    const/4 v9, 0x6

    const/4 v10, 0x7

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 28
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ORE_BELT"

    const-string v6, "ore belt"

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x40466666    # 3.1f

    const/4 v10, 0x5

    move v5, v11

    move v9, v14

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 29
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "HELIOSTAT"

    const/16 v5, 0x9

    const-string v6, "heliostat"

    const v7, 0x3f99999a    # 1.2f

    const v8, 0x40733333    # 3.8f

    const/4 v9, 0x6

    const/4 v10, 0x7

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 30
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "HERMES"

    const/16 v5, 0xa

    const-string v6, "hermes"

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x6

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 31
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "SPARTAN_HQ"

    const/16 v5, 0xb

    const-string v6, "spartan headquarters"

    const v7, -0x404ccccd    # -1.4f

    const v8, 0x40733333    # 3.8f

    move v9, v11

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 32
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "TUTORIAL"

    const-string v6, "tutorial"

    const v7, -0x41b33333    # -0.2f

    const/high16 v8, -0x40000000    # -2.0f

    move v5, v12

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 33
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "THE_WAVE"

    const-string v6, "the wave"

    const/high16 v7, -0x3fc00000    # -3.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/16 v10, 0x9

    move v5, v13

    move v9, v11

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 34
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "GALACTIC_ARENA"

    const/16 v5, 0xe

    const-string v6, "galactic arena"

    const v7, 0x3fb33333    # 1.4f

    const v8, 0x4089999a    # 4.3f

    const/4 v9, 0x1

    const/16 v10, 0x63

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 35
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "SOLAR_FIELD"

    const/16 v5, 0xf

    const-string v6, "solar field"

    const v7, -0x3f766666    # -4.3f

    const v8, 0x40733333    # 3.8f

    const/16 v9, 0x9

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 36
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ORION"

    const/16 v5, 0x10

    const-string v6, "orion"

    const v7, -0x3f766666    # -4.3f

    const v8, 0x400ccccd    # 2.2f

    const/16 v9, 0xa

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 37
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "OMICRON_PRIME"

    const/16 v5, 0x11

    const-string v6, "omicron prime"

    const v7, -0x3f466666    # -5.8f

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v9, 0xa

    const/16 v10, 0xe

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 38
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "THE_VAULT"

    const/16 v5, 0x12

    const-string v6, "the vault"

    const v7, -0x3f79999a    # -4.2f

    const v8, 0x3e99999a    # 0.3f

    move v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 39
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "AERIA_PASSING"

    const/16 v5, 0x13

    const-string v6, "aeria passing"

    const/high16 v7, -0x3f400000    # -6.0f

    const v8, 0x3f333333    # 0.7f

    const/16 v9, 0xa

    const/16 v10, 0xf

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 40
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "ETERNITY"

    const/16 v5, 0x14

    const-string v6, "eternity"

    const/high16 v7, -0x3f400000    # -6.0f

    const/high16 v8, -0x41000000    # -0.5f

    const/16 v9, 0xb

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 41
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "LOST_PARADISE"

    const/16 v5, 0x15

    const-string v6, "lost paradise"

    const v7, -0x3f233333    # -6.9f

    const v8, 0x4019999a    # 2.4f

    const/16 v9, 0xb

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 42
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "GREEN_BORDER"

    const/16 v5, 0x16

    const-string v6, "green border"

    const v7, -0x3f266666    # -6.8f

    const/high16 v8, 0x40600000    # 3.5f

    move v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 43
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "DELTA_NODE"

    const/16 v5, 0x17

    const-string v6, "delta node"

    const v7, -0x3f166666    # -7.3f

    const v8, 0x40966666    # 4.7f

    move v9, v13

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 44
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "THE_HIVE"

    const/16 v5, 0x18

    const-string v6, "the hive"

    const v7, -0x3eeb3333    # -9.3f

    const/high16 v8, 0x40900000    # 4.5f

    const/16 v9, 0xe

    const/16 v10, 0x10

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 45
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "HIGHWAY"

    const/16 v5, 0x19

    const-string v6, "highway"

    const v7, -0x3efb3333    # -8.3f

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v9, 0xa

    const/16 v10, 0xf

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 55
    new-instance v3, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v4, "FFA_THE_PLAYER_PAY"

    const/16 v5, 0x1a

    const-string v6, "player bay"

    const/high16 v7, -0x3c060000    # -500.0f

    const/high16 v8, -0x3c060000    # -500.0f

    const/16 v10, 0x63

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lfr/testudo/spacecorsair/game/levels/LevelId;-><init>(Ljava/lang/String;ILjava/lang/String;FFII)V

    sput-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v11

    const/16 v1, 0x9

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v13

    const/16 v1, 0xe

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setRight(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setRight(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setRight(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setRight(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 140
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 144
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setRight(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 180
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 188
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> thor passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> genesis <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> ventohigh <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> thor passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> ventohigh <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> ore belt <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> ventohigh <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 195
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> ventohigh <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> constellation <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> constellation <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> heliostat <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 199
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> hugo wisdom <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 200
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> genesis <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> spartan headquarters <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 202
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> the wave <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 204
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> solar field <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 205
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> orion <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 206
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> orion <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 207
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> omicron prime <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 208
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> aeria passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 209
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> omicron prime <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> lost paradise <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> green border <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> delta node <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 213
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> lost paradise <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 216
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "> Exit <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    .line 224
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;FFII)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFII)V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    .line 88
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 81
    iput-object p3, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    mul-float v1, p4, v2

    mul-float/2addr v2, p5

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 83
    iput p6, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    .line 84
    iput p7, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702bd

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelRange:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    .line 88
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 74
    iput-object p3, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    .line 75
    iput p4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    .line 76
    iput p5, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702bd

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelRange:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static getByLevelName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 6

    .prologue
    .line 229
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 230
    iget-object v4, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 234
    :goto_13
    return-object v0

    .line 229
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 234
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private setBottom(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 112
    iput-object p0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 113
    return-void
.end method

.method private setLeft(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 97
    iput-object p0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 98
    return-void
.end method

.method private setRight(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 102
    iput-object p0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 103
    return-void
.end method

.method private setTop(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 107
    iput-object p0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 2

    .prologue
    .line 15
    const-class v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/game/levels/LevelId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    return-object v0
.end method
