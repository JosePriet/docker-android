.class public abstract Lfr/testudo/spacecorsair/display/text/TextMessage;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method protected init(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/text/TextMessage;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object p1, p0, Lfr/testudo/spacecorsair/display/text/TextMessage;->value:Ljava/lang/String;

    .line 22
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/text/TextMessage;->doesColideWithOthers:Z

    .line 23
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/text/TextMessage;->removed:Z

    .line 24
    return-object p0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/text/TextMessage;->removed:Z

    .line 47
    return-void
.end method
