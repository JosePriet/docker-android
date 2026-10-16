.class final Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;
    .registers 4

    .prologue
    .line 547
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;
    .registers 3

    .prologue
    .line 552
    new-array v0, p1, [Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState$1;->newArray(I)[Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
