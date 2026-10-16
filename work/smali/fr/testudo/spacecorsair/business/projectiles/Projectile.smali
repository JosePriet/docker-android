.class public abstract Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static final AGILITY_MESSAGE:Ljava/lang/String;

.field public static final CRIT_MESSAGE:Ljava/lang/String; = "crit"

.field public static final POISON_MESSAGE:Ljava/lang/String;

.field public static final RELOAD_MESSAGE:Ljava/lang/String;

.field public static final ROOT_MESSAGE:Ljava/lang/String;

.field public static final SNARE_MESSAGE:Ljava/lang/String;


# instance fields
.field public alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public damage:F

.field public destroyedOnImpact:Z

.field public ignoreImactDecalOnTarget:Z

.field public isAgilityTaker:Z

.field public isCrit:Z

.field public isPoisoned:Z

.field public isReloadLonger:Z

.field public isSnare:Z

.field public lifeTimeInMilli:J

.field public sender:Lfr/testudo/spacecorsair/business/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702fc

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->RELOAD_MESSAGE:Ljava/lang/String;

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702f9

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->SNARE_MESSAGE:Ljava/lang/String;

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702fa

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ROOT_MESSAGE:Ljava/lang/String;

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702fb

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->POISON_MESSAGE:Ljava/lang/String;

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702fd

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->AGILITY_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->destroyedOnImpact:Z

    .line 18
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z

    .line 19
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isReloadLonger:Z

    .line 20
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isAgilityTaker:Z

    .line 21
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isSnare:Z

    .line 22
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPoisoned:Z

    .line 23
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ignoreImactDecalOnTarget:Z

    .line 36
    return-void
.end method

.method public constructor <init>(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->destroyedOnImpact:Z

    .line 18
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z

    .line 19
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isReloadLonger:Z

    .line 20
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isAgilityTaker:Z

    .line 21
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isSnare:Z

    .line 22
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPoisoned:Z

    .line 23
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ignoreImactDecalOnTarget:Z

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 41
    return-void
.end method


# virtual methods
.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 105
    return-void
.end method

.method protected applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v0, p1, :cond_9

    .line 97
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    move-result v0

    .line 99
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 85
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    .line 86
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->onDestroyed(Z)V

    .line 91
    :cond_12
    return-void
.end method

.method protected init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    if-nez p3, :cond_25

    .line 50
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->level:I

    .line 57
    :goto_8
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->doesColideWithOthers:Z

    .line 58
    iput p1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 59
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->hasSpeedDeperdition:Z

    .line 60
    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    .line 61
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 62
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    .line 63
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->r:F

    .line 64
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->g:F

    .line 65
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->b:F

    .line 66
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 67
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ignoreImactDecalOnTarget:Z

    .line 68
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->resolveAlteration()V

    .line 69
    return-object p0

    .line 52
    :cond_25
    invoke-virtual {p3}, Lfr/testudo/spacecorsair/business/Element;->getLevel()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->level:I

    .line 53
    iget v0, p3, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    goto :goto_8
.end method

.method public isAlive()Z
    .registers 5

    .prologue
    .line 44
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onImpactWithElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 110
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->reset()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->destroyedOnImpact:Z

    .line 79
    return-void
.end method

.method public resolveAlteration()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->enabled()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->probability:F

    float-to-double v4, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-lez v0, :cond_a2

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPoisoned:Z

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->enabled()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->probability:F

    float-to-double v4, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-lez v0, :cond_a5

    move v0, v1

    :goto_38
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isReloadLonger:Z

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->enabled()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->probability:F

    float-to-double v4, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-lez v0, :cond_a7

    move v0, v1

    :goto_54
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isAgilityTaker:Z

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->enabled()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->probability:F

    float-to-double v4, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-lez v0, :cond_a9

    move v0, v1

    :goto_70
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isSnare:Z

    .line 122
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->enabled()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->probability:F

    float-to-double v2, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_a1

    .line 125
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z

    .line 126
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 127
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_a1

    .line 131
    :cond_a1
    return-void

    :cond_a2
    move v0, v2

    .line 118
    goto/16 :goto_1c

    :cond_a5
    move v0, v2

    .line 119
    goto :goto_38

    :cond_a7
    move v0, v2

    .line 120
    goto :goto_54

    :cond_a9
    move v0, v2

    .line 121
    goto :goto_70
.end method
