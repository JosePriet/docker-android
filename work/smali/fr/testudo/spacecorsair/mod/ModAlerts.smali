.class public final Lfr/testudo/spacecorsair/mod/ModAlerts;
.super Ljava/lang/Object;
.source "ModAlerts.java"


# static fields
.field private static clearAt:J

.field private static combat:Z

.field private static combatSince:J

.field private static final drop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private static final engaged:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lastAlarm:J

.field private static lastDisengage:J

.field private static lastShield:F

.field private static lastSting:J

.field private static level:Ljava/lang/Object;

.field private static scanMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastShield:F

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->engaged:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->drop:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static missionResult(Z)V
    .registers 7

    .prologue
    .line 110
    if-eqz p0, :cond_f

    const-string v0, "mission_ok"

    :goto_4
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 111
    return-void

    .line 110
    :cond_f
    const-string v0, "mission_fail"

    goto :goto_4
.end method

.method static reset()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->engaged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    .line 31
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastShield:F

    .line 33
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastAlarm:J

    .line 34
    const-string v0, "alerts"

    const-string v1, "reset on respawn"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    .line 38
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_7

    .line 106
    :cond_6
    :goto_6
    return-void

    .line 39
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 41
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAlerts;->level:Ljava/lang/Object;

    if-eq v0, v1, :cond_23

    .line 42
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->level:Ljava/lang/Object;

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->engaged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    .line 48
    :cond_23
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e

    .line 49
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 50
    sget v1, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastShield:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4c

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4c

    const-string v1, "shield_down"

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x9c4

    invoke-static {v1, v2, v3, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 51
    :cond_4c
    sput v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastShield:F

    .line 54
    :cond_4e
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    if-eqz v0, :cond_7c

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7c

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7c

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastAlarm:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x708

    cmp-long v0, v0, v2

    if-lez v0, :cond_7c

    .line 55
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastAlarm:J

    .line 56
    const-string v0, "hull_alarm"

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x5dc

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 58
    :cond_7c
    sget v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->scanMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->scanMs:I

    .line 59
    sget v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->scanMs:I

    if-gtz v0, :cond_6

    .line 60
    const/16 v0, 0xfa

    sput v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->scanMs:I

    .line 61
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_6

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_6

    .line 62
    const/4 v2, 0x0

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_a2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e0

    .line 65
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 66
    instance-of v6, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v6, :cond_bd

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_bd

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_c1

    .line 64
    :cond_bd
    :goto_bd
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a2

    .line 67
    :cond_c1
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 68
    iget-object v6, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v6, p0, :cond_bd

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    const v7, 0x45228000    # 2600.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_bd

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAlerts;->engaged:Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    .line 74
    :cond_e0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->drop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->engaged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ef
    :goto_ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 77
    if-eqz v0, :cond_10e

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v3, :cond_10e

    iget v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_114

    :cond_10e
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAlerts;->drop:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 78
    :cond_114
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eq v3, p0, :cond_ef

    .line 79
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAlerts;->drop:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastDisengage:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xfa0

    cmp-long v3, v6, v8

    if-lez v3, :cond_ef

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    const/high16 v6, 0x457a0000    # 4000.0f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_ef

    .line 81
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastDisengage:J

    .line 82
    const-string v3, "disengage"

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x5dc

    invoke-static {v3, v6, v7, v8, v9}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 83
    const-string v3, "DISENGAGING"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v6, 0x3f333333    # 0.7f

    const v7, 0x3f59999a    # 0.85f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v6, v7, v8}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_ef

    .line 87
    :cond_155
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->drop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAlerts;->engaged:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15b

    .line 88
    :cond_16d
    if-lez v2, :cond_196

    .line 89
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    .line 90
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    if-nez v0, :cond_6

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    .line 92
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModAlerts;->combatSince:J

    .line 93
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastSting:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x61a8

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 94
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModAlerts;->lastSting:J

    .line 95
    const-string v0, "combat_start"

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_6

    .line 98
    :cond_196
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    if-eqz v0, :cond_6

    .line 99
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a9

    const-wide/16 v0, 0x1f40

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    goto/16 :goto_6

    .line 100
    :cond_1a9
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_6

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combat:Z

    .line 102
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->clearAt:J

    .line 103
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->combatSince:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x2af8

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    const-string v0, "all_clear"

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_6
.end method
