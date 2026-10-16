.class final enum Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StationNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

.field public static final enum ONE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

.field public static final enum THREE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

.field public static final enum TWO:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->ONE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    .line 393
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->TWO:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    .line 394
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->THREE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    .line 391
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->ONE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->TWO:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->THREE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

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
    .line 391
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;
    .registers 2

    .prologue
    .line 391
    const-class v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;
    .registers 1

    .prologue
    .line 391
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->$VALUES:[Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    return-object v0
.end method
