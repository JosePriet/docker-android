.class final Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState$1;
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
        "Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;
    .registers 4

    .prologue
    .line 394
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;
    .registers 3

    .prologue
    .line 399
    new-array v0, p1, [Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState$1;->newArray(I)[Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
