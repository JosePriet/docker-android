.class public Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;
    }
.end annotation


# static fields
.field public static final OBJECT_TYPE_ID:Ljava/lang/String; = "objecttype"


# instance fields
.field btnEquip:Landroid/widget/Button;

.field btnUse:Landroid/widget/Button;

.field imgItem:Landroid/widget/ImageView;

.field protected laserSpecTable:Landroid/widget/TableLayout;

.field layAlterations:Landroid/view/ViewGroup;

.field protected missileSpecTable:Landroid/widget/TableLayout;

.field private objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field protected objectTypeAsString:Ljava/lang/String;

.field protected shieldSpecTable:Landroid/widget/TableLayout;

.field txtActuel:Landroid/widget/TextView;

.field txtAlreadyStored:Landroid/widget/TextView;

.field txtAlterations:Landroid/widget/TextView;

.field txtAlterationsTitle:Landroid/widget/TextView;

.field txtCurrentLaserActxtCurrentency:Landroid/widget/TextView;

.field txtCurrentLaserDamage:Landroid/widget/TextView;

.field txtCurrentLaserDps:Landroid/widget/TextView;

.field txtCurrentLaserReload:Landroid/widget/TextView;

.field txtCurrentLaserSpeed:Landroid/widget/TextView;

.field txtCurrentMissileAgility:Landroid/widget/TextView;

.field txtCurrentMissileDamage:Landroid/widget/TextView;

.field txtCurrentMissileLevel:Landroid/widget/TextView;

.field txtCurrentMissileLifeTime:Landroid/widget/TextView;

.field txtCurrentMissileQuantity:Landroid/widget/TextView;

.field txtCurrentMissileRangeDamage:Landroid/widget/TextView;

.field txtCurrentMissileResistance:Landroid/widget/TextView;

.field txtCurrentShieldCapacity:Landroid/widget/TextView;

.field txtCurrentShieldRegenRate:Landroid/widget/TextView;

.field txtCurrentShieldRegenTime:Landroid/widget/TextView;

.field txtFullLife:Landroid/widget/TextView;

.field txtItemDescription:Landroid/widget/TextView;

.field txtItemName:Landroid/widget/TextView;

.field txtItemQuality:Landroid/widget/TextView;

.field txtItemWeight:Landroid/widget/TextView;

.field txtLaserAccuracy:Landroid/widget/TextView;

.field txtLaserDamage:Landroid/widget/TextView;

.field txtLaserDps:Landroid/widget/TextView;

.field txtLaserLevel:Landroid/widget/TextView;

.field txtLaserReload:Landroid/widget/TextView;

.field txtLaserSpeed:Landroid/widget/TextView;

.field txtMissileAgility:Landroid/widget/TextView;

.field txtMissileDamage:Landroid/widget/TextView;

.field txtMissileLevel:Landroid/widget/TextView;

.field txtMissileLifeTime:Landroid/widget/TextView;

.field txtMissileQuantity:Landroid/widget/TextView;

.field txtMissileRangeDamage:Landroid/widget/TextView;

.field txtMissileResistance:Landroid/widget/TextView;

.field txtShieldCapacity:Landroid/widget/TextView;

.field txtShieldLevel:Landroid/widget/TextView;

.field txtShieldRegenerationRate:Landroid/widget/TextView;

.field txtShieldRegenerationTime:Landroid/widget/TextView;

.field txtTimeUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 157
    return-void
.end method

.method private bindMap()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlreadyStored:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isMap()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 186
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 187
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlreadyStored:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_21
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 191
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->unlockMapMode()V

    .line 196
    :cond_32
    return-void
.end method

