.class public Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;
.super Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;
    }
.end annotation


# static fields
.field public static DEFAULT_DRAWABLE_DIM:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public planetKind:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x442f0000    # 700.0f

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->DEFAULT_DRAWABLE_DIM:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;-><init>()V

    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->blue_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->planetKind:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->planetKind:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;
    .registers 4

    .prologue
    .line 39
    invoke-super {p0, p2, p3}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 40
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->planetKind:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    .line 41
    return-object p0
.end method
