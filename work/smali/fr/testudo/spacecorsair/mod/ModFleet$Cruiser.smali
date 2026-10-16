.class public Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;
.super Lfr/testudo/spacecorsair/business/ennemis/Albatros;
.source "ModFleet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFleet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cruiser"
.end annotation


# instance fields
.field d:Lfr/testudo/spacecorsair/display/Drawable;

.field phys:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->d:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->d:Lfr/testudo/spacecorsair/display/Drawable;

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method
