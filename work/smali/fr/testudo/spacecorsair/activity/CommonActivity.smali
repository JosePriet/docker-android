.class public Lfr/testudo/spacecorsair/activity/CommonActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/bda/controller/ControllerListener;


# instance fields
.field protected context:Landroid/app/Activity;

.field public mogaController:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->context:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_c

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    .line 56
    :cond_c
    return-void
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .registers 4

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 62
    :goto_7
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 73
    :cond_e
    :goto_e
    return-void

    .line 60
    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    .line 66
    :pswitch_11
    if-eqz v0, :cond_e

    .line 67
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->finish()V

    goto :goto_e

    .line 62
    nop

    :pswitch_data_18
    .packed-switch 0x61
        :pswitch_11
    .end packed-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .registers 2

    .prologue
    .line 78
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onPause()V

    .line 44
    :cond_c
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/CommonActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CommonActivity;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onResume()V

    .line 34
    :cond_9
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/CommonActivity;->overridePendingTransition(II)V

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModScroll;->attach(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .registers 2

    .prologue
    .line 83
    return-void
.end method
