.class Lfr/testudo/spacecorsair/mod/ModUpdate$10;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModUpdate$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 576
    # getter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fetch(Landroid/content/Context;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    return-void
.end method
