.class public interface abstract Lcom/bda/controller/IControllerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract allowNewConnections()V
.end method

.method public abstract disallowNewConnections()V
.end method

.method public abstract getAxisValue(II)F
.end method

.method public abstract getInfo(I)I
.end method

.method public abstract getKeyCode(II)I
.end method

.method public abstract getKeyCode2(II)I
.end method

.method public abstract getState(II)I
.end method

.method public abstract isAllowingNewConnections()Z
.end method

.method public abstract registerListener(Lcom/bda/controller/IControllerListener;I)V
.end method

.method public abstract registerListener2(Lcom/bda/controller/IControllerListener;I)V
.end method

.method public abstract registerMonitor(Lcom/bda/controller/IControllerMonitor;I)V
.end method

.method public abstract sendMessage(II)V
.end method

.method public abstract unregisterListener(Lcom/bda/controller/IControllerListener;I)V
.end method

.method public abstract unregisterMonitor(Lcom/bda/controller/IControllerMonitor;I)V
.end method
