.class public Lfr/testudo/spacecorsair/mod/ModFleet$Raider;
.super Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
.source "ModFleet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFleet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Raider"
.end annotation


# instance fields
.field d:Lfr/testudo/spacecorsair/display/Drawable;

.field phys:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->d:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->d:Lfr/testudo/spacecorsair/display/Drawable;

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method
