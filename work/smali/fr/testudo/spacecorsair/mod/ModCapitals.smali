.class public final Lfr/testudo/spacecorsair/mod/ModCapitals;
.super Ljava/lang/Object;
.source "ModCapitals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;,
        Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;
    }
.end annotation


# static fields
.field static final FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

.field static final RESPAWN_MS:J = 0xa4cb80L

.field static final SIZE:I = 0x5dc

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final caps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;",
            "Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;",
            ">;"
        }
    .end annotation
.end field

.field private static hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final phys:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static testSpawned:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 41
    const/4 v0, 0x7

    new-array v8, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const/4 v9, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "spartan"

    const-string v2, "Spartan Republic"

    const-string v3, "SRS Aegis"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "reaver"

    const-string v2, "Crimson Reavers"

    const-string v3, "Bloodforge"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ee66666    # 0.45f

    const v7, 0x3e19999a    # 0.15f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "kretari"

    const-string v2, "Kre\'tari Brood"

    const-string v3, "Brood-Mother"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "varn"

    const-string v2, "Varn Syndicate"

    const-string v3, "Syndicate Crown"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3eb33333    # 0.35f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "ironclad"

    const-string v2, "Ironclad Militia"

    const-string v3, "IMS Bastion"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "helion"

    const-string v2, "Helion Combine"

    const-string v3, "Sunspire"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "warden"

    const-string v2, "Frontier Authority"

    const-string v3, "FAV Warden"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3f266666    # 0.65f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    sput-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    .line 64
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x444e4000    # 825.0f

    const v2, 0x444e4000    # 825.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;
    .registers 2

    .prologue
    .line 68
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static checkDestroyed()V
    .registers 8

    .prologue
    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 363
    :cond_8
    :goto_8
    return-void

    .line 336
    :cond_9
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 337
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    .line 341
    if-eqz v1, :cond_2f

    if-nez v0, :cond_35

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 360
    :catch_33
    move-exception v0

    goto :goto_8

    .line 342
    :cond_35
    iget-boolean v3, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-eqz v3, :cond_13

    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 344
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget v3, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_13

    .line 346
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 347
    if-eqz v3, :cond_74

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cap_dead_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    :cond_74
    iget v3, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->damageRecievedByPlayer:I

    int-to-float v3, v3

    iget v4, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_88

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModRep;->flagshipDestroyed(Ljava/lang/String;)V

    .line 349
    :cond_88
    iget v3, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->damageRecievedByPlayer:I

    int-to-float v3, v3

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v4

    cmpl-float v1, v3, v1

    if-lez v1, :cond_13

    .line 350
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const v3, 0x1e8480

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 351
    const/4 v1, 0x0

    :goto_a2
    const/4 v3, 0x2

    if-ge v1, v3, :cond_c6

    .line 352
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 353
    const/4 v4, 0x3

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 354
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 356
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flagship "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroyed. Bounty: 2,000,000 credits and two Siege-tier weapons. The faction will field a new flagship in about 3 hours."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f2} :catch_33

    goto/16 :goto_13
.end method

