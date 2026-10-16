.class public final enum Lfr/testudo/spacecorsair/business/loot/LootRarety;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field public static final enum BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field public static final enum EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field public static final enum FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field public static final enum LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field public static final enum RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;


# instance fields
.field private final color:I

.field private final lifeTimeInSec:I

.field private final localizedLabelId:I

.field private final raretySort:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v1, "BASIC"

    const/16 v3, 0x32

    const/high16 v4, 0x7f080000

    const v5, 0x7f070240

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/loot/LootRarety;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 15
    new-instance v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v4, "FINE"

    const/16 v6, 0x46

    const v7, 0x7f080001

    const v8, 0x7f070241

    move v5, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/business/loot/LootRarety;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 16
    new-instance v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v4, "RARE"

    const/16 v6, 0x5a

    const v7, 0x7f080002

    const v8, 0x7f070242

    move v5, v11

    move v9, v11

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/business/loot/LootRarety;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 17
    new-instance v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v4, "EXCEPTIONAL"

    const/16 v6, 0x78

    const v7, 0x7f080003

    const v8, 0x7f070243

    move v5, v12

    move v9, v12

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/business/loot/LootRarety;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 18
    new-instance v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v4, "LEGENDARY"

    const/16 v6, 0xf0

    const v7, 0x7f080004

    const v8, 0x7f070244

    move v5, v13

    move v9, v13

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/business/loot/LootRarety;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    aput-object v1, v0, v10

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    aput-object v1, v0, v11

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    aput-object v1, v0, v12

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    aput-object v1, v0, v13

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/LootRarety;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->lifeTimeInSec:I

    .line 28
    iput p4, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->color:I

    .line 29
    iput p5, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->localizedLabelId:I

    .line 30
    iput p6, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->raretySort:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 2

    .prologue
    .line 12
    const-class v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/loot/LootRarety;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/loot/LootRarety;

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->color:I

    return v0
.end method

.method public getLifeTimeInSec()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->lifeTimeInSec:I

    return v0
.end method

.method public getLocalisedLabelId()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->localizedLabelId:I

    return v0
.end method

.method public getRaretySort()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->raretySort:I

    return v0
.end method
