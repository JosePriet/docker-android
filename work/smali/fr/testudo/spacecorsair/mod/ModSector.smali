.class public final Lfr/testudo/spacecorsair/mod/ModSector;
.super Ljava/lang/Object;
.source "ModSector.java"


# static fields
.field static final BASE:I = 0x3

.field private static final FIELD_ART:[Ljava/lang/String;

.field public static final KEEP_PLAY_MS:J = 0x1b7740L

.field public static final KEEP_VISITS:I = 0x3

.field static final MINING:I = 0x2

.field static final OUTPOST:I = 0x0

.field static final PATROLS:I = 0x4

.field public static final PURSUIT_STANDING:F = -40.0f

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

    .line 231
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

    .line 392
    new-array v0, v3, [J

    fill-array-data v0, :array_48

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    return-void

    :array_48
    .array-data 8
        0x4e20
        0x249f0
        0x493e0
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
    .line 250
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

    .line 251
    :goto_19
    return v0

    .line 250
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 251
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
    .line 206
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    aget-object v2, v0, v1

    .line 207
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

    .line 209
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v3, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 210
    const/4 v0, 0x0

    move v1, v0

    :goto_49
    const/4 v0, 0x2

    if-ge v1, v0, :cond_124

    .line 211
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 212
    if-nez v0, :cond_6f

    .line 210
    :goto_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 207
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

    .line 213
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

    .line 214
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 215
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v4, :cond_e1

    .line 216
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 217
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

    .line 218
    invoke-virtual {v5, v6, v7, v8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v4

    new-instance v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v6, 0xbb8

    .line 219
    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v4

    .line 217
    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 220
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    goto/16 :goto_55

    .line 222
    :cond_e1
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 223
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

    .line 224
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

    .line 225
    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v6

    aput-object v6, v4, v5

    .line 223
    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 226
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 229
    :cond_124
    return-void
.end method

.method static baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 201
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, p0, :cond_f

    .line 202
    :goto_e
    return v0

    .line 201
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
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
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p0, :cond_4

    .line 159
    :cond_3
    :goto_3
    return-void

    .line 141
    :cond_4
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 142
    if-eqz v1, :cond_3

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v2, p0, :cond_3

    .line 144
    iget-object v3, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v0

    .line 146
    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 147
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 148
    instance-of v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v5, :cond_31

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v5

    if-nez v5, :cond_31

    add-int/lit8 v2, v2, 0x1

    .line 149
    :cond_31
    instance-of v5, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v5, :cond_39

    instance-of v5, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v5, :cond_43

    :cond_39
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v5, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 151
    :cond_47
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModSector;->traders(I)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->traderTarget:I

    .line 152
    const/16 v0, 0x7d0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    .line 153
    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModSector;->places(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/ArrayList;)V

    .line 154
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->outpost(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 155
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->wreckField(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 156
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->miningBelt(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 157
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->base(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 158
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->restoreWrecks(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_3
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

.method static flagshipKilled(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 396
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    if-nez v0, :cond_7

    .line 403
    :cond_6
    :goto_6
    return-void

    .line 398
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

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 400
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 401
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

    .line 402
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
    .line 301
    const/4 v3, 0x0

    .line 302
    if-eqz p1, :cond_26

    const/high16 v0, -0x40800000    # -1.0f

    .line 303
    :goto_5
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 304
    const/4 v2, 0x0

    move v4, v2

    move v1, v0

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_41

    .line 305
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 306
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v2, :cond_2a

    move v0, v1

    .line 304
    :goto_21
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, v0

    goto :goto_10

    .line 302
    :cond_26
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    .line 307
    :cond_2a
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 308
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

    .line 310
    :cond_41
    return-object v3
.end method

.method public static kept(JJI)Z
    .registers 9

    .prologue
    .line 455
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

.method private static miningBelt(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 13

    .prologue
    const/16 v4, 0x5dc

    const/4 v11, 0x2

    const v10, 0x3e99999a    # 0.3f

    const/16 v9, 0x514

    .line 291
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v8, v0, v11

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    const/16 v1, 0x1e

    iget v2, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 294
    const/4 v1, 0x5

    iget v2, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v4, v9

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMalachite(Ljava/util/List;IFFIIF)V

    .line 295
    iget v2, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v1, v11

    move v4, v9

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomRuby(Ljava/util/List;IFFIIF)V

    .line 296
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
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
    .line 196
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

    .line 197
    return-void

    .line 196
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

    .line 339
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 340
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(II)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v1

    .line 341
    if-nez v1, :cond_1a

    .line 354
    :goto_19
    return-void

    .line 342
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

    .line 343
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 344
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

    .line 345
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

    .line 346
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v6

    .line 347
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v6

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v12

    .line 348
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v7

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 349
    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v12

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v3, v3, v7

    .line 350
    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 351
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v2

    .line 346
    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19
.end method

.method static persist([Lfr/testudo/spacecorsair/mod/ModWreck;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 462
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModSector;->excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p0, :cond_13

    .line 482
    :cond_12
    :goto_12
    return-void

    .line 463
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    array-length v6, p0

    move v3, v2

    :goto_1a
    if-ge v3, v6, :cond_d2

    aget-object v7, p0, v3

    .line 465
    if-nez v7, :cond_24

    .line 464
    :cond_20
    :goto_20
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a

    .line 466
    :cond_24
    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    if-eqz v0, :cond_c4

    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 467
    :goto_2a
    if-eqz v0, :cond_20

    .line 468
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_37

    const/16 v8, 0x3b

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    :cond_37
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

    .line 470
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

    if-eqz v0, :cond_cc

    move v0, v1

    :goto_9e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    .line 471
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v0, :cond_ce

    move v0, v1

    :goto_ad
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v0, :cond_d0

    move v0, v1

    :goto_bc
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 479
    :catch_c1
    move-exception v0

    goto/16 :goto_12

    .line 466
    :cond_c4
    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :cond_cc
    move v0, v2

    .line 470
    goto :goto_9e

    :cond_ce
    move v0, v2

    .line 471
    goto :goto_ad

    :cond_d0
    move v0, v2

    goto :goto_bc

    .line 473
    :cond_d2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 474
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 475
    if-eqz v1, :cond_12

    .line 476
    const-string v0, "v35_wrecks"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|0|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "v35_wrecks"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_124

    :goto_11b
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_12

    :cond_124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13a} :catch_c1

    move-result-object v0

    goto :goto_11b
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
    .line 164
    new-instance v8, Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1eef

    mul-long/2addr v2, v4

    invoke-direct {v8, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 165
    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v4

    .line 166
    const/4 v2, 0x0

    move v3, v2

    :goto_21
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v2, v2

    if-ge v3, v2, :cond_9c

    .line 167
    const/4 v4, 0x0

    .line 168
    const/4 v2, 0x0

    move v7, v2

    :goto_29
    const/16 v2, 0xc

    if-ge v7, v2, :cond_8f

    if-nez v4, :cond_8f

    .line 169
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

    .line 170
    const v2, 0x458ca000    # 4500.0f

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const v6, 0x453b8000    # 3000.0f

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 171
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

    .line 172
    const/4 v6, 0x1

    .line 173
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

    .line 174
    :goto_83
    if-nez v2, :cond_89

    const/16 v2, 0xb

    if-ne v7, v2, :cond_9d

    :cond_89
    move-object v2, v5

    .line 168
    :goto_8a
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v4, v2

    goto :goto_29

    .line 176
    :cond_8f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aput-object v4, v2, v3

    .line 177
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_21

    .line 179
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
    .line 129
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

    .line 130
    :cond_1a
    return-void
.end method

.method private static pursuitTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    .line 412
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    if-nez v0, :cond_7

    .line 424
    :cond_6
    :goto_6
    return-void

    .line 414
    :cond_7
    const-string v1, "v35_pursuit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_6

    .line 416
    const-string v2, "v35_pursuit_n"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 417
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v4

    const-string v3, "v35_pursuit_at"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, v2}, Lfr/testudo/spacecorsair/mod/ModSector;->waveDue(JI)I

    move-result v3

    .line 418
    if-gez v3, :cond_3d

    .line 419
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    array-length v1, v1

    if-lt v2, v1, :cond_6

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_pursuit"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    .line 422
    :cond_3d
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "v35_pursuit_n"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 423
    invoke-static {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModSector;->wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method private static restoreWrecks(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 20

    .prologue
    .line 486
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 487
    if-nez v5, :cond_7

    .line 532
    :cond_6
    :goto_6
    return-void

    .line 488
    :cond_7
    const-string v2, "v35_wrecks"

    const-string v3, ""

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v8

    .line 492
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    const/4 v2, 0x0

    move v4, v2

    :goto_27
    if-ge v4, v10, :cond_1a4

    aget-object v2, v7, v4

    .line 493
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 494
    array-length v2, v3

    const/4 v11, 0x4

    if-ge v2, v11, :cond_39

    .line 492
    :cond_35
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_27

    .line 495
    :cond_39
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 496
    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const/4 v2, 0x1

    :goto_55
    add-int/2addr v2, v11

    .line 497
    invoke-static {v12, v13, v8, v9, v2}, Lfr/testudo/spacecorsair/mod/ModSector;->kept(JJI)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 498
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_67

    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    :cond_67
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v14, 0x7c

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v11, 0x7c

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v11, 0x3

    aget-object v11, v3, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 501
    const/4 v2, 0x1

    new-array v11, v2, [Z

    const/4 v2, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v11, v2

    .line 502
    const/4 v2, 0x3

    aget-object v2, v3, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v2, 0x0

    move v3, v2

    :goto_ae
    if-ge v3, v13, :cond_35

    aget-object v2, v12, v3

    .line 503
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 504
    array-length v14, v2

    const/16 v15, 0xb

    if-ge v14, v15, :cond_c3

    .line 502
    :goto_bd
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_ae

    .line 496
    :cond_c1
    const/4 v2, 0x0

    goto :goto_55

    .line 505
    :cond_c3
    new-instance v14, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v14}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 506
    const/4 v15, 0x0

    aget-object v15, v2, v15

    iput-object v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 507
    iput-object v11, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 508
    const/4 v15, 0x1

    iput-boolean v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->poi:Z

    .line 509
    const/4 v15, 0x0

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v15, 0x3f800000    # 1.0f

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 510
    const/4 v15, 0x1

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    .line 511
    const/4 v15, 0x2

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 512
    const/4 v15, 0x3

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 513
    const/4 v15, 0x4

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 514
    iget-object v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v16, 0x5

    aget-object v16, v2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    const/16 v17, 0x6

    aget-object v17, v2, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 515
    const/4 v15, 0x7

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    iput v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 516
    const-string v15, "1"

    const/16 v16, 0x8

    aget-object v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    iput-boolean v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    .line 517
    const-string v15, "1"

    const/16 v16, 0x9

    aget-object v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    iput-boolean v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 518
    const-string v15, "1"

    const/16 v16, 0xa

    aget-object v2, v2, v16

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 519
    iget-boolean v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v2, :cond_1a1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_145
    iput v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 520
    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 521
    const v2, 0x3b449ba6    # 0.003f

    iput v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 522
    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v15, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 523
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModWreck;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v15

    iget v0, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    move/from16 v16, v0

    iget v0, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    const v17, 0x3f4ccccd    # 0.8f

    mul-float v16, v16, v17

    iget v0, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    move/from16 v17, v0

    iget v0, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const v18, 0x3f4ccccd    # 0.8f

    mul-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 524
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->massFor(F)F

    move-result v2

    iput v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 525
    const v2, 0x459c4000    # 5000.0f

    iput v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    iput v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 526
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 527
    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 528
    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    goto/16 :goto_bd

    .line 519
    :cond_1a1
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_145

    .line 531
    :cond_1a4
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "v35_wrecks"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_6
.end method

.method static sectorName(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static station(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;FFF)V
    .registers 8

    .prologue
    .line 186
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0, p1}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    .line 188
    iput p2, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->r:F

    .line 189
    iput p3, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->g:F

    .line 190
    iput p4, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->b:F

    .line 191
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method static still(Ljava/lang/String;FFFFFZLjava/util/Random;)[Lfr/testudo/spacecorsair/mod/ModWreck;
    .registers 20

    .prologue
    .line 256
    const/4 v2, 0x2

    new-array v5, v2, [Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 257
    const/4 v2, 0x1

    new-array v6, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v6, v2

    .line 258
    const v2, 0x3da3d70a    # 0.08f

    mul-float v3, p1, v2

    .line 259
    const/4 v2, 0x0

    move v4, v2

    :goto_11
    const/4 v2, 0x2

    if-ge v4, v2, :cond_ec

    .line 260
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 261
    iput-object p0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 262
    iput-object v6, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 263
    const/4 v2, 0x1

    iput-boolean v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->poi:Z

    .line 264
    const/4 v2, 0x0

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 265
    if-nez v4, :cond_d5

    const/4 v2, 0x0

    :goto_2a
    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    .line 266
    if-nez v4, :cond_d9

    move/from16 v2, p5

    :goto_30
    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 267
    const/4 v2, 0x1

    if-ne v4, v2, :cond_dd

    const/4 v2, 0x1

    :goto_36
    iput-boolean v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 268
    if-nez v4, :cond_e0

    const/4 v2, 0x1

    :goto_3b
    iput-boolean v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 269
    move/from16 v0, p6

    iput-boolean v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    .line 270
    if-eqz p6, :cond_e3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_45
    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 271
    iput p1, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 272
    iget v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v2, v8

    mul-float/2addr v2, p1

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 273
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

    .line 274
    new-instance v8, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    move/from16 v0, p4

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 275
    iget-object v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v9, p2

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v2, p3

    invoke-virtual {v8, v9, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    if-nez v4, :cond_ea

    const/4 v2, -0x5

    :goto_81
    int-to-float v2, v2

    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v2, v8

    add-float v2, v2, p4

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 277
    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v8

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 278
    iget-object v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 279
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

    .line 280
    const/high16 v2, 0x44fa0000    # 2000.0f

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 281
    iget v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 282
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWreck;->massFor(F)F

    move-result v2

    iput v2, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 283
    invoke-virtual {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 284
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 285
    aput-object v7, v5, v4

    .line 259
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_11

    :cond_d5
    move/from16 v2, p5

    .line 265
    goto/16 :goto_2a

    .line 266
    :cond_d9
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_30

    .line 267
    :cond_dd
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 268
    :cond_e0
    const/4 v2, 0x0

    goto/16 :goto_3b

    .line 270
    :cond_e3
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_45

    :cond_e7
    move v2, v3

    .line 273
    goto/16 :goto_61

    .line 276
    :cond_ea
    const/4 v2, 0x6

    goto :goto_81

    .line 287
    :cond_ec
    return-object v5
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_4

    .line 126
    :cond_3
    :goto_3
    return-void

    .line 93
    :cond_4
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_56

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_56

    const/4 v0, 0x1

    .line 94
    :goto_15
    if-eqz v0, :cond_42

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

    if-le v2, v3, :cond_42

    .line 98
    sput v1, Lfr/testudo/spacecorsair/mod/ModSector;->saveMs:I

    .line 99
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "v35_play_ms"

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModSector;->playMs:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_42
    sget v1, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    if-lez v1, :cond_58

    .line 104
    sget v0, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->pending:I

    if-nez v0, :cond_3

    .line 106
    :try_start_4e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->build(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_3

    .line 107
    :catch_54
    move-exception v0

    goto :goto_3

    :cond_56
    move v0, v1

    .line 93
    goto :goto_15

    .line 113
    :cond_58
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

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

    if-gtz v0, :cond_3

    .line 117
    const/16 v0, 0xfa0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSector;->refill:I

    .line 119
    :try_start_70
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->prune(Ljava/util/ArrayList;)V

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->prune(Ljava/util/ArrayList;)V

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModSector;->traderTarget:I

    if-ge v0, v1, :cond_8e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->trader(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto/16 :goto_3

    .line 123
    :catch_8b
    move-exception v0

    goto/16 :goto_3

    .line 122
    :cond_8e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->patrols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->patrol(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_9c} :catch_8b

    goto/16 :goto_3
.end method

.method private static trader(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 16

    .prologue
    const v14, 0x455ac000    # 3500.0f

    const-wide/high16 v12, 0x4079000000000000L    # 400.0

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 315
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 316
    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v2

    .line 317
    if-nez v2, :cond_20

    .line 336
    :goto_1f
    return-void

    .line 319
    :cond_20
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_cc

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModSector;->gateNear(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 320
    :goto_30
    if-nez v0, :cond_36

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v0, v0, v9

    .line 321
    :cond_36
    if-eqz v0, :cond_45

    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    const v4, 0x451c4000    # 2500.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_69

    .line 322
    :cond_45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 323
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

    .line 325
    :cond_69
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModSector;->gateNear(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 326
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

    .line 327
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

    .line 328
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 329
    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 330
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v3, v3, v9

    .line 331
    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v9

    .line 332
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    .line 333
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v0, v1

    .line 330
    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->traders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 319
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
    .line 136
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
    .line 428
    const/4 v0, 0x1

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 429
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    .line 430
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

    .line 431
    const/4 v0, 0x0

    move v2, v0

    :goto_37
    add-int/lit8 v0, p2, 0x2

    if-ge v2, v0, :cond_9c

    .line 432
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4b

    if-nez v2, :cond_4b

    const/4 v0, 0x1

    :goto_41
    invoke-static {p1, v3, v0}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    .line 433
    if-nez v1, :cond_4d

    .line 431
    :goto_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    .line 432
    :cond_4b
    const/4 v0, 0x0

    goto :goto_41

    .line 434
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

    .line 435
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 436
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_8b

    move-object v0, v1

    .line 437
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 438
    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_47

    .line 440
    :cond_8b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setAtackPlayerMode()V

    goto :goto_47

    .line 444
    :cond_9c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 445
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

    .line 446
    const-string v0, "warp_in"

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 447
    return-void
.end method

.method public static waveDue(JI)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 407
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->WAVE_AT:[J

    array-length v1, v1

    if-lt p2, v1, :cond_7

    .line 408
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

    .line 361
    const-string v0, "reaver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 362
    :cond_11
    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 365
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    move-object v0, v2

    :goto_22
    if-ge v3, v7, :cond_50

    aget-object v1, v6, v3

    .line 366
    iget-boolean v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->kretari:Z

    if-ne v8, v4, :cond_2f

    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->ai:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_33

    .line 365
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_22

    .line 367
    :cond_33
    if-eqz v0, :cond_3b

    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    if-ge v8, v9, :cond_3c

    :cond_3b
    move-object v0, v1

    .line 368
    :cond_3c
    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v8

    if-gt v8, p1, :cond_2f

    if-nez p2, :cond_4c

    iget v8, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    const/16 v9, 0xc8

    if-gt v8, v9, :cond_2f

    .line 369
    :cond_4c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 371
    :cond_50
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz v0, :cond_5b

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_5b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    move-object v0, v2

    .line 387
    :cond_62
    :goto_62
    return-object v0

    .line 373
    :cond_63
    if-eqz p2, :cond_7d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    .line 374
    :goto_71
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_62

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->faction:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 373
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

    .line 378
    :cond_8f
    invoke-static {p1, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(II)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v0

    .line 379
    if-nez v0, :cond_97

    move-object v0, v2

    goto :goto_62

    .line 380
    :cond_97
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 381
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->r:F

    .line 382
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->g:F

    .line 383
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->b:F

    .line 384
    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificName:Ljava/lang/String;

    .line 385
    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificNameDecalX:I

    .line 386
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->faction:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62
.end method

.method private static wreckField(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    .line 235
    new-instance v7, Ljava/util/Random;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    invoke-direct {v7, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->poi:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x1

    aget-object v9, v0, v1

    .line 237
    const/4 v10, 0x5

    move v8, v6

    .line 238
    :goto_1c
    if-ge v8, v10, :cond_7d

    .line 239
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSector;->FIELD_ART:[Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSector;->FIELD_ART:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 240
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->hasArt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 238
    :goto_2f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1c

    .line 241
    :cond_33
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->artSize(Ljava/lang/String;)F

    move-result v1

    .line 242
    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    .line 243
    mul-int/lit16 v2, v8, 0x17c

    add-int/lit16 v2, v2, 0x12c

    int-to-float v2, v2

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v11, 0x43480000    # 200.0f

    mul-float/2addr v3, v11

    add-float/2addr v3, v2

    .line 244
    iget v2, v9, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v11, v12

    mul-float/2addr v11, v3

    add-float/2addr v2, v11

    iget v11, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v11

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v4, v5

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    add-float/2addr v5, v11

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModSector;->still(Ljava/lang/String;FFFFFZLjava/util/Random;)[Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 245
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    goto :goto_2f

    .line 247
    :cond_7d
    return-void
.end method
