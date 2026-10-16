.class Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogWriter"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1515
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private flushBuilder()V
    .registers 4

    .prologue
    .line 1538
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1540
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1542
    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 1518
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1519
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1522
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1523
    return-void
.end method

.method public write([CII)V
    .registers 7

    .prologue
    .line 1526
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_17

    .line 1527
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1528
    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    .line 1529
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1526
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1532
    :cond_11
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1535
    :cond_17
    return-void
.end method
