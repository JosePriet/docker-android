.class final enum Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum DESTROY_ASTEROID:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum GOTO_GATE:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum GOTO_POSITION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum GOTO_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum SELL_STUFF:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field public static final enum SHOW_HELP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "SHOW_HELP"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SHOW_HELP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "GOTO_POSITION"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_POSITION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "DESTROY_ASTEROID"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->DESTROY_ASTEROID:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "SELL_STUFF"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SELL_STUFF:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "GOTO_STATION"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "GOTO_GATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_GATE:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SHOW_HELP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_POSITION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->DESTROY_ASTEROID:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SELL_STUFF:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_GATE:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;
    .registers 2

    .prologue
    .line 31
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    return-object v0
.end method
