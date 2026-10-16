.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)V
    .registers 2

    .prologue
    .line 904
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1043
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .registers 7

    .prologue
    .line 957
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_26

    .line 963
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 965
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$500(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 971
    :cond_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$500(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 974
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_47

    .line 975
    :cond_42
    const-string v0, "createWindowSurface"

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 982
    :cond_47
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 983
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 986
    :cond_5c
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 987
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLWrapper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;
    invoke-static {v1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$600(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 988
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mGLWrapper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;
    invoke-static {v1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$600(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 991
    :cond_74
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mDebugFlags:I
    invoke-static {v1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$700(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_9e

    .line 992
    const/4 v1, 0x0

    .line 993
    const/4 v2, 0x0

    .line 994
    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$700(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8b

    .line 995
    const/4 v1, 0x1

    .line 997
    :cond_8b
    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$700(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9a

    .line 998
    new-instance v2, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;-><init>()V

    .line 1000
    :cond_9a
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1002
    :cond_9e
    return-object v0
.end method

.method public destroySurface()V
    .registers 6

    .prologue
    .line 1022
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_29

    .line 1023
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1026
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLWindowSurfaceFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$500(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1029
    :cond_29
    return-void
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1032
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_16

    .line 1033
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$400(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1034
    iput-object v4, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1036
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_23

    .line 1037
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1038
    iput-object v4, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1040
    :cond_23
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 916
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 921
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 923
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_20

    .line 924
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 931
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 932
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_35
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLConfigChooser:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$300(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 940
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextFactory:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$400(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 941
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_66

    .line 942
    :cond_61
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 945
    :cond_66
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 946
    return-void
.end method

.method public swap()Z
    .registers 4

    .prologue
    .line 1010
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1018
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public verifyContext()Z
    .registers 3

    .prologue
    .line 1048
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 1049
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
