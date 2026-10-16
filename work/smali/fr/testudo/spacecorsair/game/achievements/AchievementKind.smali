.class public final enum Lfr/testudo/spacecorsair/game/achievements/AchievementKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/game/achievements/AchievementKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

.field public static final enum qualitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

.field public static final enum quantitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    const-string v1, "qualitative"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->qualitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    const-string v1, "quantitative"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->quantitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->qualitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->quantitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->$VALUES:[Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/AchievementKind;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/game/achievements/AchievementKind;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->$VALUES:[Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    return-object v0
.end method
