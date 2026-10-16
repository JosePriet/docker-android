.class final enum Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CivilPop"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

.field public static final enum FROM_AERIA_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

.field public static final enum FROM_LOST_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

.field public static final enum FROM_ORION_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    const-string v1, "FROM_ORION_TO_RANDOM"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->FROM_ORION_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    .line 275
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    const-string v1, "FROM_AERIA_TO_RANDOM"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->FROM_AERIA_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    .line 276
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    const-string v1, "FROM_LOST_TO_RANDOM"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->FROM_LOST_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    .line 272
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->FROM_ORION_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->FROM_AERIA_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->FROM_LOST_TO_RANDOM:Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

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
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static random()Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;
    .registers 4

    .prologue
    .line 281
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->values()[Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 282
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->values()[Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;
    .registers 2

    .prologue
    .line 272
    const-class v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;
    .registers 1

    .prologue
    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    return-object v0
.end method
