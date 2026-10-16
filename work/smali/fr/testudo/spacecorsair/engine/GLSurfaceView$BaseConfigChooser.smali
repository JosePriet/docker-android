.class abstract Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/engine/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;[I)V
    .registers 4

    .prologue
    .line 760
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    invoke-direct {p0, p2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 762
    return-void
.end method

.method private filterConfigSpec([I)[I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$200(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 808
    :goto_a
    return-object p1

    .line 802
    :cond_b
    array-length v1, p1

    .line 803
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 804
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 806
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 807
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 808
    goto :goto_a
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 765
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 766
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_17
    aget v4, v5, v4

    .line 773
    if-gtz v4, :cond_23

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_23
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 779
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 781
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_37
    invoke-virtual {p0, p1, p2, v3}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 784
    if-nez v0, :cond_45

    .line 785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_45
    return-object v0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
