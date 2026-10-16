.class Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 391
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 380
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;)V
    .registers 3

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 377
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 387
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    return-void
.end method
