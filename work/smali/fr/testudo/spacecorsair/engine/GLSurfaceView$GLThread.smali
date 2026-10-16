.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSafeMode:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1069
    const-class v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1070
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1507
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 1072
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWidth:I

    .line 1073
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHeight:I

    .line 1074
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1075
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1076
    iput-object p2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    .line 1077
    return-void
.end method

.method static synthetic access$1002(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;Z)Z
    .registers 2

    .prologue
    .line 1069
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 16

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1109
    new-instance v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;-><init>(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    .line 1110
    iput-boolean v8, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1111
    iput-boolean v8, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v9, v8

    move-object v0, v10

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    move v6, v8

    move-object v11, v10

    .line 1123
    :goto_19
    :try_start_19
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v12

    monitor-enter v12
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_131

    .line 1125
    :goto_1e
    :try_start_1e
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_37

    .line 1126
    monitor-exit v12
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_12e

    .line 1300
    iput-object v10, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1304
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1305
    :try_start_2a
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1306
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->finish()V

    .line 1307
    monitor-exit v1

    return-void

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_34

    throw v0

    .line 1129
    :cond_37
    :try_start_37
    iget-object v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5e

    .line 1130
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v14, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v14

    .line 1226
    :goto_50
    monitor-exit v12
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_12e

    .line 1228
    if-eqz v1, :cond_14c

    .line 1229
    :try_start_53
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_131

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    move-object v0, v10

    .line 1231
    goto :goto_19

    .line 1135
    :cond_5e
    :try_start_5e
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_69

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v13, :cond_69

    .line 1139
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1143
    :cond_69
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_82

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_82

    .line 1147
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_78

    .line 1148
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1150
    :cond_78
    const/4 v13, 0x1

    iput-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1151
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1155
    :cond_82
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_94

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_94

    .line 1159
    const/4 v13, 0x0

    iput-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1160
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1163
    :cond_94
    if-eqz v3, :cond_a2

    .line 1166
    const/4 v3, 0x1

    iput-boolean v3, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1167
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    move v3, v8

    move v4, v8

    .line 1171
    :cond_a2
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v13, :cond_143

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_143

    iget v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWidth:I

    if-lez v13, :cond_143

    iget v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHeight:I

    if-lez v13, :cond_143

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v13, :cond_ba

    iget v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v13, v7, :cond_143

    .line 1175
    :cond_ba
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_d7

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_d7

    .line 1177
    iget-object v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->verifyContext()Z

    move-result v13

    if-nez v13, :cond_d7

    .line 1178
    iget-object v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->finish()V

    .line 1179
    iget-object v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    invoke-interface {v13}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;->onSurfaceLost()V

    .line 1180
    const/4 v13, 0x0

    iput-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1184
    :cond_d7
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_f4

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)Z

    move-result v13

    if-eqz v13, :cond_f4

    .line 1185
    const/4 v13, 0x1

    iput-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1186
    iget-object v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->start()V

    .line 1188
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    :cond_f4
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_101

    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_101

    .line 1192
    const/4 v5, 0x1

    iput-boolean v5, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v5, v7

    move v6, v7

    .line 1197
    :cond_101
    iget-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_143

    .line 1198
    iget-object v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v13}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$900(Lfr/testudo/spacecorsair/engine/GLSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_12a

    .line 1200
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWidth:I

    .line 1201
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHeight:I

    .line 1211
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    const/4 v5, 0x0

    # setter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$902(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Z)Z

    move v4, v7

    move v5, v7

    .line 1215
    :goto_119
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    move-object v14, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v14

    .line 1216
    goto/16 :goto_50

    .line 1213
    :cond_12a
    const/4 v13, 0x0

    iput-boolean v13, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_119

    .line 1226
    :catchall_12e
    move-exception v0

    monitor-exit v12
    :try_end_130
    .catchall {:try_start_5e .. :try_end_130} :catchall_12e

    :try_start_130
    throw v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_131

    .line 1300
    :catchall_131
    move-exception v0

    iput-object v10, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1304
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1305
    :try_start_139
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1306
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->finish()V

    .line 1307
    monitor-exit v1
    :try_end_142
    .catchall {:try_start_139 .. :try_end_142} :catchall_1a1

    throw v0

    .line 1224
    :cond_143
    :try_start_143
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_14a
    .catchall {:try_start_143 .. :try_end_14a} :catchall_12e

    goto/16 :goto_1e

    .line 1234
    :cond_14c
    :try_start_14c
    iget-boolean v12, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v12, :cond_1a8

    .line 1235
    if-eqz v0, :cond_1a4

    .line 1236
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    iget-object v9, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1237
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1241
    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1242
    iget-object v9, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    iget-object v11, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    iget-object v11, v11, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v9, v0, v11}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    move v9, v8

    move-object v11, v0

    move v0, v8

    .line 1248
    :goto_175
    if-eqz v6, :cond_17d

    .line 1252
    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    invoke-interface {v6, v11, v3, v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    move v6, v8

    .line 1277
    :cond_17d
    if-gt v0, v7, :cond_183

    iget-boolean v12, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mSafeMode:Z

    if-nez v12, :cond_188

    .line 1278
    :cond_183
    iget-object v12, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    invoke-interface {v12, v11}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1283
    :cond_188
    add-int/lit8 v0, v0, 0x1

    .line 1285
    iget-object v12, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->swap()Z

    move-result v12

    if-nez v12, :cond_195

    .line 1290
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->stopEglLocked()V
    :try_end_195
    .catchall {:try_start_14c .. :try_end_195} :catchall_131

    .line 1294
    :cond_195
    :goto_195
    if-eqz v5, :cond_1ac

    move v4, v5

    move v5, v6

    move v6, v9

    move v9, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v7

    .line 1295
    goto/16 :goto_19

    .line 1307
    :catchall_1a1
    move-exception v0

    :try_start_1a2
    monitor-exit v1
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v0

    :cond_1a4
    move v14, v9

    move v9, v0

    move v0, v14

    goto :goto_175

    :cond_1a8
    move v14, v9

    move v9, v0

    move v0, v14

    goto :goto_195

    :cond_1ac
    move v14, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    move v9, v14

    goto/16 :goto_19
.end method

.method private stopEglLocked()V
    .registers 2

    .prologue
    .line 1101
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_13

    .line 1102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1103
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEglHelper:Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1104
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)V

    .line 1106
    :cond_13
    return-void
