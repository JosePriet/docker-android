.class public Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$1;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;,
        Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

.field private mGLWrapper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1631
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView$1;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z

    .line 196
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->init()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z

    .line 205
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->init()V

    .line 206
    return-void
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLConfigChooser:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLWrapper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$902(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Z)Z
    .registers 2

    .prologue
    .line 148
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 1549
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    if-eqz v0, :cond_c

    .line 1550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_c
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 212
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 213
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 215
    return-void
.end method


# virtual methods
.method public flushTextures(Lfr/testudo/spacecorsair/display/TextureLibrary;)V
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->flushTextures(Lfr/testudo/spacecorsair/display/TextureLibrary;)V

    .line 499
    return-void
.end method

.method public getDebugFlags()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public loadTextures(Lfr/testudo/spacecorsair/display/TextureLibrary;)V
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->loadTextures(Lfr/testudo/spacecorsair/display/TextureLibrary;)V

    .line 503
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 537
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 538
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 539
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->onPause()V

    .line 484
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->onResume()V

    .line 495
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 527
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    .line 528
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 518
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->requestRender()V

    .line 449
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2

    .prologue
    .line 244
    iput p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mDebugFlags:I

    .line 245
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .registers 15

    .prologue
    .line 374
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->setEGLConfigChooser(Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;)V

    .line 376
    return-void
.end method

.method public setEGLConfigChooser(Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;)V
    .registers 2

    .prologue
    .line 337
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->checkRenderThreadState()V

    .line 338
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLConfigChooser:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;

    .line 339
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3

    .prologue
    .line 356
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->setEGLConfigChooser(Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;)V

    .line 357
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2

    .prologue
    .line 405
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->checkRenderThreadState()V

    .line 406
    iput p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextClientVersion:I

    .line 407
    return-void
.end method

.method public setEGLContextFactory(Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;)V
    .registers 2

    .prologue
    .line 307
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->checkRenderThreadState()V

    .line 308
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

    .line 309
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .registers 2

    .prologue
    .line 321
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->checkRenderThreadState()V

    .line 322
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 323
    return-void
.end method

.method public setGLWrapper(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLWrapper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;

    .line 232
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 427
    return-void
.end method

.method public setRenderer(Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->checkRenderThreadState()V

    .line 283
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLConfigChooser:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_10

    .line 284
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Z)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLConfigChooser:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;

    .line 286
    :cond_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1b

    .line 287
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Lfr/testudo/spacecorsair/engine/GLSurfaceView$1;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

    .line 289
    :cond_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 290
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView$1;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 292
    :cond_26
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    .line 293
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->start()V

    .line 294
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->setSafeMode(Z)V

    .line 509
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    .prologue
    .line 473
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 474
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 457
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLThread:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 466
    return-void
.end method
