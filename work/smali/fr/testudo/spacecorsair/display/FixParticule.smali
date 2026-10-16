.class public Lfr/testudo/spacecorsair/display/FixParticule;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_2:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/display/FixParticule;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/FixParticule;->doesColideWithOthers:Z

    .line 33
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 37
    sput-object p0, Lfr/testudo/spacecorsair/display/FixParticule;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/FixParticule;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/FixParticule;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 39
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 17
    sget-object v0, Lfr/testudo/spacecorsair/display/FixParticule;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/display/FixParticule;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method
