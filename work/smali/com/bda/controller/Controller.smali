.class public final Lcom/bda/controller/Controller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/Controller$a;,
        Lcom/bda/controller/Controller$b;,
        Lcom/bda/controller/Controller$c;,
        Lcom/bda/controller/Controller$d;,
        Lcom/bda/controller/Controller$e;,
        Lcom/bda/controller/Controller$f;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:I = 0x1

.field public static final ACTION_CONNECTING:I = 0x2

.field public static final ACTION_DISCONNECTED:I = 0x0

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_FALSE:I = 0x0

.field public static final ACTION_TRUE:I = 0x1

.field public static final ACTION_UP:I = 0x1

.field public static final ACTION_VERSION_MOGA:I = 0x0

.field public static final ACTION_VERSION_MOGAPRO:I = 0x1

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final INFO_ACTIVE_DEVICE_COUNT:I = 0x2

.field public static final INFO_KNOWN_DEVICE_COUNT:I = 0x1

.field public static final INFO_UNKNOWN:I = 0x0

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_UNKNOWN:I = 0x0

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
.field final a:Landroid/content/Context;

.field b:Z

.field c:Lcom/bda/controller/IControllerService;

.field final d:Lcom/bda/controller/IControllerListener$Stub;

.field final e:Lcom/bda/controller/IControllerMonitor$Stub;

.field final f:Lcom/bda/controller/Controller$e;

.field g:I

.field h:Landroid/os/Handler;

.field i:Lcom/bda/controller/ControllerListener;

