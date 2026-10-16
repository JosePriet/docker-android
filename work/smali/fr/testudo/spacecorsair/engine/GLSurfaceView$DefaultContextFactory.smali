.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;


# direct methods
.method private constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)V
    .registers 3

    .prologue
    .line 696
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    const/16 v0, 0x3098

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Lfr/testudo/spacecorsair/engine/GLSurfaceView$1;)V
    .registers 3

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 7

    .prologue
    .line 700
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$200(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 703
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$DefaultContextFactory;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$200(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_25

    :goto_20
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 4

    .prologue
    .line 709
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 710
    return-void
.end method
