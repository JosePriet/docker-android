.class public Lfr/testudo/spacecorsair/activity/MogaHelpActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/MogaHelpActivity$1;
    }
.end annotation


# instance fields
.field imgMogaControls:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 3

    .prologue
    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/activity/MogaHelpActivity$1;->$SwitchMap$fr$testudo$spacecorsair$moga$MogaVersion:[I

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/Main;->mogaVersion:Lfr/testudo/spacecorsair/moga/MogaVersion;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/moga/MogaVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 52
    :goto_11
    return-void

    .line 43
    :pswitch_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->imgMogaControls:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 47
    :pswitch_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->imgMogaControls:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 39
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public close()V
    .registers 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->finish()V

    .line 20
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 26
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 32
    return-void
.end method
