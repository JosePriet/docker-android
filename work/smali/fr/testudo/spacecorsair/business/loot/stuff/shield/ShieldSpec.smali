.class public Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.source "SourceFile"


# instance fields
.field public bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

.field public capacity:I

.field public deadTime:I

.field public reloadBySec:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 16
    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 17
    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 18
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 25
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 16
    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 17
    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 18
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    .line 46
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 47
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 48
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 49
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 50
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 51
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 52
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 53
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 54
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 55
    return-void
.end method


# virtual methods
.method public compareTo(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;
    .registers 5

    .prologue
    .line 31
    if-nez p1, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 41
    :goto_3
    return-object v0

    .line 36
    :cond_4
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    .line 37
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 38
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 39
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 40
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    goto :goto_3
.end method
