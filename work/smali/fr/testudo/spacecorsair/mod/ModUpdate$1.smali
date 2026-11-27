.class Lfr/testudo/spacecorsair/mod/ModUpdate$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->onActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 261
    # getter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fetch(Landroid/content/Context;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    move-result-object v0

    .line 262
    # getter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;

    invoke-direct {v1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$1;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$200(Ljava/lang/Runnable;)V

    .line 263
    :cond_1a
    return-void
.end method
