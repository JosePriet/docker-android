.class public abstract Lcom/bda/controller/IControllerListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bda/controller/IControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/IControllerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.bda.controller.IControllerListener"

    invoke-virtual {p0, p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;
    .registers 3

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v0, "com.bda.controller.IControllerListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bda/controller/IControllerListener;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/bda/controller/IControllerListener;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/bda/controller/IControllerListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bda/controller/IControllerListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_62

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 43
    :sswitch_a
    const-string v0, "com.bda.controller.IControllerListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 44
    goto :goto_9

    .line 48
    :sswitch_11
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 51
    sget-object v0, Lcom/bda/controller/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bda/controller/KeyEvent;

    .line 56
    :cond_24
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->onKeyEvent(Lcom/bda/controller/KeyEvent;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 58
    goto :goto_9

    .line 62
    :sswitch_2c
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 65
    sget-object v0, Lcom/bda/controller/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bda/controller/MotionEvent;

    .line 70
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->onMotionEvent(Lcom/bda/controller/MotionEvent;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 72
    goto :goto_9

    .line 76
    :sswitch_47
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    .line 79
    sget-object v0, Lcom/bda/controller/StateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bda/controller/StateEvent;

    .line 84
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->onStateEvent(Lcom/bda/controller/StateEvent;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 86
    goto :goto_9

    .line 39
    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_47
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
