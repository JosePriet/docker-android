.class final enum Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

.field public static final enum DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    const-string v1, "DESTROY_TARGET"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

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

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;
    .registers 2

    .prologue
    .line 31
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    return-object v0
.end method
