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
    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)I
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 1529
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    .line 1530
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canEquip()Z

    move-result v5

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canEquip()Z

    move-result v6

    .line 1531
    if-eq v5, v6, :cond_1b

    if-eqz v5, :cond_19

    :goto_17
    move v1, v0

    .line 1540
    :cond_18
    :goto_18
    return v1

    :cond_19
    move v0, v1

    .line 1531
    goto :goto_17

    .line 1533
    :cond_1b
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F

    move-result v5

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F

    move-result v6

    .line 1534
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    .line 1535
    if-eq v7, v8, :cond_31

    if-nez v7, :cond_18

    move v1, v0

    goto :goto_18

    .line 1536
    :cond_31
    if-nez v7, :cond_3d

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_3d

    cmpl-float v2, v6, v5

    if-gtz v2, :cond_18

    move v1, v0

    goto :goto_18

    .line 1537
    :cond_3d
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    if-nez v0, :cond_4f

    move v0, v2

    :goto_44
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    if-nez v1, :cond_58

    move v1, v2

    .line 1538
    :goto_4b
    if-eq v0, v1, :cond_61

    sub-int/2addr v1, v0

    goto :goto_18

    .line 1537
    :cond_4f
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v0

    goto :goto_44

    :cond_58
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v1

    goto :goto_4b

    .line 1539
    :cond_61
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    if-nez v0, :cond_71

    move v0, v2

    :goto_68
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    if-nez v1, :cond_78

    .line 1540
    :goto_6e
    sub-int v1, v2, v0

    goto :goto_18

    .line 1539
    :cond_71
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    goto :goto_68

    :cond_78
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    goto :goto_6e
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1527
    check-cast p1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    check-cast p2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$6;->compare(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)I

    move-result v0

    return v0
.end method
