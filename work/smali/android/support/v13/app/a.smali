.class final Landroid/support/v13/app/a;
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
        "Landroid/support/v13/app/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v13/app/FragmentTabHost$SavedState;
    .registers 4

    .prologue
    .line 110
    new-instance v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/v13/app/FragmentTabHost$1;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v13/app/FragmentTabHost$SavedState;
    .registers 3

    .prologue
    .line 114
    new-array v0, p1, [Landroid/support/v13/app/FragmentTabHost$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v13/app/a;->a(Landroid/os/Parcel;)Landroid/support/v13/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v13/app/a;->a(I)[Landroid/support/v13/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method
