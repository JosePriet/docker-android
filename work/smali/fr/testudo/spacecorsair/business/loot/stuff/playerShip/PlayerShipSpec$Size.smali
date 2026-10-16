.class public final enum Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

.field public static final enum LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

.field public static final enum MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

.field public static final enum SMALL:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

.field public static final enum VERY_LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;


# instance fields
.field private textId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const-string v1, "SMALL"

    const v2, 0x7f07036a

    invoke-direct {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->SMALL:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const-string v1, "MIDDLE"

    const v2, 0x7f07036b

    invoke-direct {v0, v1, v4, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const-string v1, "LARGE"

    const v2, 0x7f07036c

    invoke-direct {v0, v1, v5, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const-string v1, "VERY_LARGE"

    const v2, 0x7f07036d

    invoke-direct {v0, v1, v6, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->VERY_LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->SMALL:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->VERY_LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->textId:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;
    .registers 2

    .prologue
    .line 28
    const-class v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    return-object v0
.end method


# virtual methods
.method public getLocalizedLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->textId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
