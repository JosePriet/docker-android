.class Lcom/bda/controller/Controller$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/bda/controller/MotionEvent;

.field final synthetic b:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>(Lcom/bda/controller/Controller;Lcom/bda/controller/MotionEvent;)V
    .registers 3

    .prologue
    .line 526
    iput-object p1, p0, Lcom/bda/controller/Controller$d;->b:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p2, p0, Lcom/bda/controller/Controller$d;->a:Lcom/bda/controller/MotionEvent;

    .line 528
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/bda/controller/Controller$d;->b:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_f

    .line 533
    iget-object v0, p0, Lcom/bda/controller/Controller$d;->b:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->i:Lcom/bda/controller/ControllerListener;

    iget-object v1, p0, Lcom/bda/controller/Controller$d;->a:Lcom/bda/controller/MotionEvent;

    invoke-interface {v0, v1}, Lcom/bda/controller/ControllerListener;->onMotionEvent(Lcom/bda/controller/MotionEvent;)V

    .line 535
    :cond_f
    return-void
.end method
