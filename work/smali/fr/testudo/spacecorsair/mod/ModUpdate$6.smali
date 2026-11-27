.class Lfr/testudo/spacecorsair/mod/ModUpdate$6;
.super Landroid/content/BroadcastReceiver;
.source "ModUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->install(Landroid/content/Context;Ljava/io/File;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 452
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 455
    :try_start_0
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 456
    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 457
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 458
    if-eqz v0, :cond_1c

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 459
    :cond_1c
    const-string v0, "Tap Install to finish. Your save is kept."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$400(Ljava/lang/String;)V

    .line 466
    :cond_25
    :goto_25
    return-void

    .line 460
    :cond_26
    if-eqz v0, :cond_25

    .line 461
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The installer did not finish. You can download the full game instead."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_8f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$400(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_25

    .line 465
    :catch_86
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$400(Ljava/lang/String;)V

    goto :goto_25

    .line 463
    :cond_8f
    :try_start_8f
    const-string v0, ""
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_91} :catch_86

    goto :goto_7a
.end method
