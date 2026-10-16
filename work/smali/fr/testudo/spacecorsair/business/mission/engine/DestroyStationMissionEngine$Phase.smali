.class public final enum Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public static final enum DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public static final enum STATION_25:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public static final enum STATION_50:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public static final enum STATION_75:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public static final enum STATION_95:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    const-string v1, "DESTROY_TARGET"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    const-string v1, "STATION_95"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_95:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    const-string v1, "STATION_75"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_75:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    const-string v1, "STATION_50"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_50:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 47
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    const-string v1, "STATION_25"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_25:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_95:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_75:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_50:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_25:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;
    .registers 2

    .prologue
    .line 41
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    return-object v0
.end method
