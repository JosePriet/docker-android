
# ---- mod: animated Banshee (alien UFO) frames, borrowed from the enemy UfoAlienShip ----
.method public static getUfoAnimFrame()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 9
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;
    if-nez v0, :src_ok
    const/4 v0, 0x0
    return-object v0
    :src_ok
    array-length v1, v0
    const/16 v2, 0xf
    if-ge v1, v2, :len_ok
    const/4 v0, 0x0
    return-object v0
    :len_ok
    add-int/lit8 v2, v2, -0x1
    aget-object v3, v0, v2
    if-nez v3, :frames_loaded
    const/4 v0, 0x0
    return-object v0
    :frames_loaded
    const/4 v2, 0x0
    aget-object v3, v0, v2
    iget-object v3, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    sget-object v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;
    if-eqz v4, :rebuild
    sget-object v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFramesSrc:Lfr/testudo/spacecorsair/display/Texture;
    if-ne v5, v3, :rebuild
    aget-object v5, v4, v2
    iget-object v5, v5, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;
    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    sget-object v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;
    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    cmpl-float v5, v5, v6
    if-eqz v5, :pick
    :rebuild
    const/16 v1, 0xf
    new-array v4, v1, [Lfr/testudo/spacecorsair/display/Drawable;
    const/4 v2, 0x0
    :loop
    if-ge v2, v1, :built
    aget-object v5, v0, v2
    iget-object v5, v5, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    new-instance v6, Lfr/testudo/spacecorsair/display/Drawable;
    new-instance v7, Lfr/testudo/spacecorsair/engine/Vector2;
    sget-object v8, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-direct {v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V
    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-direct {v6, v7, v5}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V
    aput-object v6, v4, v2
    add-int/lit8 v2, v2, 0x1
    goto :loop
    :built
    sput-object v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;
    sput-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFramesSrc:Lfr/testudo/spacecorsair/display/Texture;
    :pick
    # same timing as the enemy: 15 frames x 50ms = 750ms loop
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    const-wide/16 v7, 0x2ee
    rem-long/2addr v5, v7
    const-wide/16 v7, 0x32
    div-long/2addr v5, v7
    long-to-int v5, v5
    aget-object v0, v4, v5
    return-object v0
.end method

# ---- mod: alien beam laser support ----
.method private beamPreFrame()V
    .registers 2
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamWasActive:Z
    const/4 v0, 0x0
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z
    return-void
.end method

.method private beamShoot()Z
    .registers 9
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    if-eqz v0, :not_beam
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->isBeam:Z
    if-nez v1, :is_beam
    :not_beam
    const/4 v0, 0x0
    return v0
    :is_beam
    const-wide/16 v2, 0x258    # 600 range
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->fetchEnnemisTarget(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/business/Element;
    move-result-object v1
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamTarget:Lfr/testudo/spacecorsair/business/Element;
    if-nez v1, :has_target
    const/4 v0, 0x1
    return v0
    :has_target
    const/4 v2, 0x1
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamWasActive:Z
    if-nez v2, :sound_done
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;
    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienLaser()V
    :sound_done
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J
    const-wide/16 v4, 0x0
    cmp-long v2, v2, v4
    if-gtz v2, :done
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    if-nez v2, :proj_ok
    new-instance v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V
    iput-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    :proj_ok
    iput-object p0, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I
    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F
    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F
    const/4 v3, 0x0
    iput-boolean v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z
    const/4 v3, 0x1
    iput-boolean v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z
    const/4 v3, 0x0
    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;
    iput-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V
    const/4 v3, 0x2
    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V
    const/4 v3, 0x1
    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V
    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J
    long-to-float v2, v2
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F
    mul-float/2addr v2, v3
    float-to-long v2, v2
    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J
    :done
    const/4 v0, 0x1
    return v0
.end method

.method private drawBeam()V
    .registers 14
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z
    if-nez v0, :active
    return-void
    :active
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamTarget:Lfr/testudo/spacecorsair/business/Element;
    if-nez v1, :t_ok
    return-void
    :t_ok
    iget-boolean v0, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z
    if-eqz v0, :alive
    return-void
    :alive
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;
    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;
    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z
    if-eqz v2, :not_map
    return-void
    :not_map
    iget-object v12, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;
    const/4 v11, 0x0
    :loop
    const/4 v10, 0x3
    if-ge v11, v10, :end
    move-object v2, v12
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;
    iget-object v4, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-static {}, Ljava/lang/Math;->random()D
    move-result-wide v4
    double-to-float v4, v4
    const/high16 v6, 0x42200000    # 40.0f
    mul-float/2addr v4, v6
    const/high16 v7, 0x41a00000    # 20.0f
    sub-float/2addr v4, v7
    invoke-static {}, Ljava/lang/Math;->random()D
    move-result-wide v8
    double-to-float v5, v8
    mul-float/2addr v5, v6
    sub-float/2addr v5, v7
    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    const/4 v5, 0x0
    const/high16 v6, 0x3f800000    # alpha 1.0
    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletR:F
    iget v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletG:F
    iget v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletB:F
    invoke-virtual/range {v2 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V
    add-int/lit8 v11, v11, 0x1
    goto :loop
    :end
    return-void
.end method
