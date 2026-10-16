.class public final enum Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

.field public static final enum Bottom:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

.field public static final enum Top:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->Bottom:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->Top:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    sget-object v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->Bottom:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->Top:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->$VALUES:[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->value:I

    .line 106
    return-void
.end method

.method public static fromValue(I)Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;
    .registers 6

    .prologue
    .line 109
    invoke-static {}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->values()[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 110
    iget v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->value:I

    if-ne v4, p0, :cond_10

    .line 114
    :goto_f
    return-object v0

    .line 109
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 114
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;
    .registers 2

    .prologue
    .line 99
    const-class v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->$VALUES:[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method
