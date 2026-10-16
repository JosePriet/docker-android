.class public final enum Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/MyShipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShipAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

.field public static final enum INVENTORY:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

.field public static final enum STORE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 667
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    const-string v1, "INVENTORY"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->INVENTORY:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->STORE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    .line 666
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->INVENTORY:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->STORE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->$VALUES:[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

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
    .line 666
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;
    .registers 2

    .prologue
    .line 666
    const-class v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;
    .registers 1

    .prologue
    .line 666
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->$VALUES:[Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    return-object v0
.end method