.method public static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 7

    .prologue
    const/high16 v5, 0x457a0000    # 4000.0f

    .line 319
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 322
    if-eqz v0, :cond_10

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v3, :cond_10

    if-eq v0, p0, :cond_10

    .line 323
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_44

    if-eqz v1, :cond_10

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_10

    .line 324
    :cond_44
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_10

    .line 327
    :catch_48
    move-exception v0

    .line 330
    :cond_49
    return-void
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Z
    .registers 23

    .prologue
    .line 239
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v18

    .line 240
    if-nez v18, :cond_8

    const/4 v2, 0x0

    .line 313
    :goto_7
    return v2

    .line 242
    :cond_8
    :try_start_8
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->drawable(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 243
    if-eqz v5, :cond_2b

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cameraRelative:Z

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 244
    :cond_2b
    const v19, 0x44bb8000    # 1500.0f

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 247
    move-object/from16 v0, v18

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    if-ltz v2, :cond_b9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    if-eqz v2, :cond_b9

    .line 248
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    aget-object v14, v2, v3

    .line 249
    const/4 v2, 0x0

    move v13, v2

    :goto_48
    add-int/lit8 v2, v13, 0x2

    array-length v3, v14

    if-ge v2, v3, :cond_b9

    .line 250
    add-int/lit8 v2, v13, 0x2

    aget v2, v14, v2

    mul-float v2, v2, v19

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v3, v3, v19

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 251
    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v6, v19, v2

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    aget v4, v14, v13

    mul-float v4, v4, v19

    add-int/lit8 v7, v13, 0x1

    aget v7, v14, v7

    mul-float v7, v7, v19

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 253
    const-string v2, "fx_flame"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, v18

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v18

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v18

    iget-object v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 249
    add-int/lit8 v2, v13, 0x3

    move v13, v2

    goto :goto_48

    .line 257
    :cond_b9
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    if-eqz v2, :cond_148

    .line 258
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v15, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_145

    const/4 v2, 0x1

    move v13, v2

    .line 260
    :goto_cb
    const v2, 0x3d8f5c29    # 0.07f

    mul-float v5, v19, v2

    .line 261
    const/4 v2, 0x0

    move v14, v2

    :goto_d2
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    array-length v3, v3

    if-ge v2, v3, :cond_148

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, v18

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    aget v4, v4, v14

    mul-float v4, v4, v19

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    add-int/lit8 v7, v14, 0x1

    aget v6, v6, v7

    mul-float v6, v6, v19

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 263
    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    .line 264
    if-eqz v13, :cond_126

    if-eqz v15, :cond_126

    iget-object v2, v15, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, v15, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    add-float v7, v2, v3

    .line 265
    :cond_126
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->turretTex:Ljava/lang/String;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 261
    add-int/lit8 v2, v14, 0x2

    move v14, v2

    goto :goto_d2

    .line 259
    :cond_145
    const/4 v2, 0x0

    move v13, v2

    goto :goto_cb

    .line 269
    :cond_148
    move-object/from16 v0, v18

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    if-ltz v2, :cond_2f1

    .line 270
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    aget-object v13, v2, v3

    .line 271
    const-wide/16 v2, 0x640

    rem-long v2, v16, v2

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2c6

    const/high16 v11, 0x3f800000    # 1.0f

    .line 272
    :goto_162
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float v4, v4, v19

    const/4 v5, 0x1

    aget v5, v13, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 273
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v5, v6

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x2

    aget v4, v13, v4

    mul-float v4, v4, v19

    const/4 v5, 0x3

    aget v5, v13, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 275
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v5, v6

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const v8, 0x3e19999a    # 0.15f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2cb

    const/high16 v2, 0x3f800000    # 1.0f

    .line 278
    :goto_1e1
    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2d6

    const/4 v2, 0x3

    move/from16 v17, v2

    .line 279
    :goto_1ea
    if-lez v17, :cond_2f1

    .line 280
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    aget-object v20, v2, v3

    .line 281
    move-object/from16 v0, v20

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v17, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 282
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_202
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2f1

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    mul-int/lit8 v4, v16, 0x2

    aget v4, v20, v4

    mul-float v4, v4, v19

    mul-int/lit8 v5, v16, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v20, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 284
    const-string v2, "fx_scorch"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3df5c28f    # 0.12f

    mul-float v5, v5, v19

    const v6, 0x3df5c28f    # 0.12f

    mul-float v6, v6, v19

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    mul-int/lit8 v8, v16, 0x43

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 285
    const/4 v2, 0x2

    move/from16 v0, v17

    if-lt v0, v2, :cond_28c

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v2, v2, v4

    if-gez v2, :cond_28c

    .line 286
    const-string v2, "fx_smoke"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3e600000    # -20.0f

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const/high16 v6, -0x3e600000    # -20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    const/high16 v7, 0x44e10000    # 1800.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x435c0000    # 220.0f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3e800000    # 0.25f

    const/high16 v12, 0x3e800000    # 0.25f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 288
    :cond_28c
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_2c0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2c0

    .line 289
    const-string v2, "fx_fire"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x43200000    # 160.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 282
    :cond_2c0
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_202

    .line 271
    :cond_2c6
    const v11, 0x3e4ccccd    # 0.2f

    goto/16 :goto_162

    .line 277
    :cond_2cb
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    div-float/2addr v2, v3

    goto/16 :goto_1e1

    .line 278
    :cond_2d6
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2e1

    const/4 v2, 0x2

    move/from16 v17, v2

    goto/16 :goto_1ea

    :cond_2e1
    const/high16 v3, 0x3f400000    # 0.75f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2ec

    const/4 v2, 0x1

    move/from16 v17, v2

    goto/16 :goto_1ea

    :cond_2ec
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_1ea

    .line 295
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    if-eqz v2, :cond_356

    .line 296
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_310

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    .line 297
    :cond_310
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3ef5c28f    # 0.48f

    mul-float v4, v4, v19

    const/high16 v5, 0x42280000    # 42.0f

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_3df

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_333
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_3e7

    const v7, 0x3e99999a    # 0.3f

    :goto_33c
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_3ef

    const/high16 v8, 0x3e800000    # 0.25f

    .line 299
    :goto_344
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 301
    :cond_356
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    const v4, 0x3ef5c28f    # 0.48f

    mul-float v4, v4, v19

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 302
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_3dc

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->hostileAnnounced:Z

    if-nez v2, :cond_3dc

    .line 304
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->hostileAnnounced:Z

    .line 305
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModRep;->flagshipProvoked(Ljava/lang/String;)V

    .line 306
    const-string v2, "flagship_horn"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xbb8

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flagship "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is now hostile."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 308
    const-string v2, "warp_in"

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f333333    # 0.7f

    const-wide/16 v6, 0x3e8

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 313
    :cond_3dc
    :goto_3dc
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 298
    :cond_3df
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    goto/16 :goto_333

    :cond_3e7
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    goto/16 :goto_33c

    :cond_3ef
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F
    :try_end_3f5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3f5} :catch_3f7

    goto/16 :goto_344

    .line 310
    :catch_3f7
    move-exception v2

    goto :goto_3dc
