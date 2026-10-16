.class final Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$4;
.super Lfr/testudo/spacecorsair/business/mission/engine/delivery/BountyHunterTargetCreator;
.source "SourceFile"


# instance fields
.field final synthetic val$targetActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)V
    .registers 2

    .prologue
    .line 448
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$4;->val$targetActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/BountyHunterTargetCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public addElementToTheLevel()Lfr/testudo/spacecorsair/business/Element;
    .registers 6

    .prologue
    .line 452
    const/16 v0, 0xc

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 453
    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v3, 0x4650

    const/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->getRandomLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 454
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->updateSapCoords()V

    .line 455
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 456
    const-string v1, "Stravos"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->isMissionObjective:Z

    .line 458
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 459
    const v1, 0x3f4ececf

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->r:F

    .line 460
    const v1, 0x3f890909

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->g:F

    .line 461
    const v1, 0x3e929293

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->b:F

    .line 463
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_8sec_350_proba_3:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 464
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->root100_8sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->withMissileAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 465
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForce:F

    const v2, 0x3f933333    # 1.15f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForce:F

    .line 467
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$4;->val$targetActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 470
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 471
    return-object v0
.end method
