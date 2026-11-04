.class Lfr/testudo/spacecorsair/mod/ModFitting$Picker$6;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->candidates(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)I
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1496
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 1497
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canEquip()Z

    move-result v4

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canEquip()Z

    move-result v5

    .line 1498
    if-eq v4, v5, :cond_19

    if-eqz v4, :cond_17

    .line 1502
    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 1498
    goto :goto_16

    .line 1499
    :cond_19
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F

    move-result v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F

    move-result v5

    .line 1500
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_39

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_39

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_39

    cmpl-float v2, v5, v4

    if-lez v2, :cond_37

    :goto_35
    move v0, v1

    goto :goto_16

    :cond_37
    move v1, v0

    goto :goto_35

    .line 1501
    :cond_39
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v0

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1502
    if-nez v0, :cond_16

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    sub-int/2addr v0, v1

    goto :goto_16
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1494
    check-cast p1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    check-cast p2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$6;->compare(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)I

    move-result v0

    return v0
.end method
