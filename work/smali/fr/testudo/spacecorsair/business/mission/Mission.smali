.class public Lfr/testudo/spacecorsair/business/mission/Mission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;
    }
.end annotation


# static fields
.field public static targetDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static treasureDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public isPrimaryMission:Z

.field public level:I

.field public localizedName:Ljava/lang/String;

.field public missionDescCompletedId:I

.field public missionDescId:I

.field public missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

.field public missionId:Ljava/lang/String;

.field public missionNameId:I

.field public repeatable:Z

.field public restrictedMissionId:Ljava/lang/String;

.field public reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V
    .registers 11

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->repeatable:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 54
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    .line 55
    iput p2, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionNameId:I

    .line 56
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionDescId:I

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->localizedName:Ljava/lang/String;

    .line 58
    iput-boolean p5, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->isPrimaryMission:Z

    .line 59
    iput-object p7, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 60
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    .line 61
    iput-boolean p9, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->repeatable:Z

    .line 62
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionDescCompletedId:I

    .line 63
    return-void
.end method

.method public static setMissionFailure(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 79
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->giveUp()V

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveNoCorrentMission()V

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static setTargetTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/Mission;->targetDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 67
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_8:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 68
    return-void
.end method

.method public static setTreasureTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 71
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/Mission;->treasureDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 72
    return-void
.end method


# virtual methods
.method public getBestReward()Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->getBestReward()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    return-object v0
.end method

.method public getRewards()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    return-object v0
.end method

.method public grantRewardToPlayer()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->grantToPlayer()V

    .line 99
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isTutorial()Z
    .registers 3

    .prologue
    .line 114
    const-string v0, "GENESIS_TUTORIAL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public levelAcceptable()Z
    .registers 3

    .prologue
    .line 86
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->repeatable:Z

    if-eqz v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-le v0, v1, :cond_14

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public markAbandonedOrValidated()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method
