.class public Lfr/testudo/spacecorsair/display/ParticuleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static addBrown(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addBrown(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 52
    return-void
.end method

.method public static addBrown(Lfr/testudo/spacecorsair/business/Element;IZ)V
    .registers 10

    .prologue
    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    if-nez p2, :cond_6

    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 60
    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, p1, :cond_30

    .line 61
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newParticule()Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/Particule;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    .line 62
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ef8f8f9

    const v5, 0x3ee4e4e5

    const v6, 0x3e808081

    invoke-virtual {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/display/Particule;->setColor(FFFF)V

    .line 63
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 65
    :cond_30
    return-void
.end method

.method public static addGreen(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 19
    return-void
.end method

.method public static addGreen(Lfr/testudo/spacecorsair/business/Element;IZ)V
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    if-nez p2, :cond_8

    .line 24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 26
    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_28

    .line 27
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newParticule()Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/Particule;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    .line 28
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, v5, v5}, Lfr/testudo/spacecorsair/display/Particule;->setColor(FFFF)V

    .line 29
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 31
    :cond_28
    return-void
.end method

.method public static addLightBlue(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 88
    return-void
.end method

.method public static addLightBlue(Lfr/testudo/spacecorsair/business/Element;IZ)V
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 92
    if-nez p2, :cond_8

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 95
    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_2b

    .line 96
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newParticule()Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/Particule;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    .line 97
    const/4 v3, 0x0

    const v4, 0x3f147ae1    # 0.58f

    invoke-virtual {v2, v5, v3, v4, v5}, Lfr/testudo/spacecorsair/display/Particule;->setColor(FFFF)V

    .line 98
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 100
    :cond_2b
    return-void
.end method

.method public static addRed(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 122
    return-void
.end method

.method public static addRed(Lfr/testudo/spacecorsair/business/Element;IZ)V
    .registers 10

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 107
    if-nez p2, :cond_9

    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, p1, :cond_28

    .line 112
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newParticule()Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/Particule;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v6, v6, v5, v5}, Lfr/testudo/spacecorsair/display/Particule;->setColor(FFFF)V

    .line 114
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 116
    :cond_28
    return-void
.end method

.method public static addWhite(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 35
    return-void
.end method

.method public static addWhite(Lfr/testudo/spacecorsair/business/Element;IZ)V
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    if-nez p2, :cond_8

    .line 41
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_27

    .line 44
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newParticule()Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/Particule;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v5, v5, v5, v5}, Lfr/testudo/spacecorsair/display/Particule;->setColor(FFFF)V

    .line 46
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 48
    :cond_27
    return-void
.end method

.method public static addYellow(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 84
    return-void
.end method

.method public static addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 71
    if-nez p2, :cond_8

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 74
    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_28

    .line 75
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newParticule()Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/display/Particule;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;

    move-result-object v2

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v5, v5, v3}, Lfr/testudo/spacecorsair/display/Particule;->setColor(FFFF)V

    .line 77
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 79
    :cond_28
    return-void
.end method
