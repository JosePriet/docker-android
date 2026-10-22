.class Lfr/testudo/spacecorsair/mod/ModArt$1;
.super Ljava/lang/Object;
.source "ModArt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 503
    # invokes: Lfr/testudo/spacecorsair/mod/ModArt;->decodeLoop()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->access$000()V

    return-void
.end method
