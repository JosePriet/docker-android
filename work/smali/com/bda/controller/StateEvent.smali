.class public Lcom/bda/controller/StateEvent;
.super Lcom/bda/controller/BaseEvent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/StateEvent$a;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:I = 0x1

.field public static final ACTION_CONNECTING:I = 0x2

.field public static final ACTION_DISCONNECTED:I = 0x0

.field public static final ACTION_FALSE:I = 0x0

.field public static final ACTION_TRUE:I = 0x1

.field public static final ACTION_VERSION_MOGA:I = 0x0

.field public static final ACTION_VERSION_MOGAPRO:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bda/controller/StateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CONNECTION:I = 0x1

.field public static final STATE_CURRENT_PRODUCT_VERSION:I = 0x4

.field public static final STATE_POWER_LOW:I = 0x2

.field public static final STATE_SELECTED_VERSION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_SUPPORTED_PRODUCT_VERSION:I = 0x3

.field public static final STATE_SUPPORTED_VERSION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_UNKNOWN:I


# instance fields
.field final c:I

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/bda/controller/StateEvent$a;

    invoke-direct {v0}, Lcom/bda/controller/StateEvent$a;-><init>()V

    sput-object v0, Lcom/bda/controller/StateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>(JIII)V
    .registers 7

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 86
    iput p4, p0, Lcom/bda/controller/StateEvent;->c:I

    .line 87
    iput p5, p0, Lcom/bda/controller/StateEvent;->d:I

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/StateEvent;->c:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/StateEvent;->d:I

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/bda/controller/StateEvent;->d:I

    return v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/bda/controller/StateEvent;->c:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/bda/controller/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget v0, p0, Lcom/bda/controller/StateEvent;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/bda/controller/StateEvent;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
