.class public interface abstract Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract flushTextures(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/TextureLibrary;)V
.end method

.method public abstract loadTextures(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/TextureLibrary;)V
.end method

.method public abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract onSurfaceLost()V
.end method