.end method

.method public static drawable(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 193
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    .line 194
    if-nez v1, :cond_8

    .line 201
    :cond_7
    :goto_7
    return-object v0

    .line 195
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v2, :cond_13

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    new-array v2, v2, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 196
    :cond_13
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I

    move-result v2

    .line 197
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    if-nez v3, :cond_45

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cap_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x44bb8000    # 1500.0f

    const v6, 0x44bb8000    # 1500.0f

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v4

    aput-object v4, v3, v2

    .line 198
    :cond_45
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v3, :cond_6b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cap_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 199
    :cond_6b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v1, :cond_7

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v0, v1, v2
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_77} :catch_78

    goto :goto_7

    .line 200
    :catch_78
    move-exception v1

    goto :goto_7
.end method

.method static ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 170
    .line 171
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 174
    :goto_37
    if-nez v0, :cond_57

    .line 175
    const/4 v1, 0x0

    :goto_3a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v3, v3

    if-ge v1, v3, :cond_57

    .line 176
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v1

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 179
    :cond_57
    if-eqz v0, :cond_76

    if-eqz p1, :cond_76

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v3, 0x48c35000    # 400000.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_76

    .line 180
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 181
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_76} :catch_7a

    .line 185
    :cond_76
    :goto_76
    return-object v0

    .line 175
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 184
    :catch_7a
    move-exception v0

    move-object v0, v2

    .line 185
    goto :goto_76

    :cond_7d
    move-object v0, v2

    goto :goto_37
.end method

.method private static indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 206
    move v0, v1

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    if-ne v2, p0, :cond_e

    .line 207
    :goto_d
    return v0

    .line 206
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    move v0, v1

    .line 207
    goto :goto_d
.end method

