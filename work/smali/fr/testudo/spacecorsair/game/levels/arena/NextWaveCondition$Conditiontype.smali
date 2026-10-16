.class public final enum Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Conditiontype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

.field public static final enum ENEMIS_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

.field public static final enum TIMING:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

.field public static final enum TIMING_AND_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

.field public static final enum TIMING_OR_ENNEMIS:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    const-string v1, "TIMING"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    const-string v1, "ENEMIS_COUNT"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->ENEMIS_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    const-string v1, "TIMING_OR_ENNEMIS"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING_OR_ENNEMIS:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    const-string v1, "TIMING_AND_COUNT"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING_AND_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->ENEMIS_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING_OR_ENNEMIS:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING_AND_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;
    .registers 2

    .prologue
    .line 13
    const-class v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    return-object v0
.end method
