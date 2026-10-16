.class Lcom/bda/controller/StateEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/StateEvent;
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
        "Lcom/bda/controller/StateEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/bda/controller/StateEvent;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Lcom/bda/controller/StateEvent;

    invoke-direct {v0, p1}, Lcom/bda/controller/StateEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/bda/controller/StateEvent;
    .registers 3

    .prologue
    .line 142
    new-array v0, p1, [Lcom/bda/controller/StateEvent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/StateEvent$a;->a(Landroid/os/Parcel;)Lcom/bda/controller/StateEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/StateEvent$a;->a(I)[Lcom/bda/controller/StateEvent;

    move-result-object v0

    return-object v0
.end method