.end method


# virtual methods
.method public flushTextures(Lfr/testudo/spacecorsair/display/TextureLibrary;)V
    .registers 4

    .prologue
    .line 1409
    monitor-enter p0

    .line 1410
    :try_start_1
    sget-boolean v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1414
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 1411
    :cond_12
    :try_start_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v0, :cond_1d

    .line 1412
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;->flushTextures(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/TextureLibrary;)V

    .line 1414
    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_f

    .line 1415
    return-void
.end method

.method public getRenderMode()I
    .registers 3

    .prologue
    .line 1322
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1323
    :try_start_5
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1324
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public loadTextures(Lfr/testudo/spacecorsair/display/TextureLibrary;)V
    .registers 4

    .prologue
    .line 1400
    monitor-enter p0

    .line 1401
    :try_start_1
    sget-boolean v0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1405
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 1402
    :cond_12
    :try_start_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_21

    .line 1403
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderer:Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;->loadTextures(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/TextureLibrary;)V

    .line 1405
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_f

    .line 1406
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1362
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1363
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mPaused:Z

    .line 1364
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1365
    monitor-exit v1

    .line 1366
    return-void

    .line 1365
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 1369
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1370
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mPaused:Z

    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1372
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1373
    monitor-exit v1

    .line 1374
    return-void

    .line 1373
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .prologue
    .line 1446
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1447
    :try_start_5
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasFocus:Z

    .line 1448
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1449
    monitor-exit v1

    .line 1454
    return-void

    .line 1449
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onWindowResize(II)V
    .registers 6

    .prologue
    .line 1377
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1378
    :try_start_5
    iput p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWidth:I

    .line 1379
    iput p2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHeight:I

    .line 1380
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->this$0:Lfr/testudo/spacecorsair/engine/GLSurfaceView;

    const/4 v2, 0x1

    # setter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$902(Lfr/testudo/spacecorsair/engine/GLSurfaceView;Z)Z

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1383
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1386
    :goto_1c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_39

    if-nez v0, :cond_3c

    .line 1391
    :try_start_28
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2f} :catch_30
    .catchall {:try_start_28 .. :try_end_2f} :catchall_39

    goto :goto_1c

    .line 1392
    :catch_30
    move-exception v0

    .line 1393
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1c

    .line 1396
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 1397
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1477
    if-nez p1, :cond_a

    .line 1478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_a
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1481
    :try_start_f
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1483
    monitor-exit v1

    .line 1484
    return-void

    .line 1483
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 3

    .prologue
    .line 1459
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1460
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1461
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1462
    :goto_f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v0, :cond_27

    .line 1464
    :try_start_13
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24

    goto :goto_f

    .line 1465
    :catch_1b
    move-exception v0

    .line 1466
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1469
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 1470
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1328
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1329
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1330
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1331
    monitor-exit v1

    .line 1332
    return-void

    .line 1331
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1088
    :try_start_1a
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e

    .line 1092
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->threadExiting(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)V

    .line 1094
    :goto_24
    return-void

    .line 1089
    :catch_25
    move-exception v0

    .line 1092
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->threadExiting(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)V

    goto :goto_24

    :catchall_2e
    move-exception v0

    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;->threadExiting(Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .registers 4

    .prologue
    .line 1312
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1313
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_d
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1316
    :try_start_12
    iput p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1317
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1318
    monitor-exit v1

    .line 1319
    return-void

    .line 1318
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public setSafeMode(Z)V
    .registers 2

    .prologue
    .line 1487
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 1488
    return-void
.end method

.method public surfaceCreated()V
    .registers 3

    .prologue
    .line 1335
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1339
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1340
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1341
    monitor-exit v1

    .line 1342
    return-void

    .line 1341
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public surfaceDestroyed()V
    .registers 3

    .prologue
    .line 1345
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1349
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1350
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1351
    :goto_f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    .line 1353
    :try_start_17
    # getter for: Lfr/testudo/spacecorsair/engine/GLSurfaceView;->sGLThreadManager:Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->access$800()Lfr/testudo/spacecorsair/engine/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28

    goto :goto_f

    .line 1354
    :catch_1f
    move-exception v0

    .line 1355
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1358
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1359
    return-void
.end method
