.class final enum Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ArrestDialogue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

.field public static final enum FIVE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

.field public static final enum FOUR:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

.field public static final enum ONE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

.field public static final enum THREE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

.field public static final enum TWO:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;


# instance fields
.field public final resId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    const-string v1, "ONE"

    const v2, 0x7f0701f4

    invoke-direct {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->ONE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    const-string v1, "TWO"

    const v2, 0x7f0701f5

    invoke-direct {v0, v1, v4, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->TWO:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    const-string v1, "THREE"

    const v2, 0x7f0701f6

    invoke-direct {v0, v1, v5, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->THREE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    const-string v1, "FOUR"

    const v2, 0x7f0701f7

    invoke-direct {v0, v1, v6, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->FOUR:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    const-string v1, "FIVE"

    const v2, 0x7f0701f8

    invoke-direct {v0, v1, v7, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->FIVE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->ONE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->TWO:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->THREE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->FOUR:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->FIVE:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->resId:I

    .line 48
    return-void
.end method

.method public static random()Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;
    .registers 6

    .prologue
    .line 51
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->values()[Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->values()[Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    move-result-object v1

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;
    .registers 2

    .prologue
    .line 36
    const-class v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    return-object v0
.end method
