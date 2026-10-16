.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;
.super Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Z)V
    .registers 12

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 889
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    .line 890
    if-eqz p2, :cond_19

    const/16 v6, 0x10

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$ComponentSizeChooser;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;IIIIII)V

    .line 893
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 894
    const/4 v0, 0x6

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 895
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 896
    return-void

    :cond_19
    move v6, v5

    .line 890
    goto :goto_9
.end method
