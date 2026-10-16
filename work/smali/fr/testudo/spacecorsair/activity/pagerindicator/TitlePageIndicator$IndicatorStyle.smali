.class public final enum Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum None:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Triangle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Underline:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->$VALUES:[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->value:I

    .line 87
    return-void
.end method

.method public static fromValue(I)Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;
    .registers 6

    .prologue
    .line 90
    invoke-static {}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->values()[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 91
    iget v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->value:I

    if-ne v4, p0, :cond_10

    .line 95
    :goto_f
    return-object v0

    .line 90
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 95
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;
    .registers 2

    .prologue
    .line 80
    const-class v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->$VALUES:[Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method
