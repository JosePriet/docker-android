.class public Lfr/testudo/spacecorsair/view/MainView;
.super Lfr/testudo/spacecorsair/engine/GLSurfaceView;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field public game:Lfr/testudo/spacecorsair/game/Game;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p1, p0, Lfr/testudo/spacecorsair/view/MainView;->context:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lfr/testudo/spacecorsair/view/MainView;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfr/testudo/spacecorsair/game/Game;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lfr/testudo/spacecorsair/view/MainView;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lfr/testudo/spacecorsair/view/MainView;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 27
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/view/MainView;->requestFocus()Z

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/view/MainView;->setFocusableInTouchMode(Z)V

    .line 29
    invoke-virtual {p2, p0}, Lfr/testudo/spacecorsair/game/Game;->setView(Lfr/testudo/spacecorsair/view/MainView;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->onPause()V

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/view/MainView;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 40
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Lfr/testudo/spacecorsair/engine/GLSurfaceView;->onResume()V

    .line 46
    return-void
.end method
