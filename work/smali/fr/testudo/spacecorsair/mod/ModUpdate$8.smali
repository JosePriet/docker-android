.class Lfr/testudo/spacecorsair/mod/ModUpdate$8;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 513
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