.method public static onLevel()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 79
    :cond_1e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    :try_start_23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 82
    const/4 v0, 0x0

    move v4, v0

    :goto_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    if-ge v4, v0, :cond_5b

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v4

    .line 84
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v5, :cond_3e

    .line 82
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2d

    .line 85
    :cond_3e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    if-nez v1, :cond_5c

    move-wide v0, v2

    .line 87
    :goto_45
    cmp-long v6, v0, v2

    if-lez v6, :cond_56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/32 v6, 0xa4cb80

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3a

    .line 88
    :cond_56
    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    goto :goto_3a

    .line 90
    :catch_5a
    move-exception v0

    .line 93
    :cond_5b
    return-void

    .line 86
    :cond_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cap_dead_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_76} :catch_5a

    move-result-wide v0

    goto :goto_45
.end method

.method public static physic(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 213
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 215
    :goto_7
    return-object v0

    .line 213
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->phys:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_b

    goto :goto_7

    .line 214
    :catch_b
    move-exception v1

    goto :goto_7
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 72
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static prune(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/business/Element;)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 222
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 233
    :goto_7
    return v0

    .line 224
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const v3, -0x3bf18000    # -570.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 225
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const v3, 0x440e8000    # 570.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 226
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 227
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 228
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 229
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 230
    const/high16 v3, 0x43430000    # 195.0f

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v0, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_92} :catch_a4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 231
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_a1

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_a1
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 232
    :catch_a4
    move-exception v1

    goto/16 :goto_7
.end method

.method private static spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 13

    .prologue
    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v8, v0, p0

    .line 116
    const/4 v0, 0x0

    const/16 v1, 0x14

    iget v2, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 117
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v9

    .line 118
    new-instance v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    invoke-direct {v10}, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;-><init>()V

    .line 119
    iput-object v8, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cap_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFxData;->index(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    .line 121
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitalData;->mounts(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    .line 123
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 125
    const/4 v0, 0x0

    :goto_4f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_68

    .line 126
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v4, :cond_1ac

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 128
    :cond_68
    iget-object v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const v2, 0x45228000    # 2600.0f

    const/high16 v3, -0x3b1f0000    # -1800.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 129
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 130
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    .line 131
    const v0, 0x48f42400    # 500000.0f

    const v2, 0x46ea6000    # 30000.0f

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 132
    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 133
    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 134
    const/16 v0, 0x1f4

    iget v1, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    .line 135
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->tolerance(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->neverEscapeWhenInjured:Z

    .line 137
    const/4 v0, 0x0

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pourLifeToEscape:I

    .line 138
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxPouseeForce:F

    .line 139
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 140
    const v0, 0x456d8000    # 3800.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceShoot:F

    .line 141
    const/high16 v0, 0x42200000    # 40.0f

    iget v1, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->bulletDamage:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v2, v0

    .line 142
    const/high16 v0, 0x44160000    # 600.0f

    iget-wide v4, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->milleSecBetweenShots:J

    long-to-float v1, v4

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v1, v0

    .line 143
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v3, 0x6

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 144
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v3, 0x6

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 145
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v3, 0x6

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flagship: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 147
    const/4 v0, -0x1

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    .line 148
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarPointSize:F

    .line 149
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorR:F

    .line 150
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorG:F

    .line 151
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorB:F

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v3, 0x44af0000    # 1400.0f

    add-float/2addr v2, v3

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 153
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x44af0000    # 1400.0f

    add-float/2addr v3, v4

    .line 154
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v3, 0x44af0000    # 1400.0f

    sub-float/2addr v2, v3

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 155
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x44af0000    # 1400.0f

    sub-float/2addr v3, v4

    .line 156
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    .line 152
    invoke-virtual {v9, v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Ljava/lang/String;)V

    .line 160
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->turretTex:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object v9

    .line 125
    :cond_1ac
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4f
.end method

.method static testSpawn(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    .line 99
    const-string v0, "corsair_capital"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->testSpawned:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 112
    :cond_10
    return-void

    .line 101
    :cond_11
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->testSpawned:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    if-ge v2, v0, :cond_10

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 102
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 104
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v5, v5, v2

    if-ne v1, v5, :cond_3f

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    const/4 v5, 0x0

    const v6, 0x44d48000    # 1700.0f

    invoke-virtual {v1, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_3f
.end method
