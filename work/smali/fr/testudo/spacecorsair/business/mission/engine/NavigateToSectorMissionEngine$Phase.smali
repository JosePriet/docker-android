.class public final enum Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

.field public static final enum GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    const-string v1, "GOTO_ZONE"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;
    .registers 2

    .prologue
    .line 38
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    return-object v0
.end method
