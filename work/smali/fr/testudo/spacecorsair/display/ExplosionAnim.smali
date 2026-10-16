.class public abstract Lfr/testudo/spacecorsair/display/ExplosionAnim;
.super Lfr/testudo/spacecorsair/display/AnimatedDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;
    .registers 4

    .prologue
    .line 18
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/AnimatedDrawable;

    .line 22
    if-eqz p2, :cond_12

    invoke-static {p2}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V

    .line 26
    :cond_12
    return-object p0
.end method
