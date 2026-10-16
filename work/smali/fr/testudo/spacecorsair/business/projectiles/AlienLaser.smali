.class public Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;
.super Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.source "SourceFile"


# static fields
.field private static final displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final expectedSpeedLength:F = 5.0f

.field private static final physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static texture:Lfr/testudo/spacecorsair/display/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v1, 0x41600000    # 14.0f

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    .line 54
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 35
    sput-object p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 37
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;
    .registers 6

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 59
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->mass:F

    .line 63
    return-object p0
.end method

.method public bridge synthetic init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 6

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v0

    return-object v0
.end method

.method public onImpactWithElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 69
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 71
    return-void
.end method
