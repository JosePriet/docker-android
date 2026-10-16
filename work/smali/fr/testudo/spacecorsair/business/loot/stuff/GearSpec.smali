.class public Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;
    }
.end annotation


# instance fields
.field public b:F

.field public g:F

.field public gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

.field public level:I

.field public r:F

.field public rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 43
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->r:F

    .line 44
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->g:F

    .line 45
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->b:F

    return-void
.end method
