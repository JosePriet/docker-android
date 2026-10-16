.class public Lfr/testudo/spacecorsair/business/loot/LootProbability;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIEN_BOSS:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final BASIC_EASIER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final BASIC_EASIER_MORE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final BASIC_MORE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final DEV_ALWAYS:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final EASY_FINE_MEDIUM_RARE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final EASY_FINE_MEDIUM_RARE_TIME2:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final EASY_TRASH:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final EPAVE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final LOTS_OF_FINE_MED_RARE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final MEDIUM_BOSS:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final MISSION:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final NONE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final STATION:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final TRANSPORTER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public static final TRANSPORTER_ROCK:[Lfr/testudo/spacecorsair/business/loot/LootProbability;


# instance fields
.field public final lootRarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field public final probability:D

.field public final rollCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 30
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->DEV_ALWAYS:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 35
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v4, 0x4051800000000000L    # 70.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v6, 0x8

    invoke-direct {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v11}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->MEDIUM_BOSS:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 37
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v4, 0x4051800000000000L    # 70.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v6, 0x8

    invoke-direct {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v10}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v11}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->ALIEN_BOSS:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 39
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v6, 0x8

    invoke-direct {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EASY_TRASH:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 40
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 41
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v9}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_MORE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 44
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_EASIER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 46
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v9}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_EASIER_MORE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 47
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v4, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v8}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v11}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EASY_FINE_MEDIUM_RARE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 48
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v4, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v8}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v10}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v9}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EASY_FINE_MEDIUM_RARE_TIME2:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 51
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v4, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v8}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v5, 0x8

    invoke-direct {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->LOTS_OF_FINE_MED_RARE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 53
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v6, 0xc

    invoke-direct {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v5, 0x8

    invoke-direct {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v7}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->TRANSPORTER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 54
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v6, 0x28

    invoke-direct {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->TRANSPORTER_ROCK:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 55
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v6, 0x12

    invoke-direct {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/16 v5, 0x8

    invoke-direct {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v9}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->STATION:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 56
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v10}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v10}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4, v8}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EPAVE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 59
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3, v8}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->MISSION:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 60
    new-array v0, v10, [Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v4, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v2, v4, v5, v3}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v2, v0, v1

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v8

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v11

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;

    const-wide/16 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-direct {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->NONE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    return-void
.end method

.method public constructor <init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;)V
    .registers 5

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/business/loot/LootProbability;-><init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(DLfr/testudo/spacecorsair/business/loot/LootRarety;I)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->probability:D

    .line 20
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->lootRarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 21
    iput p4, p0, Lfr/testudo/spacecorsair/business/loot/LootProbability;->rollCount:I

    .line 22
    return-void
.end method
