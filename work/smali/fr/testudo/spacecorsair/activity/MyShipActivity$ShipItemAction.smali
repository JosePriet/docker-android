.class public final enum Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/MyShipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShipItemAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

.field public static final enum BOOSTER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

.field public static final enum HYPERDRIVE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

.field public static final enum LASER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

.field public static final enum MISSILE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

.field public static final enum SHIELD:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 663
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    const-string v1, "SHIELD"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->SHIELD:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    const-string v1, "LASER"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->LASER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    const-string v1, "MISSILE"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->MISSILE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    const-string v1, "BOOSTER"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->BOOSTER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    const-string v1, "HYPERDRIVE"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->HYPERDRIVE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    .line 662
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->SHIELD:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->LASER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->MISSILE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->BOOSTER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->HYPERDRIVE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->$VALUES:[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 662
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;
    .registers 2

    .prologue
    .line 662
    const-class v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;
    .registers 1

    .prologue
    .line 662
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->$VALUES:[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    return-object v0
.end method
