.class Lcom/bda/controller/Controller$a;
.super Lcom/bda/controller/IControllerListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .registers 2

    .prologue
    .line 455
    iput-object p1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Lcom/bda/controller/IControllerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .registers 4

    .prologue
    .line 458
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getControllerId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 459
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_21

    .line 460
    new-instance v0, Lcom/bda/controller/Controller$c;

    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    invoke-direct {v0, v1, p1}, Lcom/bda/controller/Controller$c;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/KeyEvent;)V

    .line 461
    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v1, v1, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    if-eqz v1, :cond_22

    .line 462
    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v1, v1, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    :cond_21
    :goto_21
    return-void

    .line 464
    :cond_22
    invoke-virtual {v0}, Lcom/bda/controller/Controller$c;->run()V

    goto :goto_21
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .registers 4

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/bda/controller/MotionEvent;->getControllerId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 473
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_21

    .line 474
    new-instance v0, Lcom/bda/controller/Controller$d;

    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    invoke-direct {v0, v1, p1}, Lcom/bda/controller/Controller$d;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/MotionEvent;)V

    .line 475
    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v1, v1, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    if-eqz v1, :cond_22

    .line 476
    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v1, v1, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_21
    :goto_21
    return-void

    .line 478
    :cond_22
    invoke-virtual {v0}, Lcom/bda/controller/Controller$d;->run()V

    goto :goto_21
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .registers 4

    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getControllerId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 487
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_21

    .line 488
    new-instance v0, Lcom/bda/controller/Controller$f;

    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    invoke-direct {v0, v1, p1}, Lcom/bda/controller/Controller$f;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/StateEvent;)V

    .line 489
    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v1, v1, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    if-eqz v1, :cond_22

    .line 490
    iget-object v1, p0, Lcom/bda/controller/Controller$a;->a:Lcom/bda/controller/Controller;

    iget-object v1, v1, Lcom/bda/controller/Controller;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    :cond_21
    :goto_21
    return-void

    .line 492
    :cond_22
    invoke-virtual {v0}, Lcom/bda/controller/Controller$f;->run()V

    goto :goto_21
.end method
