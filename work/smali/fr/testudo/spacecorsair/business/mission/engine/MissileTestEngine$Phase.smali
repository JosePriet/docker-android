.class final enum Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

.field public static final enum BUY_TRACKER:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

.field public static final enum FOLLOW_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

.field public static final enum GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

.field public static final enum GOTO_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

.field public static final enum MISSILE_TEST:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    const-string v1, "BUY_TRACKER"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->BUY_TRACKER:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    const-string v1, "GOTO_GUARDIAN"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GOTO_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    const-string v1, "FOLLOW_GUARDIAN"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->FOLLOW_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    const-string v1, "MISSILE_TEST"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->MISSILE_TEST:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    const-string v1, "GATHER_RECOMP"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->BUY_TRACKER:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GOTO_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->FOLLOW_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->MISSILE_TEST:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

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

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;
    .registers 2

    .prologue
    .line 35
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    return-object v0
.end method
