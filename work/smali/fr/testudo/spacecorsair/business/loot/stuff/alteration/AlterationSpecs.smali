.class public Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public static final alterationTextAgility1:Ljava/lang/String;

.field public static final alterationTextAgility2:Ljava/lang/String;

.field public static final alterationTextCrit1:Ljava/lang/String;

.field public static final alterationTextCrit2:Ljava/lang/String;

.field public static final alterationTextPoison1:Ljava/lang/String;

.field public static final alterationTextPoison2:Ljava/lang/String;

.field public static final alterationTextReload1:Ljava/lang/String;

.field public static final alterationTextReload2:Ljava/lang/String;

.field public static final alterationTextRoot:Ljava/lang/String;

.field public static final alterationTextSnare1:Ljava/lang/String;

.field public static final alterationTextSnare2:Ljava/lang/String;


# instance fields
.field public agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

.field public critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

.field public poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

.field public reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

.field public snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextCrit1:Ljava/lang/String;

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070305

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextCrit2:Ljava/lang/String;

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070306

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextPoison1:Ljava/lang/String;

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070307

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextPoison2:Ljava/lang/String;

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070308

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextReload1:Ljava/lang/String;

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070309

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextReload2:Ljava/lang/String;

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07030a

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextAgility1:Ljava/lang/String;

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07030b

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextAgility2:Ljava/lang/String;

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07030c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextSnare1:Ljava/lang/String;

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07030d

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextSnare2:Ljava/lang/String;

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07030e

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextRoot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    .line 25
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    .line 26
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    .line 27
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    .line 28
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    .line 29
    return-void
.end method


# virtual methods
.method public getLocalizedHtmlDescription()Ljava/lang/String;
    .registers 9

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "<b>"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 56
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->enabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->getTexualProbability()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextCrit1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextCrit2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 65
    :cond_33
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->enabled()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 68
    if-eqz v0, :cond_16a

    .line 69
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :goto_42
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->getTexualProbability()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextPoison1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->totalDamage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextPoison2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_83
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->enabled()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 89
    if-eqz v0, :cond_16d

    .line 90
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_92
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->getTexualProbability()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextReload1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextReload2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->duree:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_d2
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->enabled()Z

    move-result v3

    if-eqz v3, :cond_122

    .line 108
    if-eqz v0, :cond_170

    .line 109
    const-string v1, "<br/><br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_e1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->getTexualProbability()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextAgility1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    sub-float v3, v6, v3

    mul-float/2addr v3, v7

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextAgility2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->duree:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_122
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->enabled()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 126
    if-eqz v0, :cond_131

    .line 127
    const-string v0, "<br/><br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->snareRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_173

    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->getTexualProbability()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->duree:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_15f
    :goto_15f
    const-string v0, "</b>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16a
    move v0, v1

    .line 71
    goto/16 :goto_42

    :cond_16d
    move v0, v1

    .line 92
    goto/16 :goto_92

    :cond_170
    move v0, v1

    .line 111
    goto/16 :goto_e1

    .line 142
    :cond_173
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->getTexualProbability()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextSnare1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->snareRatio:F

    sub-float v1, v6, v1

    mul-float/2addr v1, v7

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->alterationTextSnare2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->duree:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15f
.end method

.method public hasOneEnabled()Z
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->enabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->enabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->enabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->enabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method