.method public static getInventoryDetailIntent(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v2, "objecttype"

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method private onMapUnlocked()V
    .registers 3

    .prologue
    .line 208
    const v0, 0x7f0702bb

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMapRevealed()V

    .line 211
    return-void
.end method


# virtual methods
.method public bindBooster()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 252
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtActuel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :cond_30
    return-void

    :cond_31
    move v0, v1

    .line 249
    goto :goto_16
.end method

.method public bindHyperdriveEngine()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 243
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtActuel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_30
    return-void

    :cond_31
    move v0, v1

    .line 240
    goto :goto_16
.end method

.method public bindInstaRepair()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    move v0, v1

    .line 215
    :goto_18
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canUseInstantRepair()Z

    move-result v4

    .line 216
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v5}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    if-lez v3, :cond_36

    move v3, v1

    .line 219
    :goto_31
    if-nez v3, :cond_38

    .line 236
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v0, v2

    .line 214
    goto :goto_18

    :cond_36
    move v3, v2

    .line 216
    goto :goto_31

    .line 223
    :cond_38
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnUse:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnUse:Landroid/widget/Button;

    if-nez v0, :cond_4e

    if-eqz v4, :cond_4e

    :goto_43
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    if-eqz v0, :cond_50

    .line 227
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtFullLife:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    :cond_4e
    move v1, v2

    .line 224
    goto :goto_43

    .line 230
    :cond_50
    if-nez v4, :cond_33

    .line 231
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtTimeUp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070287

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sec)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtTimeUp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33
.end method

