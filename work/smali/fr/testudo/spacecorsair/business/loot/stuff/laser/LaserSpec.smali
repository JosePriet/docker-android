.class public Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.source "SourceFile"


# instance fields
.field public alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public bulletSpeed:F

.field public damage:I

.field public heatBySec:I

.field public precision:I

.field public reload:I

.field public resourceId:I


.field public isBeam:Z

# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 17
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 18
    const/16 v0, 0x12c

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 19
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 20
    const/high16 v0, -0x3f000000    # -8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 21
    const v0, 0x7f02014f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->resourceId:I

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 27
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 39
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 40
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 41
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 42
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 43
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 44
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 45
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 46
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 47
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 48
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 49
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->resourceId:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->resourceId:I

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 5

    .prologue
    .line 55
    if-nez p1, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 65
    :goto_3
    return-object v0

    .line 58
    :cond_4
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 59
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 60
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 61
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 62
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 63
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 64
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    goto :goto_3
.end method

.method public getDps()F
    .registers 3

    .prologue
    .line 31
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
