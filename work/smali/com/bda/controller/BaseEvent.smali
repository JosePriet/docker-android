.class Lcom/bda/controller/BaseEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/BaseEvent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bda/controller/BaseEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:J

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/bda/controller/BaseEvent$a;

    invoke-direct {v0}, Lcom/bda/controller/BaseEvent$a;-><init>()V

    sput-object v0, Lcom/bda/controller/BaseEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/bda/controller/BaseEvent;->a:J

    .line 26
    iput p3, p0, Lcom/bda/controller/BaseEvent;->b:I

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bda/controller/BaseEvent;->a:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/BaseEvent;->b:I

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final getControllerId()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/bda/controller/BaseEvent;->b:I

    return v0
.end method

.method public final getEventTime()J
    .registers 3

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/bda/controller/BaseEvent;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/bda/controller/BaseEvent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget v0, p0, Lcom/bda/controller/BaseEvent;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