.method public bindLaser()V
    .registers 13

    .prologue
    const/4 v8, -0x1

    const v11, -0xff0100

    const/4 v10, 0x0

    const/high16 v9, -0x10000

    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->laserSpecTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 399
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->hasOneEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 400
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterationsTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->layAlterations:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->getLocalizedHtmlDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_3b
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserLevel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserDamage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserDps:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserAccuracy:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserReload:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserSpeed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-le v1, v3, :cond_241

    const/4 v1, 0x1

    .line 416
    :goto_e9
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    if-nez v1, :cond_244

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_244

    const/4 v3, 0x1

    :goto_100
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    if-eqz v1, :cond_10a

    .line 419
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtLaserLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    :cond_10a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 424
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->compareTo(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    move-result-object v5

    .line 425
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v1

    sub-float v6, v0, v1

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 428
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtActuel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :cond_141
    const-string v3, "("

    .line 433
    const-string v2, "("

    .line 434
    const-string v4, "("

    .line 435
    const-string v1, "("

    .line 436
    const-string v0, "("

    .line 438
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserActxtCurrentency:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDamage:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDps:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserReload:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserSpeed:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v7, v8

    cmpg-float v7, v7, v10

    if-gez v7, :cond_247

    .line 446
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserSpeed:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    :cond_172
    :goto_172
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    if-lez v7, :cond_26a

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "+"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserReload:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    :cond_18e
    :goto_18e
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    if-gez v7, :cond_275

    .line 467
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserActxtCurrentency:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    :cond_197
    :goto_197
    cmpg-float v7, v6, v10

    if-gez v7, :cond_297

    .line 478
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDps:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    :cond_1a0
    :goto_1a0
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    if-gez v7, :cond_2b5

    .line 489
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDamage:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 499
    :cond_1a9
    :goto_1a9
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserSpeed:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserReload:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDps:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserActxtCurrentency:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDamage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void

    :cond_241
    move v1, v2

    .line 415
    goto/16 :goto_e9

    :cond_244
    move v3, v2

    .line 416
    goto/16 :goto_100

    .line 449
    :cond_247
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v7, v8

    cmpl-float v7, v7, v10

    if-lez v7, :cond_172

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserSpeed:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_172

    .line 460
    :cond_26a
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    if-gez v7, :cond_18e

    .line 461
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserReload:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_18e

    .line 470
    :cond_275
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v7

    cmpl-float v7, v7, v10

    if-lez v7, :cond_197

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 472
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserActxtCurrentency:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_197

    .line 481
    :cond_297
    cmpl-float v7, v6, v10

    if-lez v7, :cond_1a0

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "+"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDps:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1a0

    .line 492
    :cond_2b5
    iget v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    if-lez v7, :cond_1a9

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentLaserDamage:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1a9
.end method

.method public bindMissile()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v12, -0x1

    const v11, -0xff0100

    const/high16 v10, -0x10000

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->missileSpecTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 260
    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-le v1, v3, :cond_2a0

    const/4 v1, 0x1

    .line 261
    :goto_22
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    if-nez v1, :cond_2a3

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a3

    const/4 v3, 0x1

    :goto_39
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 264
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtActuel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :cond_53
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->alteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->hasOneEnabled()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 269
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterationsTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->layAlterations:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->alteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->getLocalizedHtmlDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_79
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileLevel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileDamage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileRangeDamage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileAgility:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileResistance:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileLifeTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileQuantity:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    if-eqz v1, :cond_139

    .line 285
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtMissileLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    :cond_139
    const-string v8, "("

    .line 289
    const-string v7, "("

    .line 290
    const-string v3, "("

    .line 291
    const-string v6, "("

    .line 292
    const-string v2, "("

    .line 293
    const-string v5, "("

    .line 294
    const-string v4, "("

    .line 296
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->compareTo(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v9

    .line 299
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileDamage:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileAgility:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLifeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileQuantity:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileRangeDamage:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileResistance:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget v0, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_2a6

    .line 309
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileResistance:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v0, v2

    .line 318
    :goto_18a
    iget v1, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    cmpg-float v1, v1, v13

    if-gez v1, :cond_2c6

    .line 319
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileRangeDamage:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v1, v3

    .line 328
    :goto_196
    iget v2, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    if-gez v2, :cond_2e6

    .line 329
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileQuantity:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v2, v4

    .line 339
    :goto_1a0
    iget v3, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    if-gez v3, :cond_304

    .line 340
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLifeTime:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v3, v5

    .line 350
    :goto_1aa
    iget v4, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    if-gez v4, :cond_322

    .line 351
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileAgility:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v4, v6

    .line 361
    :goto_1b4
    iget v5, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    cmpg-float v5, v5, v13

    if-gez v5, :cond_340

    .line 362
    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileDamage:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v5, v7

    .line 371
    :goto_1c0
    iget v6, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    if-gez v6, :cond_360

    .line 372
    iget-object v6, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLevel:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v6, v8

    .line 382
    :goto_1ca
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileResistance:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    float-to-int v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLevel:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileRangeDamage:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileAgility:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileDamage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileQuantity:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLifeTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void

    :cond_2a0
    move v1, v2

    .line 260
    goto/16 :goto_22

    :cond_2a3
    move v3, v2

    .line 261
    goto/16 :goto_39

    .line 312
    :cond_2a6
    iget v0, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_390

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileResistance:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_18a

    .line 322
    :cond_2c6
    iget v1, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_38d

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileRangeDamage:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_196

    .line 332
    :cond_2e6
    iget v2, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    if-lez v2, :cond_38a

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileQuantity:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1a0

    .line 343
    :cond_304
    iget v3, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    if-lez v3, :cond_387

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLifeTime:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1aa

    .line 354
    :cond_322
    iget v4, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    if-lez v4, :cond_384

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileAgility:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1b4

    .line 365
    :cond_340
    iget v5, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    cmpl-float v5, v5, v13

    if-lez v5, :cond_381

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    iget-object v6, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileDamage:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1c0

    .line 375
    :cond_360
    iget v6, v9, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    if-lez v6, :cond_37e

    .line 376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 377
    iget-object v7, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentMissileLevel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ca

    :cond_37e
    move-object v6, v8

    goto/16 :goto_1ca

    :cond_381
    move-object v5, v7

    goto/16 :goto_1c0

    :cond_384
    move-object v4, v6

    goto/16 :goto_1b4

    :cond_387
    move-object v3, v5

    goto/16 :goto_1aa

    :cond_38a
    move-object v2, v4

    goto/16 :goto_1a0

    :cond_38d
    move-object v1, v3

    goto/16 :goto_196

    :cond_390
    move-object v0, v2

    goto/16 :goto_18a
.end method

.method public bindShield()V
    .registers 11

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v8, -0x1

    const v7, -0xff0100

    const/high16 v6, -0x10000

    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->shieldSpecTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 510
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtShieldRegenerationRate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtShieldCapacity:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtShieldRegenerationTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtShieldLevel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-le v1, v3, :cond_18e

    const/4 v1, 0x1

    .line 516
    :goto_8d
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    if-nez v1, :cond_191

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_191

    const/4 v3, 0x1

    :goto_a4
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 519
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->enable()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 520
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterationsTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->layAlterations:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 523
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->getLocalizedHtmlDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_cd
    if-eqz v1, :cond_d4

    .line 527
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtShieldLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    :cond_d4
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->compareTo(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    move-result-object v3

    .line 531
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 532
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtActuel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    :cond_101
    const-string v0, "("

    .line 536
    const-string v1, "("

    .line 537
    const-string v2, "("

    .line 539
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldCapacity:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenTime:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenRate:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    if-gez v4, :cond_194

    .line 544
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenRate:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    :cond_11f
    :goto_11f
    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    if-gez v4, :cond_1b2

    .line 554
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldCapacity:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    :cond_128
    :goto_128
    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    if-gez v4, :cond_1d0

    .line 564
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenTime:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    :cond_131
    :goto_131
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenRate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldCapacity:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    return-void

    :cond_18e
    move v1, v2

    .line 515
    goto/16 :goto_8d

    :cond_191
    move v3, v2

    .line 516
    goto/16 :goto_a4

    .line 547
    :cond_194
    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    if-lez v4, :cond_11f

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenRate:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11f

    .line 557
    :cond_1b2
    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    if-lez v4, :cond_128

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldCapacity:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_128

    .line 566
    :cond_1d0
    iget v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    if-lez v4, :cond_131

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtCurrentShieldRegenTime:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_131
.end method

.method public bindUI()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 97
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->context:Landroid/app/Activity;

    .line 99
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectTypeAsString:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtItemName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->getLocalisedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_42
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtItemQuality:Landroid/widget/TextView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getLocalisedLabelId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtItemQuality:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtItemWeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->imgItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyImage(Landroid/widget/ImageView;)V

    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtItemDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterations:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->layAlterations:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtAlterationsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->shieldSpecTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->laserSpecTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->missileSpecTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtActuel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtFullLife:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtTimeUp:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnUse:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->btnEquip:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    :cond_f3
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_144

    .line 161
    :cond_106
    :goto_106
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isConsommable()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_152

    .line 175
    :cond_11b
    :goto_11b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindMap()V

    .line 178
    return-void

    .line 105
    :cond_11f
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->txtItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42

    .line 139
    :pswitch_12c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindShield()V

    goto :goto_106

    .line 144
    :pswitch_130
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindLaser()V

    goto :goto_106

    .line 148
    :pswitch_134
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindMissile()V

    goto :goto_106

    .line 152
    :pswitch_138
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindBooster()V

    goto :goto_106

    .line 156
    :pswitch_13c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindHyperdriveEngine()V

    goto :goto_106

    .line 167
    :pswitch_140
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindInstaRepair()V

    goto :goto_11b

    .line 136
    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_12c
        :pswitch_130
        :pswitch_134
        :pswitch_138
        :pswitch_13c
    .end packed-switch

    .line 164
    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_140
    .end packed-switch
.end method

.method public btnEquip()V
    .registers 3

    .prologue
    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 85
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindUI()V

    .line 86
    return-void
.end method

.method public btnUse()V
    .registers 4

    .prologue
    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->context:Landroid/app/Activity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->useObject(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 91
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->bindUI()V

    .line 92
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 580
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 582
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 586
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 588
    return-void
.end method

.method public unlockMapMode()V
    .registers 3

    .prologue
    .line 200
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->objectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->setMapUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 202
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->onMapUnlocked()V

    .line 205
    :cond_18
    return-void
.end method
