.class Lfr/testudo/spacecorsair/mod/ModShipTree$1;
.super Ljava/lang/Object;
.source "ModShipTree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;
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
        "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 5

    .prologue
    .line 141
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->column(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->column(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 142
    if-nez v0, :cond_14

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 143
    :cond_14
    if-nez v0, :cond_1f

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 144
    :cond_1f
    if-eqz v0, :cond_22

    :goto_21
    return v0

    :cond_22
    # invokes: Lfr/testudo/spacecorsair/mod/ModShipTree;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$000(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModShipTree;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$000(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_21
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 139
    check-cast p1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    check-cast p2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModShipTree$1;->compare(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    return v0
.end method
