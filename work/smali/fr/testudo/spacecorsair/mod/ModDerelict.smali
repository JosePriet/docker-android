.class public final Lfr/testudo/spacecorsair/mod/ModDerelict;
.super Ljava/lang/Object;
.source "ModDerelict.java"


# static fields
.field static final RESPAWN_MS:J = 0xa4cb80L

.field private static final anchor:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static pending:I

.field private static final pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModWreck;",
            ">;"
        }
    .end annotation
.end field

.field private static playerHit:Z

.field private static scanTick:I

.field private static scanned:Z

.field private static site:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    .line 24
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broken(Ljava/lang/String;FFFFIILjava/util/Random;)V
    .registers 16

    .prologue
    .line 102
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p7}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 103
    const v0, 0x3d75c28f    # 0.06f

    invoke-virtual {p7}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    mul-float v2, p1, v0

    .line 104
    const/4 v0, 0x0

    move v3, v0

    :goto_1c
    const/4 v0, 0x2

    if-ge v3, v0, :cond_f7

    .line 105
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 106
    iput-object p0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 108
    if-nez v3, :cond_e3

    const/4 v0, 0x0

    :goto_30
    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    .line 109
    if-nez v3, :cond_e6

    move v0, v1

    :goto_35
    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 110
    const/4 v0, 0x1

    if-ne v3, v0, :cond_ea

    const/4 v0, 0x1

    :goto_3b
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 111
    if-nez v3, :cond_ed

    const/4 v0, 0x1

    :goto_40
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 112
    iput p1, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 113
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v0, v5

    mul-float/2addr v0, p1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 114
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    add-float/2addr v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v0, v5

    mul-float v5, v0, p1

    if-nez v3, :cond_f0

    neg-float v0, v2

    :goto_5c
    add-float/2addr v0, v5

    .line 115
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    float-to-double v6, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 116
    iget-object v5, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v6, p2

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, p3

    invoke-virtual {v5, v6, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 117
    if-nez v3, :cond_f3

    const/4 v0, -0x6

    :goto_7a
    int-to-float v0, v0

    invoke-virtual {p7}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v0, v5

    add-float/2addr v0, p4

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 118
    invoke-virtual {p7}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v0, v5

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v5

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 119
    iget-object v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 120
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    iget v6, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 121
    mul-int/lit16 v0, p6, 0xfa

    add-int/lit16 v0, v0, 0x5dc

    int-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 122
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 123
    iput p6, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->level:I

    .line 124
    iput p6, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 125
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_f5

    const/4 v0, 0x3

    :goto_c8
    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    .line 127
    iput p5, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->derelictSite:I

    .line 128
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 129
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 104
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1c

    :cond_e3
    move v0, v1

    .line 108
    goto/16 :goto_30

    .line 109
    :cond_e6
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_35

    .line 110
    :cond_ea
    const/4 v0, 0x0

    goto/16 :goto_3b

    .line 111
    :cond_ed
    const/4 v0, 0x0

    goto/16 :goto_40

    :cond_f0
    move v0, v2

    .line 114
    goto/16 :goto_5c

    .line 117
    :cond_f3
    const/4 v0, 0x7

    goto :goto_7a

    .line 125
    :cond_f5
    const/4 v0, 0x2

    goto :goto_c8

    .line 133
    :cond_f7
    return-void
.end method

.method static onLevel(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 44
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 45
    const/4 v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    .line 46
    sput v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    .line 47
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->playerHit:Z

    .line 48
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanned:Z

    .line 50
    :try_start_11
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 51
    if-nez v1, :cond_1c

    .line 66
    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move v4, v0

    .line 52
    :goto_1d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_SECTOR:[Ljava/lang/String;

    array-length v0, v0

    if-ge v4, v0, :cond_1b

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_SECTOR:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 52
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1d

    .line 54
    :cond_34
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    if-nez v0, :cond_8b

    move-wide v0, v2

    .line 56
    :goto_3b
    cmp-long v2, v0, v2

    if-lez v2, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    .line 57
    :cond_4c
    sput v4, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    .line 58
    const/16 v0, 0x5a

    sput v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_ENTRY_LINE:[[Ljava/lang/String;

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModDerelict;->txt([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f59999a    # 0.85f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_EVENT:[[Ljava/lang/String;

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModDerelict;->txt([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_HISTORY:[[Ljava/lang/String;

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModDerelict;->txt([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    goto :goto_1b

    .line 63
    :catch_89
    move-exception v0

    goto :goto_1b

    .line 55
    :cond_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "derelict_done_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_a3} :catch_89

    move-result-wide v0

    goto :goto_3b
.end method

.method static onPieceDestroyed(Lfr/testudo/spacecorsair/mod/ModWreck;Z)V
    .registers 6

    .prologue
    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->playerHit:Z

    .line 192
    :cond_a
    sget v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    if-ltz v0, :cond_12

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->playerHit:Z

    if-nez v0, :cond_13

    .line 196
    :cond_12
    :goto_12
    return-void

    .line 193
    :cond_13
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-eqz v0, :cond_12

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 194
    :cond_2d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "derelict_done_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_12
.end method

.method private static place(ILfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 20

    .prologue
    .line 79
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDerelict;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 80
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModDerelict;->station()Z

    .line 81
    invoke-virtual/range {p1 .. p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 82
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDerelict;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    const v6, 0x45548000    # 3400.0f

    mul-float/2addr v5, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x45548000    # 3400.0f

    mul-float/2addr v2, v3

    invoke-virtual {v4, v5, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 83
    new-instance v9, Ljava/util/Random;

    invoke-virtual/range {p1 .. p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    move/from16 v0, p0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-direct {v9, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 84
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_HULLS:[[Ljava/lang/String;

    aget-object v13, v2, p0

    .line 85
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_COUNTS:[[I

    aget-object v14, v2, p0

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v2, 0x0

    move v10, v2

    :goto_71
    array-length v2, v13

    if-ge v10, v2, :cond_d1

    .line 89
    const/4 v2, 0x0

    move v12, v2

    move v11, v3

    :goto_77
    aget v2, v14, v10

    if-ge v12, v2, :cond_cc

    .line 90
    aget-object v2, v13, v10

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->sizeOf(Ljava/lang/String;)F

    move-result v3

    .line 91
    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    .line 92
    mul-int/lit16 v2, v11, 0x14a

    add-int/lit16 v2, v2, 0xfa

    int-to-float v2, v2

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 93
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDerelict;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModDerelict;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v5, v2

    .line 94
    aget-object v2, v13, v10

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v6, v7

    move/from16 v7, p0

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModDerelict;->broken(Ljava/lang/String;FFFFIILjava/util/Random;)V

    .line 95
    aget-object v2, v13, v10

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 89
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v2

    goto :goto_77

    .line 88
    :cond_cc
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v3, v11

    goto :goto_71

    .line 98
    :cond_d1
    return-void
.end method

.method private static sizeOf(Ljava/lang/String;)F
    .registers 6

    .prologue
    .line 34
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_1d

    aget-object v3, v1, v0

    if-eqz v3, :cond_1a

    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v1, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v1

    .line 39
    :goto_19
    return v0

    .line 34
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 35
    :cond_1d
    const-string v0, "orig_croiseur_gentil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/high16 v0, 0x44610000    # 900.0f

    goto :goto_19

    .line 36
    :cond_28
    const-string v0, "orig_alien_blatte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/high16 v0, 0x442f0000    # 700.0f

    goto :goto_19

    .line 37
    :cond_33
    const-string v0, "orig_alien_rat0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/high16 v0, 0x432a0000    # 170.0f

    goto :goto_19

    .line 38
    :cond_3e
    const-string v0, "orig_police"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/high16 v0, 0x438c0000    # 280.0f

    goto :goto_19

    .line 39
    :cond_49
    const/high16 v0, 0x43820000    # 260.0f

    goto :goto_19
.end method

.method private static station()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v0, v1

    .line 72
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 73
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v3, :cond_27

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x1

    .line 75
    :cond_26
    return v1

    .line 72
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method static testPlace(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V
    .registers 20

    .prologue
    .line 137
    if-ltz p1, :cond_9

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_SECTOR:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_a

    .line 156
    :cond_9
    :goto_9
    return-void

    .line 138
    :cond_a
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 139
    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 140
    new-instance v9, Ljava/util/Random;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-direct {v9, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 141
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_HULLS:[[Ljava/lang/String;

    aget-object v13, v2, p1

    .line 142
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_COUNTS:[[I

    aget-object v14, v2, p1

    .line 143
    const/4 v3, 0x0

    .line 144
    sput p1, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    .line 145
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanned:Z

    .line 146
    const/4 v2, 0x0

    move v10, v2

    :goto_37
    array-length v2, v13

    if-ge v10, v2, :cond_93

    .line 147
    const/4 v2, 0x0

    move v12, v2

    move v11, v3

    :goto_3d
    aget v2, v14, v10

    if-ge v12, v2, :cond_8e

    .line 148
    aget-object v2, v13, v10

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->sizeOf(Ljava/lang/String;)F

    move-result v3

    .line 149
    int-to-double v4, v11

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    const-wide v6, 0x3fd999999999999aL    # 0.4

    add-double/2addr v6, v4

    .line 150
    mul-int/lit16 v2, v11, 0x104

    add-int/lit16 v2, v2, 0x2bc

    int-to-float v5, v2

    .line 151
    aget-object v2, v13, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    mul-float/2addr v15, v5

    add-float/2addr v4, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v15, v15, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v15

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v6, v7

    move/from16 v7, p1

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModDerelict;->broken(Ljava/lang/String;FFFFIILjava/util/Random;)V

    .line 152
    aget-object v2, v13, v10

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 147
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v2

    goto :goto_3d

    .line 146
    :cond_8e
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v3, v11

    goto :goto_37

    .line 155
    :cond_93
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_ENTRY_LINE:[[Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDerelict;->txt([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f400000    # 0.75f

    const v4, 0x3f59999a    # 0.85f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_9
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 160
    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    if-lez v1, :cond_2e

    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    if-ltz v1, :cond_2e

    .line 161
    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    .line 163
    :try_start_f
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModDerelict;->station()Z

    move-result v1

    if-nez v1, :cond_19

    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    if-nez v1, :cond_29

    .line 164
    :cond_19
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    .line 165
    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->place(ILfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_29} :catch_2a

    .line 184
    :cond_29
    :goto_29
    return-void

    .line 167
    :catch_2a
    move-exception v1

    .line 168
    sput v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pending:I

    goto :goto_29

    .line 172
    :cond_2e
    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    if-ltz v1, :cond_29

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanned:Z

    if-nez v1, :cond_29

    if-eqz p0, :cond_29

    .line 173
    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanTick:I

    int-to-long v2, v1

    sub-long/2addr v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanTick:I

    .line 174
    sget v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanTick:I

    if-gtz v1, :cond_29

    .line 175
    const/16 v1, 0x190

    sput v1, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanTick:I

    move v1, v0

    .line 176
    :goto_48
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 178
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-nez v2, :cond_9d

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v2, 0x44610000    # 900.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9d

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModDerelict;->scanned:Z

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "ESCANEO: "

    :goto_7a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_SCAN_TEXT:[[Ljava/lang/String;

    sget v2, Lfr/testudo/spacecorsair/mod/ModDerelict;->site:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->txt([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_29

    :cond_9a
    const-string v0, "SCAN: "

    goto :goto_7a

    .line 176
    :cond_9d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_48
.end method

.method private static txt([[Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    aget-object v0, p0, v0

    aget-object v0, v0, p1

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method
