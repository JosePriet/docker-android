.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;
.super Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;IIIIII)V
    .registers 12

    .prologue
    const/4 v3, 0x1

    .line 814
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    .line 815
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$BaseConfigChooser;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;[I)V

    .line 823
    new-array v0, v3, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 824
    iput p2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 825
    iput p3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 826
    iput p4, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 827
    iput p5, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 828
    iput p6, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 829
    iput p7, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 830
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8

    .prologue
    .line 867
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 868
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 870
    :cond_d
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 18

    .prologue
    .line 835
    const/4 v8, 0x0

    .line 836
    const/16 v7, 0x3e8

    .line 837
    move-object/from16 v0, p3

    array-length v10, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_8
    if-ge v9, v10, :cond_80

    aget-object v4, p3, v9

    .line 838
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 840
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 842
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v11, v2, :cond_81

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v1, v2, :cond_81

    .line 843
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 845
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 847
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 849
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 851
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    sub-int v3, v12, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    sub-int v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 855
    if-ge v1, v7, :cond_81

    .line 837
    :goto_7a
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v7, v1

    move-object v8, v4

    goto :goto_8

    .line 861
    :cond_80
    return-object v8

    :cond_81
    move v1, v7

    move-object v4, v8

    goto :goto_7a
.end method
