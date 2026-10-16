.class public Lfr/testudo/spacecorsair/game/Game;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DELAY_BETWEEN_TWO_NOTIFICATIONS_IN_SEC:I = 0x78


# instance fields
.field public beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

.field public context:Landroid/content/Context;

.field public currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

.field public gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

.field public globalMapMode:Z

.field public handler:Landroid/os/Handler;

.field public mapMode:Z

.field public mogaConnected:Z

.field private nextTimeCanDisplayNotEnoughSpace:J

.field public playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

.field public playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

.field public started:Z

.field textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

.field view:Lfr/testudo/spacecorsair/view/MainView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    .line 49
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 50
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    .line 55
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/Game;->nextTimeCanDisplayNotEnoughSpace:J

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object p0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 60
    iput-object p2, p0, Lfr/testudo/spacecorsair/game/Game;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-direct {v0, p0, p2}, Lfr/testudo/spacecorsair/engine/GameThread;-><init>(Lfr/testudo/spacecorsair/game/Game;Landroid/os/Handler;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/display/TextureLibrary;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/TextureLibrary;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    .line 63
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private initLootTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8

    .prologue
    const/high16 v0, 0x43340000    # 180.0f

    .line 625
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 626
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->stone:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200d4

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 627
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200d1

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 628
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 629
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->malachite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200d2

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 630
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200c7

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 632
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->alien_egg:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200c3

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 633
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->alien_jelly:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200c4

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 634
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->engine_block:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200c8

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 636
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200cd

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 637
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hullRepair25p:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200ce

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 638
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hullRepair60p:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200cf

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 640
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v0, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 641
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    invoke-direct {v2, v1, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 643
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsFoodContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 644
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodsEnergyContainer:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 646
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionContrebandeBox:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 648
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->electonicChip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 650
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->secretTransmeter:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 653
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200cc

    invoke-virtual {v0, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 654
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_MAPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_161
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_171

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 655
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_161

    .line 658
    :cond_171
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 661
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200cb

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 662
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 663
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200e6

    invoke-virtual {v0, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 666
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_MISSILES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 667
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_1a9

    .line 671
    :cond_1b9
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200c9

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 672
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020012

    invoke-virtual {v3, v4, p1, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 674
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootBasic:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 675
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootExtra:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 676
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 677
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootInapp:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 680
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200d0

    invoke-virtual {v0, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 682
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIELDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 683
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_20f

    .line 687
    :cond_21f
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200ca

    invoke-virtual {v0, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 689
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_LASERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_249

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 690
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->setDrawable(Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_239

    .line 694
    :cond_249
    return-void
.end method


# virtual methods
.method public loadAnimatedExplosionTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x10

    const/high16 v5, 0x42dc0000    # 110.0f

    .line 552
    new-array v0, v6, [Lfr/testudo/spacecorsair/display/Texture;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02008e

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020096

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020097

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020098

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020099

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02009a

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02009b

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02009c

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02009d

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02008f

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020090

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020091

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020092

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020093

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020094

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020095

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 571
    const/16 v1, 0x3c

    invoke-static {v6, v1}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->initFluidArray(II)[J

    move-result-object v1

    .line 573
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Explosion1Animated;->load([Lfr/testudo/spacecorsair/display/Texture;[JLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 576
    new-array v0, v6, [Lfr/testudo/spacecorsair/display/Texture;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02006e

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020076

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020077

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020078

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020079

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02007a

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02007b

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02007c

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02007d

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02006f

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020070

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020071

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020072

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020073

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020074

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020075

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 595
    const/16 v1, 0x3c

    invoke-static {v6, v1}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->initFluidArray(II)[J

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Explosion2Animated;->load([Lfr/testudo/spacecorsair/display/Texture;[JLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 598
    new-array v0, v6, [Lfr/testudo/spacecorsair/display/Texture;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02007e

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020086

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020087

    invoke-virtual {v1, v2, p1, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020088

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020089

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02008a

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02008b

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02008c

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02008d

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02007f

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020080

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020081

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020082

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020083

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020084

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020085

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 617
    const/16 v1, 0x3c

    invoke-static {v6, v1}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->initFluidArray(II)[J

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Explosion3Animated;->load([Lfr/testudo/spacecorsair/display/Texture;[JLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 619
    return-void
.end method

.method public loadLastUsedLevel()V
    .registers 3

    .prologue
    .line 730
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;-><init>()V

    .line 732
    :try_start_5
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLastLevel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_18

    .line 745
    :goto_8
    new-instance v0, Lfr/testudo/spacecorsair/engine/Camera;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Camera;-><init>()V

    .line 746
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 747
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    .line 748
    return-void

    .line 733
    :catch_18
    move-exception v0

    .line 738
    const-string v0, "tutorial"

    const-string v1, "> genesis <"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public loadMultiLevel()V
    .registers 3

    .prologue
    .line 720
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;-><init>()V

    .line 721
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToMultiLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 722
    new-instance v0, Lfr/testudo/spacecorsair/engine/Camera;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Camera;-><init>()V

    .line 723
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 724
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    .line 726
    return-void
.end method

.method public loadRatAlienShip(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    .line 508
    const/16 v0, 0xb

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Texture;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02001e

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02001d

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02001c

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02001b

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02001a

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020019

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020014

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020015

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020016

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020018

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 522
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->setTexture([Lfr/testudo/spacecorsair/display/Texture;)V

    .line 524
    return-void
.end method

.method public loadTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 19

    .prologue
    move-object/from16 v0, p0
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;
    move-object/from16 v1, p1
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->load(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020024

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/Asteroid;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02009e

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/display/Fleche;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0200e0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/Mine;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02011a

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/display/ShockWave;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020046

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020102

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 164
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 165
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200fd

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 169
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->CONDOR:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 170
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->CONDOR:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 172
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 173
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200ff

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 178
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->HULLBREAKER:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 179
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->HULLBREAKER:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200fe

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 184
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->CORVETTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 185
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->CORVETTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020011

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020014

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020002

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020103

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->POLICE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v3, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->POLICE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 188
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    new-instance v4, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-direct {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02004d

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 189
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    new-instance v4, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x42480000    # 50.0f

    invoke-direct {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02004c

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020117

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0200d5

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0200f4

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 195
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02011e

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    .line 198
    sget-object v7, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_S:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    new-instance v8, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x41c80000    # 25.0f

    invoke-direct {v8, v9, v10}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v7, v8, v3}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->setRadarDrawables(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 199
    sget-object v3, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_M:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    new-instance v7, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v9, 0x41c80000    # 25.0f

    invoke-direct {v7, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v3, v7, v4}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->setRadarDrawables(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 200
    sget-object v3, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_P:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v7, 0x41c80000    # 25.0f

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-direct {v4, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->setRadarDrawables(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 201
    sget-object v3, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->PORTAL:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v5, 0x41c80000    # 25.0f

    const/high16 v7, 0x41c80000    # 25.0f

    invoke-direct {v4, v5, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4, v6}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->setRadarDrawables(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200c0

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 205
    new-instance v4, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v5, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_128:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v4, v5, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v4, Lfr/testudo/spacecorsair/game/levels/Level;->pointDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020109

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f02010a

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f02010b

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 211
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02010c

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    .line 212
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f02010d

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 215
    sget-object v8, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    const/4 v9, 0x5

    new-array v9, v9, [Lfr/testudo/spacecorsair/display/Texture;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v4, v9, v3

    const/4 v3, 0x2

    aput-object v5, v9, v3

    const/4 v3, 0x3

    aput-object v6, v9, v3

    const/4 v3, 0x4

    aput-object v7, v9, v3

    iput-object v9, v8, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    .line 218
    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    const/4 v4, 0x5

    new-array v4, v4, [Lfr/testudo/spacecorsair/display/Texture;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02010e

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02010f

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020110

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020111

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020112

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020105

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f020106

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f020107

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 230
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020108

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    .line 233
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020025

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 234
    invoke-static {v7}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 237
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 239
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 240
    invoke-static {v3, v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 241
    invoke-static {v3, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 242
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 243
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 244
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 245
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 246
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 247
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f02013c

    move-object/from16 v0, p1

    invoke-virtual {v5, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 251
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f020115

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020114

    move-object/from16 v0, p1

    invoke-virtual {v5, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 256
    invoke-static {v5, v1, v7}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 259
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02002f

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 262
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020029

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 263
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f02002e

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9, v10}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 264
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020028

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0, v10, v11}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v8

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v10}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f02002d

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0, v11, v12}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v9

    .line 267
    move-object/from16 v0, p0

    iget-object v10, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v11}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f02002c

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0, v12, v13}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v10

    .line 269
    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v12}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f02002a

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0, v13, v14}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v11

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v13}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f02002b

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0, v14, v15}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v12

    .line 274
    new-instance v13, Lfr/testudo/spacecorsair/display/Background;

    new-instance v14, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v15, 0x46480000    # 12800.0f

    const/high16 v16, 0x46480000    # 12800.0f

    invoke-direct/range {v14 .. v16}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v13, v14, v1, v11, v12}, Lfr/testudo/spacecorsair/display/Background;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 277
    sget-object v11, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    new-instance v12, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v14, 0x46000000    # 8192.0f

    const/high16 v15, 0x46000000    # 8192.0f

    invoke-direct {v12, v14, v15}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v11, v12, v1}, Lfr/testudo/spacecorsair/display/Background$BackImage;->setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 278
    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    new-instance v11, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v12, 0x46160000    # 9600.0f

    const/high16 v14, 0x46160000    # 9600.0f

    invoke-direct {v11, v12, v14}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, v11, v5}, Lfr/testudo/spacecorsair/display/Background$BackImage;->setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 279
    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Red:Lfr/testudo/spacecorsair/display/Background$BackImage;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v11, 0x46480000    # 12800.0f

    const/high16 v12, 0x46480000    # 12800.0f

    invoke-direct {v5, v11, v12}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, v5, v7}, Lfr/testudo/spacecorsair/display/Background$BackImage;->setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 280
    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Blue:Lfr/testudo/spacecorsair/display/Background$BackImage;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v7, 0x46480000    # 12800.0f

    const/high16 v11, 0x46480000    # 12800.0f

    invoke-direct {v5, v7, v11}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, v5, v8}, Lfr/testudo/spacecorsair/display/Background$BackImage;->setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 281
    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v7, 0x46480000    # 12800.0f

    const/high16 v8, 0x46480000    # 12800.0f

    invoke-direct {v5, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, v5, v9}, Lfr/testudo/spacecorsair/display/Background$BackImage;->setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 282
    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v7, 0x46480000    # 12800.0f

    const/high16 v8, 0x46480000    # 12800.0f

    invoke-direct {v5, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, v5, v10}, Lfr/testudo/spacecorsair/display/Background$BackImage;->setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020141

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 287
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    iput-object v13, v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->backgroundObject:Lfr/testudo/spacecorsair/display/Background;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200bc

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/Joystick;->initTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 292
    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->initTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200d6

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->initTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020104

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 299
    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/Radar;->initTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02011b

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 303
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200fa

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 307
    sget-object v5, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->blue_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    invoke-virtual {v5, v1}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 308
    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->transparent_blue:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0200fb

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 309
    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->red_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020113

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 310
    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->green_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0200a1

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02014f

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 313
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020026

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020027

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 319
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02006c

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 322
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02006d

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 323
    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200be

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 326
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020013

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 329
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200e3

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 333
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200e5

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 337
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200e4

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/MicroMissile;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020144

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020145

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 344
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020146

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 345
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020147

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0, v10}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v8

    .line 347
    const/4 v9, 0x4

    new-array v9, v9, [Lfr/testudo/spacecorsair/display/Texture;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    aput-object v5, v9, v1

    const/4 v1, 0x2

    aput-object v7, v9, v1

    const/4 v1, 0x3

    aput-object v8, v9, v1

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->setTuyereDrawable([Lfr/testudo/spacecorsair/display/Texture;)V

    .line 350
    const/16 v1, 0x8

    new-array v1, v1, [Lfr/testudo/spacecorsair/display/Texture;

    .line 351
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200eb

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 352
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200ec

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 353
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200ed

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 354
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200ee

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 355
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200ef

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 356
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200f0

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 357
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200f1

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 358
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200f2

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    aput-object v7, v1, v5

    .line 359
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/SpaceMan;->setTextures([Lfr/testudo/spacecorsair/display/Texture;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020001

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 363
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct {v5, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020069

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 367
    new-instance v5, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v7, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_16:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v5, v7, v1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    .line 368
    new-instance v5, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v7, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v5, v7, v1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_BIG:Lfr/testudo/spacecorsair/display/Drawable;

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02011c

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02011d

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 374
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/Portal;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 375
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/Portal;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02006a

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 379
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f02013e

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 383
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02013f

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 384
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020050

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0200e1

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 388
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020065

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02011f

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 399
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020120

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 400
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020121

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0, v10}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v8

    .line 401
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 402
    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020126

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020122

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 408
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020123

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 409
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 410
    invoke-static {v7}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 414
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/station/CasinoStation;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 415
    invoke-static {v7}, Lfr/testudo/spacecorsair/business/world/station/CasinoStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020127

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 419
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020129

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 420
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020128

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0, v10}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v8

    .line 421
    invoke-static {v5, v7}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 422
    invoke-static {v8}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020124

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 426
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020125

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 427
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 428
    invoke-static {v7}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020021

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 432
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020022

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 433
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 434
    invoke-static {v7}, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020067

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 437
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020142

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 441
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0200e7

    move-object/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v7

    .line 445
    invoke-static {v5, v1, v7}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02005c

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 448
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f02005d

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 451
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020103

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0, v8}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v5

    .line 455
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 456
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0200ac

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/HudImages;->setHeartTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0200f3

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/HudImages;->setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f020118

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/display/hud/HudImages;->setShieldFasterTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 462
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200a6

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 463
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200a5

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 464
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200d7

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 465
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200a4

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 467
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200ea

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 469
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200e8

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 470
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0200e9

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f02013b

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f020066

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v7}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/mission/Mission;->setTargetTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f020143

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/mission/Mission;->setTreasureTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f020063

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 477
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 478
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f02009f

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v5}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 481
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 482
    invoke-static {v3, v4, v6}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020011

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 485
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->setTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02001f

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020020

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 490
    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 493
    invoke-virtual/range {p0 .. p1}, Lfr/testudo/spacecorsair/game/Game;->loadUfoAlienShip(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 494
    invoke-virtual/range {p0 .. p1}, Lfr/testudo/spacecorsair/game/Game;->loadRatAlienShip(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 495
    invoke-virtual/range {p0 .. p1}, Lfr/testudo/spacecorsair/game/Game;->loadAnimatedExplosionTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 496
    invoke-direct/range {p0 .. p1}, Lfr/testudo/spacecorsair/game/Game;->initLootTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 499
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v1, :cond_ce6

    .line 500
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ensureImageLoaded()V

    .line 503
    :cond_ce6
    return-void
.end method

.method public loadUfoAlienShip(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    .line 529
    const/16 v0, 0xf

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Texture;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020002

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020003

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020004

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020008

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020009

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000f

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->textureLibrary:Lfr/testudo/spacecorsair/display/TextureLibrary;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/view/MainView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020010

    invoke-virtual {v2, v3, p1, v4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 547
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->setTexture([Lfr/testudo/spacecorsair/display/Texture;)V

    .line 549
    return-void
.end method

.method public onPlayerDeath()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 754
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    .line 755
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getDeathMoneyPenality()I

    move-result v1

    .line 756
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCredit(I)V

    .line 757
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setFullLifeAndShieldUp()V

    .line 758
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestLevelReinit()V

    .line 759
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nbrMissileOnMe:I

    .line 760
    iput-wide v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 761
    iput-wide v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    .line 762
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removeAllAlterations()V

    .line 765
    return-void
.end method

.method public onSurfaceReady()V
    .registers 5

    .prologue
    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    .line 773
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/MusicManager;->isMusicSelected()Z

    move-result v0

    if-nez v0, :cond_41

    .line 774
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/MusicManager;->playMusicResource(I)V

    .line 781
    :goto_18
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 782
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 783
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_REMOVE_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 785
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 787
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->clearInputQueue()V

    .line 788
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->resumeGame()V

    .line 789
    return-void

    .line 777
    :cond_41
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/MusicManager;->resumeMusic()V

    goto :goto_18
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 708
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 709
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->updateCurLife(I)V

    .line 711
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->pauseGame()V

    .line 712
    return-void
.end method

.method public requestUnSetGlobalMapMode()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromGalaxyMap()V

    .line 132
    return-void
.end method

.method public requestUnSetMapMode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v3, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const v1, 0x453b8000    # 3000.0f

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    .line 99
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v3, v0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 103
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->resumeGame()V

    .line 716
    return-void
.end method

.method public setGlobalMapMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 109
    if-nez v0, :cond_11

    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    :cond_11
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 113
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    .line 114
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 118
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstGalaxyMode()V

    .line 121
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GameThread;->setHandler(Landroid/os/Handler;)V

    .line 141
    :cond_9
    return-void
.end method

.method public setMapMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_32

    .line 74
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 78
    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 79
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    .line 80
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 81
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v3, v0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 82
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v3, v0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstRadarMode()V

    .line 86
    return-void

    .line 76
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_11
.end method

.method public setView(Lfr/testudo/spacecorsair/view/MainView;)V
    .registers 2

    .prologue
    .line 698
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/Game;->view:Lfr/testudo/spacecorsair/view/MainView;

    .line 699
    return-void
.end method

.method public showNotEnoughPlaceInCargo()V
    .registers 9

    .prologue
    .line 803
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 804
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/Game;->nextTimeCanDisplayNotEnoughSpace:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_21

    .line 805
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702f4

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 806
    const-wide/32 v0, 0x1d4c0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/Game;->nextTimeCanDisplayNotEnoughSpace:J

    .line 808
    :cond_21
    return-void
.end method

.method public startGame()V
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->start()V

    .line 705
    return-void
.end method

.method public updateHandler(Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 793
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/Game;->handler:Landroid/os/Handler;

    .line 794
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/GameThread;->setHandler(Landroid/os/Handler;)V

    .line 796
    return-void
.end method
