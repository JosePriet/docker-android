.class public final enum Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

.field public static final enum LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

.field public static final enum REWARD:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    const-string v1, "LOOTING"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    const-string v1, "REWARD"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;
    .registers 2

    .prologue
    .line 26
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    return-object v0
.end method
