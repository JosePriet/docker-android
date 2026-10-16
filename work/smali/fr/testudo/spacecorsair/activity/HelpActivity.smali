.class public Lfr/testudo/spacecorsair/activity/HelpActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/HelpActivity;->finish()V

    .line 21
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 27
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 33
    return-void
.end method
