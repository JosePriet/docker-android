.class final enum Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

.field public static final enum PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

.field public static final enum SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    const-string v1, "PICK_UP"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;
    .registers 2

    .prologue
    .line 27
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    return-object v0
.end method
