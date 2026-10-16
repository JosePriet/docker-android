.class Lfr/testudo/spacecorsair/mod/ModUi$1;
.super Ljava/lang/Object;
.source "ModUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUi;->itemOrder(I)Ljava/util/Comparator;
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


# instance fields
.field final synthetic val$mode:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)I
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 59
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v1

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    sub-int/2addr v1, v3

    .line 61
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModUi$1;->val$mode:I

    packed-switch v3, :pswitch_data_6a

    .line 65
    if-eqz v1, :cond_5f

    :cond_22
    :goto_22
    return v1

    .line 62
    :pswitch_23
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    sub-int v0, v2, v0

    if-eqz v0, :cond_31

    :goto_2f
    move v1, v0

    goto :goto_22

    :cond_31
    move v0, v1

    goto :goto_2f

    .line 63
    :pswitch_33
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalSellPrice()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalSellPrice()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_44

    const/4 v1, 0x1

    goto :goto_22

    :cond_44
    cmp-long v0, v2, v6

    if-gez v0, :cond_22

    const/4 v1, -0x1

    goto :goto_22

    .line 64
    :pswitch_4a
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_22

    .line 65
    :cond_5f
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_22

    .line 61
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_33
        :pswitch_4a
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 57
    check-cast p1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    check-cast p2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModUi$1;->compare(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)I

    move-result v0

    return v0
.end method
