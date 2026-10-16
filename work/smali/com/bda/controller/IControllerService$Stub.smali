.class public abstract Lcom/bda/controller/IControllerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bda/controller/IControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/IControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p0, p0, v0}, Lcom/bda/controller/IControllerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerService;
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
    const-string v0, "com.bda.controller.IControllerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bda/controller/IControllerService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/bda/controller/IControllerService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/bda/controller/IControllerService$Stub$a;

    invoke-direct {v0, p0}, Lcom/bda/controller/IControllerService$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_146

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 43
    :sswitch_9
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object v0

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->registerListener(Lcom/bda/controller/IControllerListener;I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 59
    :sswitch_27
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->unregisterListener(Lcom/bda/controller/IControllerListener;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 70
    :sswitch_3f
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bda/controller/IControllerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerMonitor;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->registerMonitor(Lcom/bda/controller/IControllerMonitor;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 81
    :sswitch_57
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bda/controller/IControllerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerMonitor;

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->unregisterMonitor(Lcom/bda/controller/IControllerMonitor;I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 92
    :sswitch_6f
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerService$Stub;->getInfo(I)I

    move-result v0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 102
    :sswitch_83
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->getKeyCode(II)I

    move-result v0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 114
    :sswitch_9c
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->getAxisValue(II)F

    move-result v0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_8

    .line 126
    :sswitch_b5
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->getState(II)I

    move-result v0

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 138
    :sswitch_ce
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->sendMessage(II)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 149
    :sswitch_e3
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->registerListener2(Lcom/bda/controller/IControllerListener;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 160
    :sswitch_fc
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    invoke-virtual {p0, v0, v2}, Lcom/bda/controller/IControllerService$Stub;->getKeyCode2(II)I

    move-result v0

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 172
    :sswitch_115
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->allowNewConnections()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 179
    :sswitch_122
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->disallowNewConnections()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 186
    :sswitch_12f
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->isAllowingNewConnections()Z

    move-result v0

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v0, :cond_143

    move v0, v1

    :goto_13e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_143
    const/4 v0, 0x0

    goto :goto_13e

    .line 39
    nop

    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_57
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_83
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_b5
        0x9 -> :sswitch_ce
        0xa -> :sswitch_e3
        0xb -> :sswitch_fc
        0xc -> :sswitch_115
        0xd -> :sswitch_122
        0xe -> :sswitch_12f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
