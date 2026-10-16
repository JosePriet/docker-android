.class public Lfr/testudo/spacecorsair/mod/ModFleet;
.super Ljava/lang/Object;
.source "ModFleet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModFleet$Type;,
        Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;,
        Lfr/testudo/spacecorsair/mod/ModFleet$Raider;,
        Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;,
        Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;,
        Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;,
        Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;,
        Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;
    }
.end annotation


# static fields
.field static final ALBATROS:I = 0x3

.field public static final ARTS:[Ljava/lang/String;

.field static final BASIC:I = 0x0

.field static final BLATTE:I = 0x6

.field static final DEFENSOR:I = 0x2

.field static final FRELON:I = 0x1

.field static final RAT:I = 0x4

.field static final TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

.field static final UFO:I = 0x5

.field private static final drawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final fleet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private static lastLevel:Lfr/testudo/spacecorsair/game/levels/Level;

.field private static spawnTimer:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 46
    const/16 v0, 0x11

    new-array v9, v0, [Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const/4 v10, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_raider"

    const-string v2, "Reaver Raider"

    const/4 v3, 0x0

    const/16 v4, 0x5a

    const/4 v5, 0x2

    const v6, 0x3f99999a    # 1.2f

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_gunship"

    const-string v2, "Reaver Gunship"

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x3

    const/high16 v6, 0x3fc00000    # 1.5f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x2

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_hunter"

    const-string v2, "Reaver Hunter"

    const/4 v3, 0x1

    const/16 v4, 0x78

    const/4 v5, 0x5

    const v6, 0x3f99999a    # 1.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x3

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_marauder"

    const-string v2, "Reaver Marauder"

    const/4 v3, 0x2

    const/16 v4, 0x96

    const/4 v5, 0x6

    const v6, 0x3fcccccd    # 1.6f

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_corsair"

    const-string v2, "Reaver Corsair"

    const/4 v3, 0x1

    const/16 v4, 0xa0

    const/4 v5, 0x7

    const v6, 0x3fb33333    # 1.4f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x5

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_lancer"

    const-string v2, "Reaver Lancer"

    const/4 v3, 0x2

    const/16 v4, 0xbe

    const/16 v5, 0x8

    const v6, 0x3fe66666    # 1.8f

    const v7, 0x3fa66666    # 1.3f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x6

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_warlord"

    const-string v2, "Reaver Warlord"

    const/4 v3, 0x3

    const/16 v4, 0x12c

    const/16 v5, 0xa

    const v6, 0x3f99999a    # 1.2f

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/4 v10, 0x7

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "rv_dreadnought"

    const-string v2, "Reaver Dreadnought"

    const/4 v3, 0x3

    const/16 v4, 0x1a4

    const/16 v5, 0xc

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3fa66666    # 1.3f

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0x8

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_scout"

    const-string v2, "Kre\'tari Scout"

    const/4 v3, 0x4

    const/16 v4, 0x5a

    const/16 v5, 0xa

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0x9

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_bomber"

    const-string v2, "Kre\'tari Bomber"

    const/4 v3, 0x4

    const/16 v4, 0x64

    const/16 v5, 0xa

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3fb33333    # 1.4f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0xa

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_frigate"

    const-string v2, "Kre\'tari Frigate"

    const/4 v3, 0x5

    const/16 v4, 0x96

    const/16 v5, 0xa

    const v6, 0x3fa66666    # 1.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_destroyer"

    const-string v2, "Kre\'tari Destroyer"

    const/4 v3, 0x5

    const/16 v4, 0xb4

    const/16 v5, 0xb

    const v6, 0x3fcccccd    # 1.6f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0xc

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_cruiser"

    const-string v2, "Kre\'tari Cruiser"

    const/4 v3, 0x1

    const/16 v4, 0x104

    const/16 v5, 0xc

    const/high16 v6, 0x40200000    # 2.5f

    const v7, 0x3fa66666    # 1.3f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_heavycruiser"

    const-string v2, "Kre\'tari Heavy Cruiser"

    const/4 v3, 0x1

    const/16 v4, 0x12c

    const/16 v5, 0xd

    const v6, 0x404ccccd    # 3.2f

    const v7, 0x3fb33333    # 1.4f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_battlecruiser"

    const-string v2, "Kre\'tari Battlecruiser"

    const/4 v3, 0x3

    const/16 v4, 0x17c

    const/16 v5, 0xd

    const v6, 0x3fcccccd    # 1.6f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_battleship"

    const-string v2, "Kre\'tari Battleship"

    const/4 v3, 0x3

    const/16 v4, 0x1c2

    const/16 v5, 0xe

    const v6, 0x400ccccd    # 2.2f

    const v7, 0x3fa66666    # 1.3f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    const-string v1, "kt_mothership"

    const-string v2, "Kre\'tari Mothership"

    const/4 v3, 0x6

    const/16 v4, 0x2bc

    const/16 v5, 0xf

    const/high16 v6, 0x3fc00000    # 1.5f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFleet$Type;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V

    aput-object v0, v9, v10

    sput-object v9, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->ARTS:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    :goto_1a2
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v1, v1

    if-ge v0, v1, :cond_1b4

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFleet;->ARTS:[Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->art:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a2

    .line 75
    :cond_1b4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->drawables:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    .line 172
    const/16 v0, 0x7530

    sput v0, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnTimer:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 8

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const v4, 0x3f333333    # 0.7f

    .line 143
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFleet;->drawable(Lfr/testudo/spacecorsair/mod/ModFleet$Type;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    .line 144
    if-nez v1, :cond_d

    const/4 v0, 0x0

    .line 165
    :cond_c
    :goto_c
    return-object v0

    .line 145
    :cond_d
    iget-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 146
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-direct {v2, v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 148
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->ai:I

    packed-switch v0, :pswitch_data_104

    .line 155
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienBlatteSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienBlatteSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    .line 157
    :goto_3c
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->hp:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 158
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 159
    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 160
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->dmg:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 161
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->hp:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 162
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->name:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 163
    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 164
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    goto :goto_c

    .line 149
    :pswitch_6a
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    goto :goto_3c

    .line 150
    :pswitch_83
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->FrelonSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->FrelonSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_3c

    .line 151
    :pswitch_9c
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->defensorSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->defensorSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    goto :goto_3c

    .line 152
    :pswitch_b5
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    goto/16 :goto_3c

    .line 153
    :pswitch_cf
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    goto/16 :goto_3c

    .line 154
    :pswitch_e9
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModFleet;->clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    goto/16 :goto_3c

    .line 148
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_83
        :pswitch_9c
        :pswitch_b5
        :pswitch_cf
        :pswitch_e9
    .end packed-switch
.end method

.method private static clampLvl([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static drawable(Lfr/testudo/spacecorsair/mod/ModFleet$Type;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 7

    .prologue
    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 79
    if-nez v1, :cond_a

    const/4 v0, 0x0

    .line 86
    :cond_9
    :goto_9
    return-object v0

    .line 80
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->art:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->drawables:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Drawable;

    .line 82
    if-eqz v0, :cond_33

    iget-object v3, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v3, v1, :cond_9

    .line 83
    :cond_33
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    int-to-float v4, v4

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 84
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFleet;->drawables:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method private static excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 175
    if-nez p0, :cond_4

    .line 186
    :goto_3
    :pswitch_3
    return v0

    .line 176
    :cond_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFleet$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12

    .line 186
    const/4 v0, 0x0

    goto :goto_3

    .line 176
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static pick(ZIZ)Lfr/testudo/spacecorsair/mod/ModFleet$Type;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v4, v3

    move v0, v1

    :goto_a
    if-ge v0, v4, :cond_2a

    aget-object v5, v3, v0

    .line 211
    iget-boolean v6, v5, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->kretari:Z

    if-ne v6, p0, :cond_1b

    iget v6, v5, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    if-gt v6, p1, :cond_1b

    iget v6, v5, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->ai:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1e

    .line 210
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 212
    :cond_1e
    if-nez p2, :cond_26

    iget v6, v5, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_1b

    .line 213
    :cond_26
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 215
    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 221
    :goto_31
    return-object v0

    .line 216
    :cond_32
    if-eqz p2, :cond_52

    .line 218
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 219
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    goto :goto_31

    .line 221
    :cond_52
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    goto :goto_31
.end method

.method private static place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)V
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 256
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 257
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 258
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private static spawnGroup(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 16

    .prologue
    .line 225
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/4 v1, 0x0

    iget v4, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    iget v5, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int v3, v0, v1

    .line 226
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1b

    .line 252
    :cond_1a
    :goto_1a
    return-void

    .line 227
    :cond_1b
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v0, v4

    if-gez v0, :cond_d8

    const/4 v0, 0x1

    .line 228
    :goto_2f
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 229
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x40a9000000000000L    # 3200.0

    mul-double/2addr v6, v8

    double-to-float v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x40a9000000000000L    # 3200.0

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    .line 230
    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v7, 0x9c4

    .line 231
    invoke-virtual {v2, v5, v6, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v5, 0xbb8

    .line 232
    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v7, 0xdac

    .line 233
    invoke-virtual {v2, v5, v6, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v5, 0x7d0

    .line 234
    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v5

    .line 235
    if-eqz v0, :cond_db

    const/16 v1, 0xe

    if-lt v3, v1, :cond_db

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v1, v6, v8

    if-gez v1, :cond_db

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFleet;->build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1a

    .line 238
    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFleet;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)V

    .line 239
    const-string v0, "KRE\'TARI MOTHERSHIP DETECTED"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_1a

    .line 227
    :cond_d8
    const/4 v0, 0x0

    goto/16 :goto_2f

    .line 243
    :cond_db
    const/16 v1, 0x8

    if-lt v3, v1, :cond_fa

    const/4 v1, 0x1

    :goto_e0
    add-int/lit8 v2, v1, 0x2

    const/16 v1, 0xc

    if-lt v3, v1, :cond_fc

    const/4 v1, 0x1

    :goto_e7
    add-int v6, v2, v1

    .line 244
    const/4 v1, 0x0

    move v2, v1

    :goto_eb
    if-ge v2, v6, :cond_1a

    .line 245
    if-nez v2, :cond_fe

    const/4 v1, 0x1

    :goto_f0
    invoke-static {v0, v3, v1}, Lfr/testudo/spacecorsair/mod/ModFleet;->pick(ZIZ)Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    move-result-object v1

    .line 246
    if-nez v1, :cond_100

    .line 244
    :cond_f6
    :goto_f6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_eb

    .line 243
    :cond_fa
    const/4 v1, 0x0

    goto :goto_e0

    :cond_fc
    const/4 v1, 0x0

    goto :goto_e7

    .line 245
    :cond_fe
    const/4 v1, 0x0

    goto :goto_f0

    .line 247
    :cond_100
    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModFleet;->build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_f6

    .line 249
    new-instance v7, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v7, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x407f400000000000L    # 500.0

    mul-double/2addr v8, v10

    const-wide v10, 0x406f400000000000L    # 250.0

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x407f400000000000L    # 500.0

    mul-double/2addr v10, v12

    const-wide v12, 0x406f400000000000L    # 250.0

    sub-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v7, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 250
    invoke-static {v1, v7, v5}, Lfr/testudo/spacecorsair/mod/ModFleet;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)V

    goto :goto_f6
.end method

.method private static spec([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;
    .registers 4

    .prologue
    .line 134
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->lastLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eq v2, v0, :cond_15

    .line 193
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModFleet;->lastLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    const/16 v0, 0x7530

    sput v0, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnTimer:I

    .line 197
    :cond_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1e
    if-ltz v1, :cond_35

    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_31

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    :cond_31
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1e

    .line 200
    :cond_35
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_4f

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_4f

    if-eqz v2, :cond_4f

    iget-object v0, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFleet;->excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 206
    :cond_4f
    :goto_4f
    return-void

    .line 201
    :cond_50
    sget v0, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnTimer:I

    .line 202
    sget v0, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnTimer:I

    if-gtz v0, :cond_4f

    .line 203
    const v0, 0xea60

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40e3880000000000L    # 40000.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    add-int/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnTimer:I

    .line 204
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFleet;->fleet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_4f

    .line 205
    iget-object v0, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFleet;->spawnGroup(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_4f
.end method
