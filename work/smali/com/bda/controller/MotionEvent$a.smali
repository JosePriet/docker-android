.class Lcom/bda/controller/MotionEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bda/controller/MotionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/bda/controller/MotionEvent;
    .registers 3

    .prologue
    .line 304
    new-instance v0, Lcom/bda/controller/MotionEvent;

    invoke-direct {v0, p1}, Lcom/bda/controller/MotionEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/bda/controller/MotionEvent;
    .registers 3

    .prologue
    .line 310
    new-array v0, p1, [Lcom/bda/controller/MotionEvent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/MotionEvent$a;->a(Landroid/os/Parcel;)Lcom/bda/controller/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/MotionEvent$a;->a(I)[Lcom/bda/controller/MotionEvent;

    move-result-object v0

    return-object v0
.end method
