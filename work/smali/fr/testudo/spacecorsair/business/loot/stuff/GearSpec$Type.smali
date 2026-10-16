.class public final enum Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public static final enum BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public static final enum HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public static final enum LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public static final enum MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public static final enum SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public static final enum SHIP:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;


# instance fields
.field private localisedString:Ljava/lang/String;

.field private resourceName:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    const-string v1, "SHIELD"

    const v2, 0x7f070356

    invoke-direct {v0, v1, v4, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    const-string v1, "LASER"

    const v2, 0x7f070358

    invoke-direct {v0, v1, v5, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    const-string v1, "MISSILE"

    const v2, 0x7f07035c

    invoke-direct {v0, v1, v6, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    const-string v1, "BOOSTER"

    const v2, 0x7f07035d

    invoke-direct {v0, v1, v7, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    const-string v1, "HYPERDRIVE_ENGINE"

    const v2, 0x7f070359

    invoke-direct {v0, v1, v8, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    const-string v1, "SHIP"

    const/4 v2, 0x5

    const v3, 0x7f070363

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIP:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    aput-object v1, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIP:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->resourceName:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;
    .registers 2

    .prologue
    .line 16
    const-class v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    return-object v0
.end method


# virtual methods
.method public getLocalisedString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->localisedString:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->resourceName:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->localisedString:Ljava/lang/String;

    .line 31
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->localisedString:Ljava/lang/String;

    return-object v0
.end method
