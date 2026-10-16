.class Lcom/bda/controller/Controller$b;
.super Lcom/bda/controller/IControllerMonitor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .registers 2

    .prologue
    .line 499
    iput-object p1, p0, Lcom/bda/controller/Controller$b;->a:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Lcom/bda/controller/IControllerMonitor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 502
    iget-object v0, p0, Lcom/bda/controller/Controller$b;->a:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->j:Lcom/bda/controller/ControllerMonitor;

    if-eqz v0, :cond_d

    .line 503
    iget-object v0, p0, Lcom/bda/controller/Controller$b;->a:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->j:Lcom/bda/controller/ControllerMonitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/bda/controller/ControllerMonitor;->onLog(IILjava/lang/String;)V

    .line 505
    :cond_d
    return-void
.end method
