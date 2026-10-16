.class public final enum Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

.field public static final enum blue_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

.field public static final enum green_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

.field public static final enum red_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

.field public static final enum transparent_blue:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;


# instance fields
.field public drawable:Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    const-string v1, "blue_planet"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->blue_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    const-string v1, "red_planet"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->red_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    const-string v1, "green_planet"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->green_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    const-string v1, "transparent_blue"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->transparent_blue:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->blue_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->red_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->green_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->transparent_blue:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->$VALUES:[Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;
    .registers 2

    .prologue
    .line 17
    const-class v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->$VALUES:[Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    return-object v0
.end method


# virtual methods
.method public setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->DEFAULT_DRAWABLE_DIM:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 29
    return-void
.end method
