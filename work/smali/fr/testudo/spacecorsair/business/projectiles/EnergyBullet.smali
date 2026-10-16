.class public Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;
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
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v1, 0x41900000    # 18.0f

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    .line 35
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->mass:F

    .line 36
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 29
    sput-object p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 31
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :mod_bullet_stock
    return-object v0
    :mod_bullet_stock
    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;
    .registers 10

    .prologue
    .line 41
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->mass:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 44
    invoke-super {p0, p1, p2, p3, p8}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 45
    iput p4, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->a:F

    .line 46
    iput p5, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    .line 47
    iput p6, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    .line 48
    iput p7, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    .line 50
    return-object p0
.end method

.method public onImpactWithElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V

    const/4 v0, 0x1

    .line 66
    invoke-static {p0, v0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 68
    return-void
.end method
