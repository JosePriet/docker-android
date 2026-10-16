.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

.field private mGLContextCount:I

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView$1;)V
    .registers 2

    .prologue
    .line 1555
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1611
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_12

    .line 1612
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1613
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_10

    .line 1614
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1616
    :cond_10
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1619
    :cond_12
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    .prologue
    .line 1599
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_1c

    .line 1600
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1601
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-ge v0, v1, :cond_19

    .line 1602
    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1604
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1606
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1608
    :cond_1c
    monitor-exit p0

    return-void

    .line 1599
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseEglSurfaceLocked(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)V
    .registers 3

    .prologue
    .line 1592
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1593
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    .line 1595
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1596
    return-void
.end method

.method public declared-synchronized threadExiting(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)V
    .registers 3

    .prologue
    .line 1561
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    # setter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->access$1002(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;Z)Z

    .line 1562
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_c

    .line 1563
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    .line 1565
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1566
    monitor-exit p0

    return-void

    .line 1561
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1576
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    if-nez v1, :cond_f

    .line 1577
    :cond_9
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mEglOwner:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    .line 1578
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1585
    :cond_e
    :goto_e
    return v0

    .line 1581
    :cond_f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1582
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_e

    .line 1585
    const/4 v0, 0x0

    goto :goto_e
.end method
