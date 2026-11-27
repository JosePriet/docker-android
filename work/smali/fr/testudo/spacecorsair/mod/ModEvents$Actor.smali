.class final enum Lfr/testudo/spacecorsair/mod/ModEvents$Actor;
.super Ljava/lang/Enum;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Actor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/mod/ModEvents$Actor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field public static final enum HAULER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field public static final enum POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field public static final enum RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field public static final enum STATION:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field public static final enum WING:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field public static final enum WRECK:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;


# direct methods
.method private static synthetic $values()[Lfr/testudo/spacecorsair/mod/ModEvents$Actor;
    .registers 3

    .prologue
    .line 338
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->HAULER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->STATION:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WRECK:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WING:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 338
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v1, "HAULER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->HAULER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v1, "STATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->STATION:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v1, "RAIDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v1, "WRECK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WRECK:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v1, "POLICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v1, "WING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WING:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->$values()[Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

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
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModEvents$Actor;
    .registers 2

    .prologue
    .line 338
    const-class v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/mod/ModEvents$Actor;
    .registers 1

    .prologue
    .line 338
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    return-object v0
.end method