.field j:Lcom/bda/controller/ControllerMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bda/controller/Controller;->b:Z

    .line 208
    iput-object v1, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    .line 209
    new-instance v0, Lcom/bda/controller/Controller$a;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller$a;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v0, p0, Lcom/bda/controller/Controller;->d:Lcom/bda/controller/IControllerListener$Stub;

    .line 210
    new-instance v0, Lcom/bda/controller/Controller$b;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller$b;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v0, p0, Lcom/bda/controller/Controller;->e:Lcom/bda/controller/IControllerMonitor$Stub;

    .line 211
    new-instance v0, Lcom/bda/controller/Controller$e;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller$e;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v0, p0, Lcom/bda/controller/Controller;->f:Lcom/bda/controller/Controller$e;

    .line 212
    const/4 v0, 0x6

    iput v0, p0, Lcom/bda/controller/Controller;->g:I

    .line 213
    iput-object v1, p0, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    .line 214
    iput-object v1, p0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    .line 215
    iput-object v1, p0, Lcom/bda/controller/Controller;->j:Lcom/bda/controller/ControllerMonitor;

    .line 218
    iput-object p1, p0, Lcom/bda/controller/Controller;->a:Landroid/content/Context;

    .line 219
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;
    .registers 2

    .prologue
    .line 203
    new-instance v0, Lcom/bda/controller/Controller;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_11

    .line 352
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_11

    .line 354
    :try_start_8
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->d:Lcom/bda/controller/IControllerListener$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->g:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->registerListener2(Lcom/bda/controller/IControllerListener;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 363
    :cond_11
    :goto_11
    return-void

    .line 355
    :catch_12
    move-exception v0

    .line 357
    :try_start_13
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->d:Lcom/bda/controller/IControllerListener$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->g:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->registerListener(Lcom/bda/controller/IControllerListener;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 358
    :catch_1d
    move-exception v0

    goto :goto_11
.end method

.method a(II)V
    .registers 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_9

    .line 379
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    invoke-interface {v0, p1, p2}, Lcom/bda/controller/IControllerService;->sendMessage(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 383
    :cond_9
    :goto_9
    return-void

    .line 380
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public allowNewConnections()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_9

    .line 427
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    invoke-interface {v0}, Lcom/bda/controller/IControllerService;->allowNewConnections()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 431
    :cond_9
    :goto_9
    return-void

    .line 428
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method b()V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bda/controller/Controller;->j:Lcom/bda/controller/ControllerMonitor;

    if-eqz v0, :cond_11

    .line 367
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_11

    .line 369
    :try_start_8
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->e:Lcom/bda/controller/IControllerMonitor$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->g:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->registerMonitor(Lcom/bda/controller/IControllerMonitor;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 374
    :cond_11
    :goto_11
    return-void

    .line 370
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method c()V
    .registers 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_d

    .line 409
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->d:Lcom/bda/controller/IControllerListener$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->g:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->unregisterListener(Lcom/bda/controller/IControllerListener;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 413
    :cond_d
    :goto_d
    return-void

    .line 410
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method d()V
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_d

    .line 418
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->e:Lcom/bda/controller/IControllerMonitor$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->g:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->unregisterMonitor(Lcom/bda/controller/IControllerMonitor;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 422
    :cond_d
    :goto_d
    return-void

    .line 419
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public disallowNewConnections()V
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_9

    .line 436
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    invoke-interface {v0}, Lcom/bda/controller/IControllerService;->disallowNewConnections()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 440
    :cond_9
    :goto_9
    return-void

    .line 437
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public final exit()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, v0}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/bda/controller/Controller;->setMonitor(Lcom/bda/controller/ControllerMonitor;)V

    .line 228
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->b:Z

    if-eqz v0, :cond_15

    .line 229
    iget-object v0, p0, Lcom/bda/controller/Controller;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bda/controller/Controller;->f:Lcom/bda/controller/Controller$e;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bda/controller/Controller;->b:Z

    .line 232
    :cond_15
    return-void
.end method

.method public final getAxisValue(I)F
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_d

    .line 245
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/bda/controller/IControllerService;->getAxisValue(II)F
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result v0

    .line 249
    :goto_b
    return v0

    .line 246
    :catch_c
    move-exception v0

    .line 249
    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getInfo(I)I
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_c

    .line 262
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    invoke-interface {v0, p1}, Lcom/bda/controller/IControllerService;->getInfo(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 266
    :goto_a
    return v0

    .line 263
    :catch_b
    move-exception v0

    .line 266
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getKeyCode(I)I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 278
    iget-object v1, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v1, :cond_c

    .line 280
    :try_start_5
    iget-object v1, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/bda/controller/IControllerService;->getKeyCode2(II)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-result v0

    .line 297
    :cond_c
    :goto_c
    return v0

    .line 281
    :catch_d
    move-exception v1

    .line 283
    packed-switch p1, :pswitch_data_22

    .line 292
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/bda/controller/IControllerService;->getKeyCode(II)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_1f

    move-result v0

    goto :goto_c

    .line 285
    :pswitch_19
    const/16 p1, 0x62

    .line 286
    goto :goto_11

    .line 289
    :pswitch_1c
    const/16 p1, 0x63

    goto :goto_11

    .line 293
    :catch_1f
    move-exception v1

    goto :goto_c

    .line 283
    nop

    :pswitch_data_22
    .packed-switch 0x63
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public final getState(I)I
    .registers 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_d

    .line 312
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/bda/controller/IControllerService;->getState(II)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result v0

    .line 316
    :goto_b
    return v0

    .line 313
    :catch_c
    move-exception v0

    .line 316
    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final init()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 323
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->b:Z

    if-nez v0, :cond_1e

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bda/controller/IControllerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/bda/controller/Controller;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    iget-object v1, p0, Lcom/bda/controller/Controller;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bda/controller/Controller;->f:Lcom/bda/controller/Controller$e;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 327
    iput-boolean v3, p0, Lcom/bda/controller/Controller;->b:Z

    .line 329
    :cond_1e
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->b:Z

    return v0
.end method

.method public isAllowingNewConnections()V
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_9

    .line 445
    :try_start_4
    iget-object v0, p0, Lcom/bda/controller/Controller;->c:Lcom/bda/controller/IControllerService;

    invoke-interface {v0}, Lcom/bda/controller/IControllerService;->isAllowingNewConnections()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 449
    :cond_9
    :goto_9
    return-void

    .line 446
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public final onPause()V
    .registers 3

    .prologue
    .line 336
    const/4 v0, 0x6

    iput v0, p0, Lcom/bda/controller/Controller;->g:I

    .line 337
    const/4 v0, 0x1

    iget v1, p0, Lcom/bda/controller/Controller;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/Controller;->a(II)V

    .line 338
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->a()V

    .line 339
    return-void
.end method

.method public final onResume()V
    .registers 3

    .prologue
    .line 345
    const/4 v0, 0x5

    iput v0, p0, Lcom/bda/controller/Controller;->g:I

    .line 346
    const/4 v0, 0x1

    iget v1, p0, Lcom/bda/controller/Controller;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/Controller;->a(II)V

    .line 347
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->a()V

    .line 348
    return-void
.end method

.method public final setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->c()V

    .line 395
    iput-object p1, p0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    .line 396
    iput-object p2, p0, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    .line 397
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->a()V

    .line 398
    return-void
.end method

.method public final setMonitor(Lcom/bda/controller/ControllerMonitor;)V
    .registers 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->d()V

    .line 402
    iput-object p1, p0, Lcom/bda/controller/Controller;->j:Lcom/bda/controller/ControllerMonitor;

    .line 403
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->b()V

    .line 404
    return-void
.end method
