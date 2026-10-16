.class public final Lcom/bda/controller/MotionEvent;
.super Lcom/bda/controller/BaseEvent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/MotionEvent$a;
    }
.end annotation


# static fields
.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bda/controller/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/bda/controller/MotionEvent$a;

    invoke-direct {v0}, Lcom/bda/controller/MotionEvent$a;-><init>()V

    sput-object v0, Lcom/bda/controller/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>(JIFFFFFF)V
    .registers 15

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    .line 60
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    const/16 v1, 0xb

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    const/16 v1, 0xe

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    .line 67
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JI[I[F[I[F)V
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 75
    array-length v2, p4

    .line 76
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    move v1, v0

    .line 77
    :goto_d
    if-lt v1, v2, :cond_1a

    .line 82
    array-length v1, p6

    .line 83
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    .line 84
    :goto_17
    if-lt v0, v1, :cond_2a

    .line 88
    return-void

    .line 79
    :cond_1a
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    aget v4, p4, v1

    aget v5, p5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 86
    :cond_2a
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    aget v3, p6, v0

    aget v4, p7, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    move v1, v0

    .line 96
    :goto_10
    if-lt v1, v2, :cond_20

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    .line 105
    :goto_1d
    if-lt v0, v2, :cond_34

    .line 111
    return-void

    .line 98
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 100
    iget-object v5, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 107
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 109
    iget-object v4, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final findPointerIndex(I)I
    .registers 3

    .prologue
    .line 130
    const/4 v0, -0x1

    return v0
.end method

.method public final getAxisValue(I)F
    .registers 3

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p2, :cond_13

    .line 162
    iget-object v1, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 164
    :cond_13
    return v0
.end method

.method public final getPointerCount()I
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public final getPointerId(I)I
    .registers 3

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final getRawX()F
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/bda/controller/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .registers 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/bda/controller/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public final getX()F
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .registers 3

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getY()F
    .registers 3

    .prologue
    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .registers 3

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-super {p0, p1, p2}, Lcom/bda/controller/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 283
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    .line 284
    :goto_e
    if-lt v2, v3, :cond_1c

    .line 290
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 291
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    :goto_19
    if-lt v1, v2, :cond_38

    .line 297
    return-void

    .line 286
    :cond_1c
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 284
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 294
    :cond_38
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19
.end method
