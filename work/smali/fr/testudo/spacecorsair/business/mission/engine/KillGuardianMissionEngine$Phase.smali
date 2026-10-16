.class public final enum Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

.field public static final enum DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

.field public static final enum ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

.field public static final enum RECUP_LOOT:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    const-string v1, "DESTROY_GUARDIAN"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    const-string v1, "RECUP_LOOT"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->RECUP_LOOT:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    const-string v1, "ESCAPE"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->RECUP_LOOT:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;
    .registers 2

    .prologue
    .line 30
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    return-object v0
.end method
