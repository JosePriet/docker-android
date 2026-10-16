.class Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$1;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    .registers 2

    .prologue
    .line 461
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$1;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 464
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$1;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tick(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 468
    :goto_6
    return-void

    .line 465
    :catch_7
    move-exception v0

    .line 466
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$1;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    # invokes: Lfr/testudo/spacecorsair/mod/ModFitting;->fail(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$000(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    goto :goto_6
.end method
