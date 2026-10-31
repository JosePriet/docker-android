.class public final Lfr/testudo/spacecorsair/mod/ModSector;
.super Ljava/lang/Object;
.source "ModSector.java"


# static fields
.field static final BASE:I = 0x3

.field private static final FIELD_ART:[Ljava/lang/String;

.field static final FIELD_REFILL_MS:J = 0x36ee80L

.field public static final KEEP_PLAY_MS:J = 0x1b7740L

.field public static final KEEP_VISITS:I = 0x3

.field static final MINING:I = 0x2

.field static final OUTPOST:I = 0x0

.field static final PATROLS:I = 0x4

.field public static final PURSUIT_STANDING:F = -25.0f

.field public static final WAVE_AT:[J

.field static final WRECKS:I = 0x1

.field private static final faction:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static here:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static final patrols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;"
        }
    .end annotation
.end field

.field private static pending:I

.field private static playMs:J

.field private static final poi:[Lfr/testudo/spacecorsair/engine/Vector2;

.field private static refill:I

.field private static saveMs:I

.field private static traderTarget:I

.field private static final traders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 34
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->faction:Ljava/util/WeakHashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    .line 70
    new-array v0, v4, [Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 233
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "albatros"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "warlord"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "orig_police"

    aput-object v2, v0, v1

    const-string v1, "monolith"

    aput-object v1, v0, v3

    const-string v1, "bastion"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "raptor"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->FIELD_ART:[Ljava/lang/String;

    .line 411
    new-array v0, v3, [J

    fill-array-data v0, :array_48

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    return-void

    :array_48
    .array-data 8
        0x2710
        0xafc8
        0x15f90
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static artSize(Ljava/lang/String;)F
    .registers 6

    .prologue
    .line 269
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

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    .line 270
    :goto_19
    return v0

    .line 269
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 270
    :cond_1d
    const-string v0, "orig_police"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/high16 v0, 0x438c0000    # 280.0f

    goto :goto_19

    :cond_28
    const/high16 v0, 0x43c80000    # 400.0f

    goto :goto_19
.end method

.method private static base(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 11

    .prologue
    .line 208
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    aget-object v2, v0, v1

    .line 209
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_32
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v5, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    invoke-static {v1, v0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSector;->station(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;FFF)V

    .line 211
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v3, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_49
    const/4 v0, 0x2

    if-ge v1, v0, :cond_124

    .line 213
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 214
    if-nez v0, :cond_6f

    .line 212
    :goto_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 209
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Base"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 215
    :cond_6f
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408c200000000000L    # 900.0

    mul-double/2addr v6, v8

    const-wide v8, 0x407c200000000000L    # 450.0

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408c200000000000L    # 900.0

    mul-double/2addr v6, v8

    const-wide v8, 0x407c200000000000L    # 450.0

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 216
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 217
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v4, :cond_e1

    .line 218
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 219
    new-instance v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v8, 0x640

    .line 220
    invoke-virtual {v5, v6, v7, v8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v4

    new-instance v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v6, 0xbb8

    .line 221
    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v4

    .line 219
    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 222
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    goto/16 :goto_55

    .line 224
    :cond_e1
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 225
    const/4 v4, 0x2

    new-array v4, v4, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v5, 0x0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v8, 0x640

    .line 226
    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v8, 0x640

    .line 227
    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v6

    aput-object v6, v4, v5

    .line 225
    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 228
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 231
    :cond_124
    return-void
.end method

.method static baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 203
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, p0, :cond_f

    .line 204
    :goto_e
    return v0

    .line 203
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_12
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_e
.end method

.method private static build(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 141
    if-nez p0, :cond_4

    .line 161
    :cond_3
    :goto_3
    return-void

    .line 142
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 143
    if-eqz v0, :cond_3

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, p0, :cond_3

    .line 145
    iget-object v4, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    .line 147
    :goto_19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 148
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 149
    instance-of v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v6, :cond_31

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v6

    if-nez v6, :cond_31

    add-int/lit8 v3, v3, 0x1

    .line 150
    :cond_31
    instance-of v6, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v6, :cond_39

    instance-of v6, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v6, :cond_43

    :cond_39
    new-instance v6, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v6, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 152
    :cond_47
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModSector;->traders(I)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->traderTarget:I

    .line 153
    const/16 v0, 0x7d0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    .line 154
    invoke-static {p0, v5}, Lfr/testudo/spacecorsair/mod/ModSector;->places(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/ArrayList;)V

    .line 155
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->outpost(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 156
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->wreckField(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 157
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->miningBelt(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 158
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->base(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 159
    const-string v0, "poi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " outpost="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " base="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrecks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->restoreWrecks(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto/16 :goto_3
.end method

.method static excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 54
    if-eqz p0, :cond_7

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    if-eqz v1, :cond_8

    .line 61
    :cond_7
    :goto_7
    :pswitch_7
    return v0

    .line 55
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 61
    const/4 v0, 0x0

    goto :goto_7

    .line 55
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method static factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->faction:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public static fieldFull(JJ)Z
    .registers 8

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_f

    sub-long v0, p2, p0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static flagshipKilled(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 415
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    if-nez v0, :cond_7

    .line 422
    :cond_6
    :goto_6
    return-void

    .line 417
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_pursuit"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_pursuit_at"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_pursuit_n"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 419
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will not forgive the loss of its flagship. Pursuit fleets are on your trail."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 421
    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PURSUIT: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_6
.end method

.method private static gateNear(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    .line 320
    const/4 v3, 0x0

    .line 321
    if-eqz p1, :cond_26

    const/high16 v0, -0x40800000    # -1.0f

    .line 322
    :goto_5
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 323
    const/4 v2, 0x0

    move v4, v2

    move v1, v0

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_41

    .line 324
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 325
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v2, :cond_2a

    move v0, v1

    .line 323
    :goto_21
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, v0

    goto :goto_10

    .line 321
    :cond_26
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    .line 326
    :cond_2a
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 327
    if-eqz p1, :cond_3b

    cmpl-float v6, v2, v1

    if-lez v6, :cond_3f

    :cond_36
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v2

    move-object v3, v1

    goto :goto_21

    :cond_3b
    cmpg-float v6, v2, v1

    if-ltz v6, :cond_36

    :cond_3f
    move v0, v1

    goto :goto_21

    .line 329
    :cond_41
    return-object v3
.end method

.method public static kept(JJI)Z
    .registers 9

    .prologue
    .line 475
    const/4 v0, 0x3

    if-gt p4, v0, :cond_e

    sub-long v0, p2, p0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static looted(Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v0, 0x0

    .line 541
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 542
    if-nez v1, :cond_9

    .line 562
    :cond_8
    :goto_8
    return-void

    .line 543
    :cond_9
    const-string v2, "field:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v35_field_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSector;->fieldFull(JJ)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8

    .line 559
    :catch_49
    move-exception v0

    goto :goto_8

    .line 548
    :cond_4b
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    const-string v3, "v35_wrecks"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_64
    if-ge v0, v5, :cond_ec

    aget-object v6, v3, v0

    .line 552
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_71

    .line 551
    :goto_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 553
    :cond_71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7c

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    :cond_7c
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 555
    array-length v8, v7

    if-le v8, v10, :cond_e8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e8

    const/4 v6, 0x0

    aget-object v6, v7, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x7c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x7c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x7c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "|1"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 556
    :cond_e8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 558
    :cond_ec
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_wrecks"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_fd} :catch_49

    goto/16 :goto_8
.end method

.method private static miningBelt(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 13

    .prologue
    const/16 v4, 0x5dc

    const/4 v11, 0x2

    const v10, 0x3e99999a    # 0.3f

    const/16 v9, 0x514

    .line 310
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v8, v0, v11

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    const/16 v1, 0x1e

    iget v2, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 313
    const/4 v1, 0x5

    iget v2, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v4, v9

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMalachite(Ljava/util/List;IFFIIF)V

    .line 314
    iget v2, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v1, v11

    move v4, v9

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomRuby(Ljava/util/List;IFFIIF)V

    .line 315
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 316
    return-void
.end method

.method static onLevel(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    sput v1, Lfr/testudo/spacecorsair/mod/ModSector;->traderTarget:I

    .line 78
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 79
    sput v1, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    .line 81
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 82
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_29

    .line 88
    :cond_28
    :goto_28
    return-void

    .line 83
    :cond_29
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 84
    const/16 v0, 0x3c

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_28

    .line 85
    :catch_30
    move-exception v0

    .line 86
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_28
.end method

.method private static outpost(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 6

    .prologue
    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outpost"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->sectorName(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f666666    # 0.9f

    invoke-static {v1, v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModSector;->station(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;FFF)V

    .line 199
    return-void

    .line 198
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->sectorName(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Outpost"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method private static patrol(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 14

    .prologue
    const/4 v12, 0x2

    const-wide v10, 0x4082c00000000000L    # 600.0

    const-wide v8, 0x4072c00000000000L    # 300.0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 358
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 359
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(II)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v1

    .line 360
    if-nez v1, :cond_1a

    .line 373
    :goto_19
    return-void

    .line 361
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v4, v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aget-object v0, v0, v2

    .line 362
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 363
    if-eqz v0, :cond_3d

    if-eqz v2, :cond_41

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const v3, 0x451c4000    # 2500.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_41

    :cond_3d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v0, v0, v6

    .line 364
    :cond_41
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v10

    sub-double/2addr v2, v8

    double-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    sub-double/2addr v4, v8

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 365
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v6

    .line 366
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v6

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v12

    .line 367
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v7

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 368
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v12

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v3, v3, v7

    .line 369
    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 370
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v2

    .line 365
    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19
.end method

.method static persist([Lfr/testudo/spacecorsair/mod/ModWreck;IZ)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 480
    const-string v3, "keptwreck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist pieces="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_38

    move v0, v1

    :goto_12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " boss="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :try_start_27
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 483
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModSector;->excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_32} :catch_ee

    move-result v0

    if-nez v0, :cond_37

    if-nez p0, :cond_3a

    .line 512
    :cond_37
    :goto_37
    return-void

    .line 480
    :cond_38
    array-length v0, p0

    goto :goto_12

    .line 484
    :cond_3a
    :try_start_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    array-length v6, p0

    move v3, v1

    :goto_41
    if-ge v3, v6, :cond_ff

    aget-object v7, p0, v3

    .line 486
    if-nez v7, :cond_4b

    .line 485
    :cond_47
    :goto_47
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    .line 487
    :cond_4b
    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    if-eqz v0, :cond_f1

    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 488
    :goto_51
    if-eqz v0, :cond_47

    .line 489
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5e

    const/16 v8, 0x3b

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    :cond_5e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 491
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v0, :cond_f9

    move v0, v2

    :goto_c5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    .line 492
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v0, :cond_fb

    move v0, v2

    :goto_d4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v0, :cond_fd

    move v0, v2

    :goto_e3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_47

    .line 509
    :catch_ee
    move-exception v0

    goto/16 :goto_37

    .line 487
    :cond_f1
    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_51

    :cond_f9
    move v0, v1

    .line 491
    goto :goto_c5

    :cond_fb
    move v0, v1

    .line 492
    goto :goto_d4

    :cond_fd
    move v0, v1

    goto :goto_e3

    .line 494
    :cond_ff
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_37

    .line 495
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 496
    if-eqz v3, :cond_37

    .line 497
    const-string v0, "v35_wrecks"

    const-string v6, ""

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v8

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "|0|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "|0,"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_173

    move v0, v2

    :goto_14b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "v35_wrecks"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_175

    :goto_15f
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 502
    array-length v3, p0

    move v2, v1

    move v0, v1

    :goto_169
    if-ge v2, v3, :cond_37

    aget-object v5, p0, v2

    .line 503
    if-nez v5, :cond_18d

    .line 502
    :cond_16f
    :goto_16f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_169

    :cond_173
    move v0, v1

    .line 499
    goto :goto_14b

    .line 500
    :cond_175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15f

    .line 504
    :cond_18d
    iget-object v1, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    if-eqz v1, :cond_1be

    iget-object v1, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 505
    :goto_193
    if-eqz v1, :cond_16f

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keep:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->lootKey:Ljava/lang/String;

    .line 507
    add-int/lit8 v1, v0, 0x1

    iput v0, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->pieceIdx:I

    move v0, v1

    goto :goto_16f

    .line 504
    :cond_1be
    iget-object v1, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    :try_end_1c3
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_1c3} :catch_ee

    move-result-object v1

    goto :goto_193
.end method

.method static pieceShot(Ljava/lang/String;I)V
    .registers 15

    .prologue
    const/4 v12, 0x3

    const/4 v0, 0x0

    .line 517
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_10

    const-string v2, "keep:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 536
    :cond_10
    :goto_10
    return-void

    .line 519
    :cond_11
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    const-string v4, "v35_wrecks"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_2a
    if-ge v0, v5, :cond_c5

    aget-object v6, v4, v0

    .line 522
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_37

    .line 521
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 523
    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_42

    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :cond_42
    const-string v7, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 525
    array-length v8, v7

    if-le v8, v12, :cond_c0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 526
    const/4 v6, 0x3

    aget-object v6, v7, v6

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 527
    array-length v8, v6

    if-ge p1, v8, :cond_a9

    aget-object v8, v6, p1

    const-string v9, ",0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v6, p1

    const/4 v10, 0x0

    aget-object v11, v6, p1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, p1

    .line 528
    :cond_a9
    const/4 v8, 0x3

    const-string v9, ";"

    invoke-static {v9, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    .line 529
    const-string v6, "|"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_34

    .line 533
    :catch_bd
    move-exception v0

    goto/16 :goto_10

    .line 530
    :cond_c0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_34

    .line 532
    :cond_c5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_wrecks"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d6} :catch_bd

    goto/16 :goto_10
.end method

.method private static places(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/ArrayList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/engine/Vector2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v8, Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1eef

    mul-long/2addr v2, v4

    invoke-direct {v8, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 167
    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v4

    .line 168
    const/4 v2, 0x0

    move v3, v2

    :goto_21
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v2, v2

    if-ge v3, v2, :cond_9c

    .line 169
    const/4 v4, 0x0

    .line 170
    const/4 v2, 0x0

    move v7, v2

    :goto_29
    const/16 v2, 0xc

    if-ge v7, v2, :cond_8f

    if-nez v4, :cond_8f

    .line 171
    int-to-double v12, v3

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v12, v10

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v14, v14, v16

    const-wide v16, 0x3fe6666666666666L    # 0.7

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 172
    const v2, 0x458ca000    # 4500.0f

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const v6, 0x453b8000    # 3000.0f

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 173
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v6, v14

    mul-float/2addr v6, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v9, v12

    mul-float/2addr v2, v9

    invoke-direct {v5, v6, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 174
    const/4 v6, 0x1

    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v12, 0x44fa0000    # 2000.0f

    cmpg-float v2, v2, v12

    if-gez v2, :cond_6c

    const/4 v2, 0x0

    .line 176
    :goto_83
    if-nez v2, :cond_89

    const/16 v2, 0xb

    if-ne v7, v2, :cond_9d

    :cond_89
    move-object v2, v5

    .line 170
    :goto_8a
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v4, v2

    goto :goto_29

    .line 178
    :cond_8f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aput-object v4, v2, v3

    .line 179
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_21

    .line 181
    :cond_9c
    return-void

    :cond_9d
    move-object v2, v4

    goto :goto_8a

    :cond_9f
    move v2, v6

    goto :goto_83
.end method

.method static play()J
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 38
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_10

    .line 39
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 40
    if-nez v2, :cond_13

    :goto_e
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    .line 42
    :cond_10
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    return-wide v0

    .line 40
    :cond_13
    const-string v3, "v35_play_ms"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_e
.end method

.method private static prune(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_1a

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 131
    :cond_1a
    return-void
.end method

.method private static pursuitTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 431
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    if-nez v0, :cond_9

    .line 444
    :cond_8
    :goto_8
    return-void

    .line 433
    :cond_9
    const-string v1, "v35_pursuit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    if-eqz v1, :cond_8

    .line 435
    const-string v2, "v35_pursuit_n"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 436
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v4

    const-string v3, "v35_pursuit_at"

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, v2}, Lfr/testudo/spacecorsair/mod/ModSector;->waveDue(JI)I

    move-result v3

    .line 437
    if-gez v3, :cond_3d

    .line 438
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    array-length v1, v1

    if-lt v2, v1, :cond_8

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_pursuit"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8

    .line 441
    :cond_3d
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "v35_pursuit_n"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    const-string v2, "pursuit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wave "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at play+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v6

    const-string v5, "v35_pursuit_at"

    invoke-interface {v0, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModSector;->wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method private static restoreWrecks(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 26

    .prologue
    .line 566
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 567
    if-nez v8, :cond_7

    .line 621
    :cond_6
    :goto_6
    return-void

    .line 568
    :cond_7
    const-string v4, "v35_wrecks"

    const-string v5, ""

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 570
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v10

    .line 572
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v4, 0x0

    move v7, v4

    :goto_27
    if-ge v7, v13, :cond_31b

    aget-object v4, v12, v7

    .line 573
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 574
    array-length v4, v14

    const/4 v5, 0x4

    if-ge v4, v5, :cond_39

    .line 572
    :cond_35
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_27

    .line 575
    :cond_39
    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 576
    const/4 v4, 0x2

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    const/4 v4, 0x1

    :goto_55
    add-int v15, v5, v4

    .line 577
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v10, v11, v15}, Lfr/testudo/spacecorsair/mod/ModSector;->kept(JJI)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 578
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6a

    const/16 v4, 0xa

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    :cond_6a
    array-length v4, v14

    const/4 v5, 0x4

    if-le v4, v5, :cond_f8

    const/4 v4, 0x4

    aget-object v4, v14, v4

    :goto_71
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 580
    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v14, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, v14

    const/4 v6, 0x4

    if-le v4, v6, :cond_fc

    const/4 v4, 0x4

    aget-object v4, v14, v4

    :goto_ae
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 582
    const/4 v4, 0x1

    new-array v6, v4, [Z

    const/4 v4, 0x0

    const-string v5, "1"

    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v6, v4

    .line 583
    const/4 v4, 0x3

    aget-object v4, v14, v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 584
    const/4 v4, 0x0

    :goto_da
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v4, v5, :cond_35

    .line 585
    aget-object v5, v19, v4

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 586
    move-object/from16 v0, v20

    array-length v5, v0

    const/16 v21, 0xb

    move/from16 v0, v21

    if-ge v5, v0, :cond_ff

    .line 584
    :cond_f2
    :goto_f2
    add-int/lit8 v4, v4, 0x1

    goto :goto_da

    .line 576
    :cond_f5
    const/4 v4, 0x0

    goto/16 :goto_55

    .line 579
    :cond_f8
    const-string v4, "1,1,0"

    goto/16 :goto_71

    .line 580
    :cond_fc
    const-string v4, "1,1,0"

    goto :goto_ae

    .line 587
    :cond_ff
    move-object/from16 v0, v20

    array-length v5, v0

    const/16 v21, 0xb

    move/from16 v0, v21

    if-le v5, v0, :cond_116

    const-string v5, "1"

    const/16 v21, 0xb

    aget-object v21, v20, v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f2

    .line 588
    :cond_116
    new-instance v21, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct/range {v21 .. v21}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 589
    const/4 v5, 0x0

    aget-object v5, v20, v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 590
    move-object/from16 v0, v20

    array-length v5, v0

    const/16 v22, 0xb

    move/from16 v0, v22

    if-le v5, v0, :cond_30b

    const/4 v5, 0x1

    new-array v5, v5, [Z

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput-boolean v23, v5, v22

    :goto_134
    move-object/from16 v0, v21

    iput-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 591
    move-object/from16 v0, v20

    array-length v5, v0

    const/16 v22, 0xb

    move/from16 v0, v22

    if-le v5, v0, :cond_30e

    move v5, v4

    :goto_142
    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->pieceIdx:I

    .line 592
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->poi:Z

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "keep:"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v22, "|"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->lootKey:Ljava/lang/String;

    .line 594
    move-object/from16 v0, v18

    array-length v5, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v5, v0, :cond_311

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_188
    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 595
    move-object/from16 v0, v18

    array-length v5, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-le v5, v0, :cond_314

    const-string v5, "1"

    const/16 v22, 0x2

    aget-object v22, v18, v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_314

    const/4 v5, 0x1

    :goto_1a4
    move-object/from16 v0, v21

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcBoss:Z

    .line 596
    const/4 v5, 0x3

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    .line 597
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 598
    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    .line 599
    const/4 v5, 0x2

    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 600
    const/4 v5, 0x3

    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 601
    const/4 v5, 0x4

    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 602
    move-object/from16 v0, v21

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v22, 0x5

    aget-object v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    const/16 v23, 0x6

    aget-object v23, v20, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 603
    const/4 v5, 0x7

    aget-object v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 604
    const-string v5, "1"

    const/16 v22, 0x8

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    .line 605
    const-string v5, "1"

    const/16 v22, 0x9

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 606
    const-string v5, "1"

    const/16 v22, 0xa

    aget-object v20, v20, v22

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 607
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v5, :cond_317

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_242
    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 608
    move-object/from16 v0, v21

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v20, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 609
    const v5, 0x3b449ba6    # 0.003f

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 610
    move-object/from16 v0, v21

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 611
    invoke-virtual/range {v21 .. v21}, Lfr/testudo/spacecorsair/mod/ModWreck;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v20

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v22

    const v23, 0x3f4ccccd    # 0.8f

    mul-float v22, v22, v23

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    const v24, 0x3f4ccccd    # 0.8f

    mul-float v23, v23, v24

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 612
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModWreck;->massFor(F)F

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 613
    const v5, 0x459c4000    # 5000.0f

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    move-object/from16 v0, v21

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 614
    invoke-virtual/range {v21 .. v21}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 615
    invoke-static/range {v21 .. v21}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 616
    const-string v5, "keptwreck"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "restored piece "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " of "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " visit "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, v21

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    goto/16 :goto_f2

    :cond_30b
    move-object v5, v6

    .line 590
    goto/16 :goto_134

    .line 591
    :cond_30e
    const/4 v5, -0x1

    goto/16 :goto_142

    .line 594
    :cond_311
    const/4 v5, 0x1

    goto/16 :goto_188

    .line 595
    :cond_314
    const/4 v5, 0x0

    goto/16 :goto_1a4

    .line 607
    :cond_317
    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_242

    .line 620
    :cond_31b
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "v35_wrecks"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_6
.end method

.method static sectorName(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static station(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;FFF)V
    .registers 8

    .prologue
    .line 188
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0, p1}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    .line 190
    iput p2, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->r:F

    .line 191
    iput p3, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->g:F

    .line 192
    iput p4, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->b:F

    .line 193
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method static still(Ljava/lang/String;FFFFFZLjava/util/Random;)[Lfr/testudo/spacecorsair/mod/ModWreck;
    .registers 20

    .prologue
    .line 275
    const/4 v2, 0x2

    new-array v5, v2, [Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 276
    const/4 v2, 0x1

    new-array v6, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v6, v2

    .line 277
    const v2, 0x3da3d70a    # 0.08f

    mul-float v3, p1, v2

    .line 278
    const/4 v2, 0x0

    move v4, v2

    :goto_11
    const/4 v2, 0x2

    if-ge v4, v2, :cond_ec

    .line 279
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 280
    iput-object p0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 281
    iput-object v6, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 282
    const/4 v2, 0x1

    iput-boolean v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->poi:Z

    .line 283
    const/4 v2, 0x0

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 284
    if-nez v4, :cond_d5

    const/4 v2, 0x0

    :goto_2a
    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    .line 285
    if-nez v4, :cond_d9

    move/from16 v2, p5

    :goto_30
    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 286
    const/4 v2, 0x1

    if-ne v4, v2, :cond_dd

    const/4 v2, 0x1

    :goto_36
    iput-boolean v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 287
    if-nez v4, :cond_e0

    const/4 v2, 0x1

    :goto_3b
    iput-boolean v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 288
    move/from16 v0, p6

    iput-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    .line 289
    if-eqz p6, :cond_e3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_45
    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 290
    iput p1, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 291
    iget v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v2, v8

    mul-float/2addr v2, p1

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 292
    iget v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    mul-float v8, v2, p1

    if-nez v4, :cond_e7

    neg-float v2, v3

    :goto_61
    add-float/2addr v2, v8

    .line 293
    new-instance v8, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    move/from16 v0, p4

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 294
    iget-object v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v9, p2

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v2, p3

    invoke-virtual {v8, v9, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 295
    if-nez v4, :cond_ea

    const/4 v2, -0x5

    :goto_81
    int-to-float v2, v2

    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v2, v8

    add-float v2, v2, p4

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 296
    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v8

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 297
    iget-object v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 298
    invoke-virtual {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    iget v9, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {p1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 299
    const/high16 v2, 0x44fa0000    # 2000.0f

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 300
    iget v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 301
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWreck;->massFor(F)F

    move-result v2

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 302
    invoke-virtual {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 303
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 304
    aput-object v7, v5, v4

    .line 278
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_11

    :cond_d5
    move/from16 v2, p5

    .line 284
    goto/16 :goto_2a

    .line 285
    :cond_d9
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_30

    .line 286
    :cond_dd
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 287
    :cond_e0
    const/4 v2, 0x0

    goto/16 :goto_3b

    .line 289
    :cond_e3
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_45

    :cond_e7
    move v2, v3

    .line 292
    goto/16 :goto_61

    .line 295
    :cond_ea
    const/4 v2, 0x6

    goto :goto_81

    .line 306
    :cond_ec
    return-object v5
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_5

    .line 127
    :cond_4
    :goto_4
    return-void

    .line 93
    :cond_5
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_57

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_57

    const/4 v0, 0x1

    .line 94
    :goto_16
    if-eqz v0, :cond_43

    .line 95
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    add-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    .line 96
    sget v2, Lfr/testudo/spacecorsair/mod/ModSector;->saveMs:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModSector;->saveMs:I

    .line 97
    sget v2, Lfr/testudo/spacecorsair/mod/ModSector;->saveMs:I

    const/16 v3, 0x2710

    if-le v2, v3, :cond_43

    .line 98
    sput v1, Lfr/testudo/spacecorsair/mod/ModSector;->saveMs:I

    .line 99
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_43

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "v35_play_ms"

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_43
    sget v1, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    if-lez v1, :cond_59

    .line 104
    sget v0, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    if-nez v0, :cond_4

    .line 106
    :try_start_4f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->build(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_4

    .line 107
    :catch_55
    move-exception v0

    goto :goto_4

    :cond_57
    move v0, v1

    .line 93
    goto :goto_16

    .line 113
    :cond_59
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 114
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->pursuitTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 115
    sget v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    .line 116
    sget v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    if-gtz v0, :cond_4

    .line 117
    const/16 v0, 0xfa0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    .line 119
    :try_start_71
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->prune(Ljava/util/ArrayList;)V

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->prune(Ljava/util/ArrayList;)V

    .line 121
    const-string v0, "traffic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " traders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModSector;->traderTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " patrols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModSector;->traderTarget:I

    if-ge v0, v1, :cond_de

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->trader(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto/16 :goto_4

    .line 124
    :catch_db
    move-exception v0

    goto/16 :goto_4

    .line 123
    :cond_de
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v6, :cond_4

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->patrol(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_eb} :catch_db

    goto/16 :goto_4
.end method

.method private static trader(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 16

    .prologue
    const v14, 0x455ac000    # 3500.0f

    const-wide/high16 v12, 0x4079000000000000L    # 400.0

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 333
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 334
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 335
    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v2

    .line 336
    if-nez v2, :cond_20

    .line 355
    :goto_1f
    return-void

    .line 338
    :cond_20
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_cc

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModSector;->gateNear(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 339
    :goto_30
    if-nez v0, :cond_36

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v0, v0, v9

    .line 340
    :cond_36
    if-eqz v0, :cond_45

    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    const v4, 0x451c4000    # 2500.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_69

    .line 341
    :cond_45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 342
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v14

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 344
    :cond_69
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModSector;->gateNear(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 345
    if-nez v1, :cond_7d

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v3, v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    aget-object v1, v1, v3

    .line 346
    :cond_7d
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    sub-double/2addr v4, v10

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 347
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 348
    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v3, v3, v9

    .line 350
    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v9

    .line 351
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    .line 352
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v1

    .line 349
    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 338
    :cond_cc
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v3, v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    aget-object v0, v0, v3

    goto/16 :goto_30
.end method

.method static traders(I)I
    .registers 5

    .prologue
    .line 137
    const/4 v0, 0x3

    const/16 v1, 0xa

    int-to-float v2, p0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;I)V
    .registers 13

    .prologue
    .line 448
    const/4 v0, 0x1

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 449
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    .line 450
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x45160000    # 2400.0f

    mul-float/2addr v4, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x45160000    # 2400.0f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    .line 451
    const/4 v0, 0x0

    move v2, v0

    :goto_37
    add-int/lit8 v0, p2, 0x2

    if-ge v2, v0, :cond_9c

    .line 452
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4b

    if-nez v2, :cond_4b

    const/4 v0, 0x1

    :goto_41
    invoke-static {p1, v3, v0}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    .line 453
    if-nez v1, :cond_4d

    .line 451
    :goto_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    .line 452
    :cond_4b
    const/4 v0, 0x0

    goto :goto_41

    .line 454
    :cond_4d
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x407f400000000000L    # 500.0

    mul-double/2addr v6, v8

    const-wide v8, 0x406f400000000000L    # 250.0

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x407f400000000000L    # 500.0

    mul-double/2addr v6, v8

    const-wide v8, 0x406f400000000000L    # 250.0

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 455
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 456
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_8b

    move-object v0, v1

    .line 457
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 458
    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_47

    .line 460
    :cond_8b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setAtackPlayerMode()V

    goto :goto_47

    .line 464
    :cond_9c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PURSUIT WAVE "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3eb33333    # 0.35f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 466
    const-string v0, "warp_in"

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 467
    return-void
.end method

.method public static waveDue(JI)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 426
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    array-length v1, v1

    if-lt p2, v1, :cond_7

    .line 427
    :goto_6
    return v0

    :cond_7
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    aget-wide v2, v1, p2

    cmp-long v1, p0, v2

    if-ltz v1, :cond_11

    :goto_f
    move v0, p2

    goto :goto_6

    :cond_11
    move p2, v0

    goto :goto_f
.end method

.method static wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 380
    const-string v0, "reaver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 381
    :cond_11
    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 384
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    move-object v0, v2

    :goto_22
    if-ge v3, v7, :cond_50

    aget-object v1, v6, v3

    .line 385
    iget-boolean v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->kretari:Z

    if-ne v8, v4, :cond_2f

    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->ai:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_33

    .line 384
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_22

    .line 386
    :cond_33
    if-eqz v0, :cond_3b

    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    if-ge v8, v9, :cond_3c

    :cond_3b
    move-object v0, v1

    .line 387
    :cond_3c
    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v8

    if-gt v8, p1, :cond_2f

    if-nez p2, :cond_4c

    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    const/16 v9, 0xc8

    if-gt v8, v9, :cond_2f

    .line 388
    :cond_4c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 390
    :cond_50
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz v0, :cond_5b

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_5b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    move-object v0, v2

    .line 406
    :cond_62
    :goto_62
    return-object v0

    .line 392
    :cond_63
    if-eqz p2, :cond_7d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    .line 393
    :goto_71
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_62

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->faction:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 392
    :cond_7d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    goto :goto_71

    .line 397
    :cond_8f
    invoke-static {p1, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(II)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v0

    .line 398
    if-nez v0, :cond_97

    move-object v0, v2

    goto :goto_62

    .line 399
    :cond_97
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 400
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->r:F

    .line 401
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->g:F

    .line 402
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->b:F

    .line 403
    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificName:Ljava/lang/String;

    .line 404
    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificNameDecalX:I

    .line 405
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->faction:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62
.end method

.method private static wreckField(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 17

    .prologue
    .line 244
    new-instance v7, Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    invoke-direct {v7, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 245
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x1

    aget-object v10, v0, v1

    .line 246
    const/4 v11, 0x5

    .line 247
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v35_field_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModSector;->fieldFull(JJ)Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_47
    const/4 v0, 0x1

    move v8, v0

    .line 249
    :goto_49
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v12, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 250
    const/4 v0, 0x0

    move v9, v0

    :goto_53
    if-ge v9, v11, :cond_f0

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->FIELD_ART:[Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->FIELD_ART:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 252
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->hasArt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 250
    :goto_66
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_53

    .line 248
    :cond_6a
    const/4 v0, 0x0

    move v8, v0

    goto :goto_49

    .line 253
    :cond_6d
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->artSize(Ljava/lang/String;)F

    move-result v1

    .line 254
    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    .line 255
    mul-int/lit16 v2, v9, 0x17c

    add-int/lit16 v2, v2, 0x12c

    int-to-float v2, v2

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v2

    .line 256
    iget v2, v10, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v6, v14

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    iget v6, v10, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v4, v5

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v13, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModSector;->still(Ljava/lang/String;FFFFFZLjava/util/Random;)[Lfr/testudo/spacecorsair/mod/ModWreck;

    move-result-object v3

    .line 257
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_b8
    if-ge v2, v4, :cond_eb

    aget-object v5, v3, v2

    .line 258
    if-nez v5, :cond_c2

    .line 257
    :goto_be
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b8

    .line 259
    :cond_c2
    iget-object v6, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    const/4 v13, 0x0

    if-nez v8, :cond_e9

    const/4 v1, 0x1

    :goto_c8
    aput-boolean v1, v6, v13

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "field:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->lootKey:Ljava/lang/String;

    .line 261
    iput v12, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 262
    const/4 v1, 0x2

    iput v1, v5, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    goto :goto_be

    .line 259
    :cond_e9
    const/4 v1, 0x0

    goto :goto_c8

    .line 264
    :cond_eb
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    goto/16 :goto_66

    .line 266
    :cond_f0
    return-void
.end method
