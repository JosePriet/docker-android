.class public Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;
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
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v1, 0x41200000    # 10.0f

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    .line 49
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 30
    sput-object p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 32
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;
    .registers 7

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 54
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->mass:F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->r:F

    .line 56
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->g:F

    .line 57
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->b:F

    .line 58
    return-object p0
.end method

.method public bridge synthetic init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 6

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v0

    return-object v0
.end method

.method public onImpactWithElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-static {p0, v0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 66
    return-void
.end method
