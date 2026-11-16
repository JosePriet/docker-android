.class Lfr/testudo/spacecorsair/mod/ModSaveSig$1;
.super Landroid/os/FileObserver;
.source "ModSaveSig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModSaveSig;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    # invokes: Lfr/testudo/spacecorsair/mod/ModSaveSig;->resignSoon()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$000()V

    return-void
.end method
