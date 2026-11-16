.class Lfr/testudo/spacecorsair/mod/ModLan$18;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 2101
    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1500()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    return-void
.end method
