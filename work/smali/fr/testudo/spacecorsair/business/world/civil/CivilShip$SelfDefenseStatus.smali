.class public final enum Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelfDefenseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

.field public static final enum peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

.field public static final enum target_engaged:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    const-string v1, "peacefull"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    const-string v1, "target_engaged"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->target_engaged:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->target_engaged:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->$VALUES:[Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;
    .registers 2

    .prologue
    .line 35
    const-class v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->$VALUES:[Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    return-object v0
.end method
