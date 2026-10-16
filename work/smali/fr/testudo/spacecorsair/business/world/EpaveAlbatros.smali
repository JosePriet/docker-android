.class public Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;
.super Lfr/testudo/spacecorsair/business/world/BigAsteroid;
.source "SourceFile"


# static fields
.field public static final LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableDimension2:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field private static mainDrawable2:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static physicDimension2:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field isEpaveMode1:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v1, 0x44000000    # 512.0f

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->physicDimension2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->drawableDimension2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBayTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->constellationTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 82
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EPAVE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    invoke-direct {v1, v2, v0}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v1, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->isEpaveMode1:Z

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->drawableDimension2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->mainDrawable2:Lfr/testudo/spacecorsair/display/Drawable;

    .line 34
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->isEpaveMode1:Z

    if-eqz v0, :cond_7

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 55
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->mainDrawable2:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_6
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->isEpaveMode1:Z

    if-eqz v0, :cond_7

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->physicDimension2:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_6
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 5

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;
    .registers 5

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    move-result-object v0

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;
    .registers 8

    .prologue
    const v0, 0x44bb8000    # 1500.0f

    .line 61
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    .line 62
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->life:F

    .line 63
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->maxLife:F

    .line 64
    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->mass:F

    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->isEpaveMode1:Z

    .line 66
    return-object p0

    .line 65
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_9

    .line 102
    :goto_8
    return-void

    .line 99
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    goto :goto_8
.end method
