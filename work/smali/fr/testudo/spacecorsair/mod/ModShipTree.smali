.class public final Lfr/testudo/spacecorsair/mod/ModShipTree;
.super Ljava/lang/Object;
.source "ModShipTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;,
        Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;,
        Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;
    }
.end annotation


# static fields
.field private static final BG:I = -0xfaf4ea

.field private static final CARD:I = -0x19f4e5d2

.field private static final CATCH:Ljava/lang/String; = "modTreeKeys"

.field private static final COLS:[Ljava/lang/String;

.field private static final CYAN:I = -0x952f01

.field static final DEV:I = 0x8

.field private static final DIM:I = -0x807160

.field private static final DOCTRINE:[[Ljava/lang/String;

.field private static final EDGE:I = -0xdbc7b1

.field private static final GOLD:I = -0x1747b6

.field private static final GREEN:I = -0xbe00ea

.field private static final GREY:I = -0xb5a798

.field private static final GREYED:Landroid/graphics/ColorMatrixColorFilter;

.field static final GROUPS:I = 0x9

.field static final HDR_END:I = 0x12

.field static final HDR_LINE_Y:I = 0x2f

.field static final HDR_SRC_H:I = 0x40

.field static final HDR_TAB:I = 0x124

.field static final HDR_TAB_L:I = 0x10

.field static final HDR_TAB_R:I = 0x10e

.field static final IND:I = 0x7

.field private static final ORANGE:I = -0x1f5fc0

.field static final ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE:Ljava/lang/String; = "modPageFaction"

.field private static final PANEL:I = -0x33f5e9da

.field private static final PANEL_TEXT:[Ljava/lang/String;

.field private static final PURPLE:I = -0x2de501

.field private static final RED:I = -0x9495

.field private static final TAG:Ljava/lang/String; = "modShipTree"

.field private static final TAGLINE:[Ljava/lang/String;

.field private static final TEXT:I = -0x4f3b26

.field private static final YELLOW:I = -0x26c1

.field private static ateDown:Z

.field private static final bitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static cur:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private static fragsF:Ljava/lang/reflect/Field;

.field private static hookAte:Z

.field private static final missing:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nameF:Ljava/lang/reflect/Field;

.field private static pagerF:Ljava/lang/reflect/Field;

.field private static sel:I

.field private static selFor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static shipF:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FRIGATE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "DESTROYER"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "CRUISER"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "BATTLECRUISER"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "BATTLESHIP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "CAPITAL / TITAN"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "INDUSTRIAL"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Disciplined fleets; safe passage is a public duty."

    .line 68
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Share the spoils. Never leave a crew behind."

    .line 69
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "One living signal can guide a whole migration."

    .line 70
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Every risk priced. Every obligation recorded."

    .line 71
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Repair what you can. Hold while neighbors escape."

    .line 72
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "Keep routes open with dependable speed."

    .line 73
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Rescue first. Keep the frontier routes public."

    .line 74
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Civilian workhorses and pirate-market hulls."

    .line 75
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->TAGLINE:[Ljava/lang/String;

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "We defend civilian routes with coordinated formations, layered shields and visible command ships. Force is a public trust, measured by who makes it home."

    .line 78
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Captains earn authority by keeping a crew fed and a ship flying. Salvaged armor, close-range pressure and a hard code make betrayal costly."

    .line 79
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Living hulls carry brood chambers between safe worlds. Shared memory and the survival of the young shape every migration and answer to danger."

    .line 80
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Predictable routes and enforceable contracts are our public good. Symmetrical command hulls protect the core while measured force keeps agreements intact."

    .line 81
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Settlement crews build with replaceable armor, visible braces and parts a belt-side shop can repair. We hold ground until the evacuation is done."

    .line 82
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "Our light, efficient hulls move people and cargo between markets. Shared standards and reliable engines turn each successful contract into the next open route."

    .line 83
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Rangers patrol beyond easy support, mark safe passages and answer distress calls. We cooperate on security while resisting tolls that close a public route."

    .line 84
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Unaligned ships trade under local names and practical warranties. Expect civilian refits, salvaged hardware and a seller who values payment more than a flag."

    .line 85
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->PANEL_TEXT:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Fleet discipline"

    .line 88
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Layered shields"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Escort support"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Salvage armor"

    .line 89
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Close assault"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Crew loyalty"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Living hulls"

    .line 90
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Brood survival"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Signal swarm"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Contract fleets"

    .line 91
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Protected cores"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Measured force"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Heavy armor"

    .line 92
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Field repairs"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Hold the line"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Fast hulls"

    .line 93
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Efficient engines"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Trade routes"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Long patrol"

    .line 94
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Rescue service"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Open routes"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->DOCTRINE:[[Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 101
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->GREYED:Landroid/graphics/ColorMatrixColorFilter;

    .line 139
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShipTree$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->ORDER:Ljava/util/Comparator;

    .line 169
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->selFor:Ljava/lang/ref/WeakReference;

    .line 223
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShipTree$2;

    const/16 v1, 0x20

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree$2;-><init>(IFZ)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->bitmaps:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->missing:Ljava/util/Set;

    .line 281
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->cur:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1

    .prologue
    .line 56
    sput p0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    return p0
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V
    .registers 2

    .prologue
    .line 56
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->select(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->inboxLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V
    .registers 1

    .prologue
    .line 56
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 56
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .prologue
    .line 56
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z

    return p0
.end method

.method static synthetic access$600(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->showInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Landroid/view/View;)V

    return-void
.end method

.method private static art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 229
    if-eqz p1, :cond_a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->missing:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 236
    :cond_b
    :goto_b
    return-object v0

    .line 230
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->bitmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 231
    if-nez v0, :cond_b

    .line 232
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    if-nez v0, :cond_22

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->missing:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 234
    :cond_22
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->bitmaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static attach(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 291
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 302
    :cond_12
    :goto_12
    return-void

    .line 293
    :cond_13
    const v0, 0x1020002

    :try_start_16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 294
    if-eqz v0, :cond_12

    .line 295
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->overlay(Landroid/app/Activity;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v0, :cond_2e

    :cond_2a
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->build(Landroid/app/Activity;Landroid/view/ViewGroup;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-result-object v1

    .line 297
    :cond_2e
    if-eqz v1, :cond_12

    .line 298
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, v1, :cond_12

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->bringToFront()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_45} :catch_46

    goto :goto_12

    .line 299
    :catch_46
    move-exception v0

    goto :goto_12
.end method

.method private static box(IIFI)Landroid/graphics/drawable/GradientDrawable;
    .registers 7

    .prologue
    .line 1224
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1225
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1226
    const/4 v1, 0x1

    int-to-float v2, p3

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1227
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1228
    return-object v0
.end method

.method private static build(Landroid/app/Activity;Landroid/view/ViewGroup;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;
    .registers 24

    .prologue
    .line 361
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->newShips()Ljava/util/Set;

    move-result-object v10

    .line 363
    :try_start_4
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 364
    if-eqz v4, :cond_1f

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "newShips"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_4d6

    .line 368
    :cond_1f
    :goto_1f
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->ensureSelection(Landroid/app/Activity;)I

    .line 369
    new-instance v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;-><init>(Landroid/app/Activity;Ljava/util/Set;)V

    .line 370
    iget v12, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->dp:F

    .line 371
    const-string v4, "modShipTree"

    invoke-virtual {v11, v4}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->setTag(Ljava/lang/Object;)V

    .line 372
    const v4, -0xfaf4ea

    invoke-virtual {v11, v4}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->setBackgroundColor(I)V

    .line 373
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->setClickable(Z)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 375
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 376
    const-string v4, "ui_tree_bg"

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 377
    if-eqz v4, :cond_6f

    .line 378
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 379
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 380
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v5, v4}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    :cond_6f
    if-ge v6, v8, :cond_1b2

    const/4 v4, 0x1

    move v5, v4

    .line 384
    :goto_73
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 385
    if-eqz v5, :cond_1b6

    const/4 v4, 0x1

    :goto_7d
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 386
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v13, v4}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    if-eqz v5, :cond_1b9

    move v7, v6

    .line 389
    :goto_8d
    if-eqz v5, :cond_1d2

    move v4, v6

    :goto_90
    iput v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->treeW:I

    .line 390
    new-instance v6, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 391
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 392
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    .line 393
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v12

    float-to-int v14, v4

    .line 395
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14, v14, v14, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 396
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 397
    const v9, -0x66fbf5ec

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 398
    iget-object v9, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    if-eqz v5, :cond_1d6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    int-to-float v8, v8

    const v15, 0x3ed70a3d    # 0.42f

    mul-float/2addr v8, v15

    float-to-int v8, v8

    invoke-direct {v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_e2
    invoke-virtual {v13, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const-string v4, "SHIP TREE"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x11

    const v8, -0x952f01

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v8, v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 405
    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    const-string v4, ""

    const/16 v6, 0xa

    const v8, -0x4f3b26

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v8, v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 408
    :try_start_10a
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Level "

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u00b7  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v8

    sget-object v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v9, v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v9, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " cr"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_150} :catch_1de

    .line 413
    :goto_150
    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->grid:Landroid/widget/LinearLayout;

    .line 417
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->grid:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 418
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 420
    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    iget-object v8, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->grid:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    mul-int/lit8 v4, v14, 0x2

    sub-int v4, v7, v4

    .line 422
    mul-int/lit8 v6, v14, 0x2

    sub-int v6, v4, v6

    iput v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->panelW:I

    .line 423
    const/4 v15, 0x5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v12

    float-to-int v0, v6

    move/from16 v16, v0

    .line 424
    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    div-int/2addr v4, v15

    mul-int/lit8 v7, v16, 0x2

    sub-int/2addr v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 425
    const/4 v4, 0x0

    .line 426
    const/4 v7, 0x0

    .line 427
    const/4 v6, 0x0

    move v9, v6

    :goto_199
    const/16 v6, 0x9

    if-ge v9, v6, :cond_315

    .line 428
    const/16 v6, 0x8

    if-ne v9, v6, :cond_1e6

    const/16 v6, 0x8

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->shipsOf(IZ)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e6

    .line 427
    :goto_1ae
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_199

    .line 383
    :cond_1b2
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_73

    .line 385
    :cond_1b6
    const/4 v4, 0x0

    goto/16 :goto_7d

    .line 388
    :cond_1b9
    const/high16 v4, 0x43280000    # 168.0f

    mul-float/2addr v4, v12

    float-to-int v4, v4

    const/high16 v7, 0x435c0000    # 220.0f

    mul-float/2addr v7, v12

    float-to-int v7, v7

    int-to-float v9, v6

    const v14, 0x3e6147ae    # 0.22f

    mul-float/2addr v9, v14

    float-to-int v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v4

    goto/16 :goto_8d

    .line 389
    :cond_1d2
    sub-int v4, v6, v7

    goto/16 :goto_90

    .line 401
    :cond_1d6
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_e2

    .line 410
    :catch_1de
    move-exception v6

    .line 411
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    .line 429
    :cond_1e6
    rem-int v6, v7, v15

    if-nez v6, :cond_1fa

    .line 430
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 431
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 432
    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->grid:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1fa
    move-object v6, v4

    .line 434
    add-int/lit8 v8, v7, 0x1

    .line 436
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 437
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->emblem(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 438
    if-eqz v4, :cond_25c

    .line 439
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 440
    sget-object v19, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 441
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v12

    float-to-int v4, v4

    .line 443
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 444
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    :goto_238
    const/4 v4, 0x0

    .line 451
    const/4 v7, 0x1

    invoke-static {v9, v7}, Lfr/testudo/spacecorsair/mod/ModShipTree;->shipsOf(IZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v7, v4

    :goto_243
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d9

    const/4 v4, 0x1

    :goto_25a
    move v7, v4

    goto :goto_243

    .line 446
    :cond_25c
    const/4 v4, 0x7

    if-ne v9, v4, :cond_28b

    const-string v4, "IND"

    :goto_261
    const/16 v7, 0xa

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupColor(I)I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v4, v7, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 447
    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 448
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_238

    .line 446
    :cond_28b
    const/16 v4, 0x8

    if-ne v9, v4, :cond_292

    const-string v4, "DEV"

    goto :goto_261

    :cond_292
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v4, v4, v9

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_261

    .line 452
    :cond_2a6
    if-eqz v7, :cond_2ea

    .line 453
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 454
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 455
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 456
    const v19, -0xbe00ea

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 457
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v19, 0x40e00000    # 7.0f

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40e00000    # 7.0f

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x35

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    :cond_2ea
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModShipTree$3;

    invoke-direct {v4, v9, v11}, Lfr/testudo/spacecorsair/mod/ModShipTree$3;-><init>(ILfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facButtons:[Landroid/view/View;

    aput-object v18, v4, v9

    .line 464
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    move/from16 v0, v16

    move/from16 v1, v16

    move/from16 v2, v16

    move/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 466
    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v8

    move-object v4, v6

    goto/16 :goto_1ae

    .line 470
    :cond_315
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    .line 471
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 472
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14, v14, v14, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 473
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    const v6, -0x33f5e9da    # -3.619855E7f

    const v7, -0xdbc7b1

    const/4 v8, 0x1

    invoke-static {v6, v7, v12, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 475
    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 476
    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    iget-object v7, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    const/4 v6, 0x2

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 481
    const v6, -0x807160

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    const-string v6, "<font color=\'#6ad0ff\'>\u25a0</font> flying &nbsp;<font color=\'#41ff16\'>\u25a0</font> owned &nbsp;<font color=\'#ffd93f\'>\u25a0</font> can buy<br><font color=\'#4a5868\'>\u25a0</font> locked &nbsp;<font color=\'#e8b84a\'>\u25a0</font> secret (Honored)<br>Tech I needs any hull of the previous class, Tech II a Tech I of the same class. Tap a ship for details."

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 486
    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 487
    iget-object v7, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 491
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    const-string v6, "Standings"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6, v12}, Lfr/testudo/spacecorsair/mod/ModShipTree;->smallButton(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/Button;

    move-result-object v6

    .line 493
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModShipTree$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->inboxLabel()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7, v12}, Lfr/testudo/spacecorsair/mod/ModShipTree;->smallButton(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/Button;

    move-result-object v7

    .line 495
    new-instance v8, Lfr/testudo/spacecorsair/mod/ModShipTree$5;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7}, Lfr/testudo/spacecorsair/mod/ModShipTree$5;-><init>(Landroid/app/Activity;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 499
    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v12

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 500
    invoke-virtual {v4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 504
    iget-object v7, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->side:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v4, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->vs:Landroid/widget/ScrollView;

    .line 508
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->vs:Landroid/widget/ScrollView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 509
    new-instance v4, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->hs:Landroid/widget/HorizontalScrollView;

    .line 510
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->hs:Landroid/widget/HorizontalScrollView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 511
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->vs:Landroid/widget/ScrollView;

    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->hs:Landroid/widget/HorizontalScrollView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    .line 513
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModShipTree$6;

    invoke-direct {v6, v11}, Lfr/testudo/spacecorsair/mod/ModShipTree$6;-><init>(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->hs:Landroid/widget/HorizontalScrollView;

    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v6, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->vs:Landroid/widget/ScrollView;

    if-eqz v5, :cond_4cb

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_43e
    invoke-virtual {v13, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    .line 520
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 521
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 522
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v4, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    const-string v4, "modTreeKeys"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 526
    if-eqz v4, :cond_474

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 527
    :cond_474
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 528
    const-string v5, "modTreeKeys"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 529
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 530
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 531
    new-instance v5, Lfr/testudo/spacecorsair/mod/ModShipTree$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 547
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iput-object v4, v11, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->catcher:Landroid/view/View;

    .line 550
    const-string v5, "modShipTree"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 551
    if-eqz v5, :cond_4af

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 552
    :cond_4af
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModShipTree;->cur:Ljava/lang/ref/WeakReference;

    .line 554
    sget v5, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    invoke-static {v11, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree;->select(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V

    .line 555
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 556
    return-object v11

    .line 516
    :cond_4cb
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_43e

    .line 365
    :catch_4d6
    move-exception v4

    goto/16 :goto_1f

    :cond_4d9
    move v4, v7

    goto/16 :goto_25a
.end method

.method private static card(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IIIILandroid/graphics/Bitmap;)Landroid/view/View;
    .registers 19

    .prologue
    .line 854
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->a:Landroid/app/Activity;

    .line 855
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->dp:F

    .line 856
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->secretLocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z

    move-result v6

    .line 857
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 858
    if-eqz v6, :cond_1cc

    const v2, -0x7595d6

    move v3, v2

    .line 859
    :goto_13
    if-eqz p6, :cond_1d3

    .line 860
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 861
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 862
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 863
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 865
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 866
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/16 v10, 0x50

    invoke-direct {v3, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    :goto_45
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 872
    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->thumb(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 873
    if-eqz v6, :cond_1e5

    .line 874
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShipTree;->GREYED:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 875
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 879
    :cond_59
    :goto_59
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x31

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-direct {v3, v0, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 880
    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 881
    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    .line 884
    const/4 v2, 0x3

    if-lt v3, v2, :cond_1ef

    const-string v2, "III"

    :goto_76
    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-static {v4, v2, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 885
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 886
    const/4 v2, 0x3

    if-lt v3, v2, :cond_1fa

    const v2, -0x85ba38

    :goto_91
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 887
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x33

    invoke-direct {v2, v3, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 888
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 889
    invoke-virtual {v7, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->fresh:Ljava/util/Set;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 891
    const-string v2, "NEW"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/high16 v8, -0x1000000

    const/4 v9, 0x1

    invoke-static {v4, v2, v3, v8, v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 892
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v8, 0x0

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 893
    const v3, -0xbe00ea

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 894
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x33

    invoke-direct {v3, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 895
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 896
    const/high16 v8, 0x41880000    # 17.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 897
    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    :cond_ee
    if-eqz v6, :cond_207

    const-string v2, "HONORED"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x1747b6

    .line 910
    :goto_f9
    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-static {v4, v3, v8, v2, v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 911
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x35

    invoke-direct {v3, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 912
    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 913
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 914
    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xb

    if-eqz v6, :cond_27b

    const v2, -0x807160

    :goto_123
    const/4 v6, 0x1

    invoke-static {v4, v3, v8, v2, v6}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 917
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 918
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 919
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 920
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v6, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v6, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 921
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x50

    invoke-direct {v3, v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 922
    const/high16 v6, 0x41880000    # 17.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 923
    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u00b7  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->shortPrice(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    const v6, -0x4f3b26

    const/4 v8, 0x0

    invoke-static {v4, v2, v3, v6, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 925
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 926
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 927
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x50

    invoke-direct {v3, v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 928
    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 929
    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    const-string v2, "ui_tree_card_sel"

    const/16 v3, 0x200

    invoke-static {v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 933
    if-eqz v3, :cond_281

    .line 934
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 935
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 936
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 942
    :goto_1b4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModShipTree$8;

    invoke-direct {v2, p0, p1}, Lfr/testudo/spacecorsair/mod/ModShipTree$8;-><init>(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    return-object v7

    .line 858
    :cond_1cc
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->stateColor(I)I

    move-result v2

    move v3, v2

    goto/16 :goto_13

    .line 868
    :cond_1d3
    const v8, -0x19f4e5d2

    const/4 v2, 0x2

    if-gt p2, v2, :cond_1e3

    const/4 v2, 0x2

    :goto_1da
    invoke-static {v8, v3, v5, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_45

    :cond_1e3
    const/4 v2, 0x1

    goto :goto_1da

    .line 876
    :cond_1e5
    const/4 v3, 0x3

    if-lt p2, v3, :cond_59

    .line 877
    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_59

    .line 884
    :cond_1ef
    const/4 v2, 0x2

    if-ne v3, v2, :cond_1f6

    const-string v2, "II"

    goto/16 :goto_76

    :cond_1f6
    const-string v2, "I"

    goto/16 :goto_76

    .line 886
    :cond_1fa
    const/4 v2, 0x2

    if-ne v3, v2, :cond_202

    const v2, -0x3885ea

    goto/16 :goto_91

    :cond_202
    const v2, -0xd1b59a

    goto/16 :goto_91

    .line 903
    :cond_207
    if-nez p2, :cond_214

    const-string v2, "FLYING"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x952f01

    goto/16 :goto_f9

    .line 904
    :cond_214
    const/4 v2, 0x1

    if-ne p2, v2, :cond_222

    const-string v2, "OWNED"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0xbe00ea

    goto/16 :goto_f9

    .line 905
    :cond_222
    const/4 v2, 0x2

    if-ne p2, v2, :cond_22f

    const-string v2, "BUY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, -0x26c1

    goto/16 :goto_f9

    .line 906
    :cond_22f
    const/4 v2, 0x3

    if-ne p2, v2, :cond_23d

    const-string v2, "CREDITS"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x1f5fc0

    goto/16 :goto_f9

    .line 907
    :cond_23d
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->levelOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_25f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LV "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v2, -0x9495

    goto/16 :goto_f9

    .line 908
    :cond_25f
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_270

    const-string v2, "GIFT"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x807160

    goto/16 :goto_f9

    .line 909
    :cond_270
    const-string v2, "LICENCE"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x807160

    goto/16 :goto_f9

    .line 916
    :cond_27b
    invoke-static {v4, p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->rarityColor(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    goto/16 :goto_123

    .line 939
    :cond_281
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 940
    const v3, 0x226ad0ff

    const/4 v4, -0x1

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1b4
.end method

.method private static chips(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;[Ljava/lang/String;I)V
    .registers 19

    .prologue
    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->a:Landroid/app/Activity;

    .line 740
    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->dp:F

    .line 741
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v5

    float-to-int v6, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v5

    float-to-int v7, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    float-to-int v8, v1

    .line 742
    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->panelW:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 743
    const/4 v2, 0x0

    .line 744
    const/4 v1, 0x0

    .line 745
    move-object/from16 v0, p1

    array-length v10, v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v10, :cond_9e

    aget-object v11, p1, v3

    .line 746
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    const/4 v13, 0x1

    move/from16 v0, p2

    invoke-static {v4, v11, v12, v0, v13}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 747
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 748
    invoke-virtual {v11, v6, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 749
    const/high16 v12, 0x33000000

    const v13, 0xffffff

    and-int v13, v13, p2

    or-int/2addr v12, v13

    const v13, 0xffffff

    and-int v13, v13, p2

    const/high16 v14, -0x56000000

    or-int/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v13, v5, v14}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    mul-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    .line 751
    if-eqz v2, :cond_74

    add-int v13, v1, v12

    if-le v13, v9, :cond_8e

    .line 752
    :cond_74
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 753
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 754
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v1, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 755
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 756
    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    const/4 v1, 0x0

    .line 759
    :cond_8e
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 760
    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 761
    invoke-virtual {v2, v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    add-int/2addr v1, v12

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 764
    :cond_9e
    return-void
.end method

.method static column(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 2

    .prologue
    .line 121
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 128
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 122
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 123
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_8

    .line 124
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_8

    .line 125
    :pswitch_f
    const/4 v0, 0x4

    goto :goto_8

    .line 126
    :pswitch_11
    const/4 v0, 0x5

    goto :goto_8

    .line 127
    :pswitch_13
    const/4 v0, 0x6

    goto :goto_8

    .line 121
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method static decoratePages(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 1146
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->pagerF:Ljava/lang/reflect/Field;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "shipsPager"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->pagerF:Ljava/lang/reflect/Field;

    .line 1147
    :cond_10
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->fragsF:Ljava/lang/reflect/Field;

    if-nez v0, :cond_44

    .line 1148
    const-class v0, Landroid/support/v4/app/o;

    const-string v1, "mFragments"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->fragsF:Ljava/lang/reflect/Field;

    .line 1149
    const-class v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    const-string v1, "spaceShip"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->shipF:Ljava/lang/reflect/Field;

    .line 1150
    const-class v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    const-string v1, "shipName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->nameF:Ljava/lang/reflect/Field;

    .line 1151
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->fragsF:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1152
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->shipF:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1153
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->nameF:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1155
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->pagerF:Ljava/lang/reflect/Field;

    if-nez v0, :cond_49

    .line 1174
    :cond_48
    :goto_48
    return-void

    .line 1156
    :cond_49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->pagerF:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1157
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->pagerF:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1158
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/app/o;

    if-eqz v1, :cond_48

    .line 1159
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->fragsF:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1160
    if-eqz v0, :cond_48

    .line 1161
    const/4 v1, 0x0

    move v3, v1

    :goto_77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_48

    .line 1162
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1163
    instance-of v1, v2, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    if-nez v1, :cond_89

    .line 1161
    :cond_85
    :goto_85
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_77

    .line 1164
    :cond_89
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->nameF:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1165
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShipTree;->shipF:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 1166
    if-eqz v1, :cond_85

    if-eqz v2, :cond_85

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_85

    .line 1167
    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1168
    const-string v4, "modPageFaction"

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_85

    .line 1169
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->pageLine(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->pageParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_be} :catch_bf

    goto :goto_85

    .line 1171
    :catch_bf
    move-exception v0

    goto :goto_48
.end method

.method private static emblem(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/16 v2, 0x80

    .line 240
    const/4 v0, 0x7

    if-ne p1, v0, :cond_c

    const-string v0, "emblem_independent"

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    :goto_b
    return-object v0

    .line 241
    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_17

    const-string v0, "emblem_dev"

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b

    .line 242
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emblem_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, p1

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b
.end method

.method static ensureSelection(Landroid/app/Activity;)I
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->selFor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_d

    sget v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    if-gez v0, :cond_40

    .line 175
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->selFor:Ljava/lang/ref/WeakReference;

    .line 176
    sput v3, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    .line 178
    :try_start_16
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 179
    if-eqz v0, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_43

    .line 183
    :cond_28
    :goto_28
    const-string v0, "corsair_tree"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 185
    const-string v0, "independent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    sput v3, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    .line 190
    :cond_40
    :goto_40
    sget v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    return v0

    .line 180
    :catch_43
    move-exception v0

    .line 181
    sput v3, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    goto :goto_28

    .line 186
    :cond_47
    const-string v0, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x8

    sput v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    goto :goto_40

    .line 187
    :cond_54
    const/4 v0, 0x0

    :goto_55
    if-ge v0, v3, :cond_40

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_40

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    sput v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_55
.end method

.method static group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 106
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 107
    if-nez v2, :cond_31

    .line 109
    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alien"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 110
    :goto_16
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    if-ge v0, v1, :cond_2f

    const-string v2, "kretari"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v0

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 116
    :goto_2b
    return v0

    .line 110
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2f
    move v0, v1

    .line 112
    goto :goto_2b

    .line 114
    :cond_31
    iget-boolean v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-eqz v3, :cond_3a

    const/16 v0, 0x8

    goto :goto_2b

    .line 115
    :cond_38
    add-int/lit8 v0, v0, 0x1

    :cond_3a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v3, v3

    if-ge v0, v3, :cond_50

    if-ge v0, v1, :cond_50

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v0

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_2b

    :cond_50
    move v0, v1

    .line 116
    goto :goto_2b
.end method

.method static groupColor(I)I
    .registers 5

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 202
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    const v0, -0x4f3b26

    .line 205
    :goto_8
    return v0

    .line 203
    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_11

    const v0, -0xa6008d

    goto :goto_8

    .line 204
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    .line 205
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_8
.end method

.method static groupName(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    const-string v0, "Independent"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_9
    return-object v0

    .line 197
    :cond_a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_15

    const-string v0, "Developers"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 198
    :cond_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    goto :goto_9
.end method

.method static handleBack(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 338
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->overlay(Landroid/app/Activity;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-result-object v2

    .line 339
    if-nez v2, :cond_9

    .line 345
    :cond_8
    :goto_8
    return v0

    .line 340
    :cond_9
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    .line 341
    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    move v0, v1

    goto :goto_8

    .line 344
    :cond_20
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->show(Landroid/app/Activity;)V

    move v0, v1

    .line 345
    goto :goto_8
.end method

.method public static hide(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 322
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->overlay(Landroid/app/Activity;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-result-object v0

    .line 323
    if-nez v0, :cond_7

    .line 327
    :cond_6
    :goto_6
    return-void

    .line 324
    :cond_7
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    .line 325
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->setVisibility(I)V

    .line 326
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->catcher:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->catcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_6
.end method

.method private static hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 992
    if-nez p0, :cond_5

    .line 999
    :goto_4
    return-void

    .line 993
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 994
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->selCard:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    .line 995
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->selCard:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 996
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 998
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->selCard:Landroid/view/View;

    goto :goto_4
.end method

.method private static inboxLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 560
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->unread()I

    move-result v0

    .line 561
    if-lez v0, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inbox ("

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const-string v0, "Inbox"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method private static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_6

    :catch_10
    move-exception v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static levelOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 952
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_12

    if-gt v1, v2, :cond_10

    .line 954
    :goto_f
    return v0

    .line 952
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 953
    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method static listed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 2

    .prologue
    .line 155
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->secret(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static onKey(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 351
    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    .line 356
    :goto_4
    return v0

    .line 352
    :cond_5
    if-eqz p2, :cond_10

    :try_start_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_10

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->hookAte:Z

    goto :goto_4

    .line 353
    :cond_10
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->handleBack(Landroid/app/Activity;)Z

    move-result v1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->hookAte:Z

    .line 354
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->hookAte:Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_4

    .line 355
    :catch_19
    move-exception v1

    goto :goto_4
.end method

.method static openShip(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 331
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    .line 332
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hide(Landroid/app/Activity;)V

    .line 333
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUi;->jumpTo(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 334
    return-void
.end method

.method private static overlay(Landroid/app/Activity;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;
    .registers 3

    .prologue
    .line 285
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->cur:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    .line 286
    if-eqz v0, :cond_f

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->a:Landroid/app/Activity;

    if-ne v1, p0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static pageLine(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x41b00000    # 22.0f

    .line 1184
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1185
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 1186
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1187
    const-string v3, "modPageFaction"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1188
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1189
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1190
    const-string v3, "\u25c0 TREE"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->smallButton(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/Button;

    move-result-object v3

    .line 1191
    const v4, -0x952f01

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1192
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModShipTree$11;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModShipTree$11;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1194
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1195
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->emblem(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1197
    if-eqz v3, :cond_71

    .line 1198
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1199
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1200
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1201
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v5, v6, v0

    float-to-int v5, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1202
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1203
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    :cond_71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1206
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1207
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupName(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupColor(I)I

    move-result v5

    invoke-static {p0, v3, v4, v5, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1208
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->standingText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    const v4, -0x4f3b26

    invoke-static {p0, v1, v3, v4, v7}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1209
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1210
    return-object v2
.end method

.method private static pageParams()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    .prologue
    const/4 v1, -0x2

    .line 1177
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1178
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1179
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1180
    return-object v0
.end method

.method private static price(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 2

    .prologue
    .line 968
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 970
    :goto_8
    return v0

    .line 969
    :catch_9
    move-exception v0

    .line 970
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static rarityColor(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 4

    .prologue
    .line 960
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result v0

    .line 962
    :goto_10
    return v0

    .line 961
    :catch_11
    move-exception v0

    .line 962
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private static secret(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 2

    .prologue
    .line 149
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_c

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static secretLocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z
    .registers 3

    .prologue
    .line 850
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->secret(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    if-lt p1, v0, :cond_11

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static select(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V
    .registers 38

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->a:Landroid/app/Activity;

    move-object/from16 v16, v0

    .line 567
    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->dp:F

    .line 568
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->built:I

    .line 569
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    .line 570
    const/4 v2, 0x0

    move v3, v2

    :goto_15
    const/16 v2, 0x9

    if-ge v3, v2, :cond_44

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facButtons:[Landroid/view/View;

    aget-object v4, v2, v3

    .line 572
    if-nez v4, :cond_25

    .line 570
    :goto_21
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_15

    .line 573
    :cond_25
    move/from16 v0, p1

    if-ne v3, v0, :cond_38

    const v2, 0x553a7bd5

    const v5, -0x952f01

    const/4 v6, 0x2

    invoke-static {v2, v5, v11, v6}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_34
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    :cond_38
    const v2, 0x66101c2c

    const v5, -0xdbc7b1

    const/4 v6, 0x1

    invoke-static {v2, v5, v11, v6}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_34

    .line 575
    :cond_44
    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->shipsOf(IZ)Ljava/util/List;

    move-result-object v17

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 578
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 579
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 580
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 581
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->emblem(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 582
    if-eqz v3, :cond_91

    .line 583
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 584
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 585
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 586
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v5, v11

    float-to-int v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 587
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v11

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 588
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    :cond_91
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 591
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 592
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupName(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupColor(I)I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShipTree;->TAGLINE:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, p1

    if-ge v0, v4, :cond_db

    .line 594
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShipTree;->TAGLINE:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/16 v5, 0x9

    const v6, -0x1747b6

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 595
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 596
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 597
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 598
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    :cond_db
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->standingText(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    const/16 v6, -0x26c1

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->PANEL_TEXT:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_131

    .line 604
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->PANEL_TEXT:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/16 v3, 0x9

    const v4, -0x4f3b26

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 605
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 606
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 607
    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    :cond_131
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->DOCTRINE:[[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_14c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->DOCTRINE:[[Ljava/lang/String;

    aget-object v2, v2, p1

    array-length v2, v2

    if-lez v2, :cond_14c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->DOCTRINE:[[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupColor(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModShipTree;->chips(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;[Ljava/lang/String;I)V

    .line 611
    :cond_14c
    const/4 v3, 0x0

    .line 613
    :try_start_14d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_151
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_171

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_168} :catch_16f

    move-result v2

    if-eqz v2, :cond_543

    add-int/lit8 v2, v3, 0x1

    :goto_16d
    move v3, v2

    goto :goto_151

    .line 614
    :catch_16f
    move-exception v2

    .line 615
    const/4 v3, 0x0

    .line 617
    :cond_171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ships  \u00b7  "

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    const v4, -0x807160

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 618
    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 623
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->selCard:Landroid/view/View;

    .line 624
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 625
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ca
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->column(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    aget v4, v18, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v18, v2

    goto :goto_1ca

    .line 626
    :cond_1e1
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 627
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 628
    const/4 v2, 0x0

    :goto_1eb
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1ff

    aget v5, v18, v2

    if-lez v5, :cond_1fc

    add-int/lit8 v4, v4, 0x1

    aget v5, v18, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_1eb

    .line 629
    :cond_1ff
    if-nez v4, :cond_224

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    const-string v3, "No ships in this faction yet."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    const v5, -0x4f3b26

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    :goto_223
    return-void

    .line 633
    :cond_224
    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v11

    float-to-int v0, v2

    move/from16 v20, v0

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float/2addr v2, v11

    float-to-int v0, v2

    move/from16 v21, v0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v11

    float-to-int v0, v2

    move/from16 v22, v0

    .line 634
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->treeW:I

    mul-int/lit8 v5, v20, 0x2

    sub-int/2addr v2, v5

    add-int/lit8 v5, v4, -0x1

    mul-int v5, v5, v21

    sub-int/2addr v2, v5

    div-int/2addr v2, v4

    .line 635
    const/high16 v5, 0x42c00000    # 96.0f

    mul-float/2addr v5, v11

    float-to-int v5, v5

    const/high16 v6, 0x43040000    # 132.0f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 636
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    .line 637
    int-to-float v6, v5

    const v7, 0x3f733333    # 0.95f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 638
    const-string v7, "ui_tree_card"

    const/16 v8, 0x200

    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 639
    if-eqz v8, :cond_292

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_292

    .line 641
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 642
    int-to-float v7, v5

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3fa00000    # 1.25f

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 644
    :cond_292
    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    sub-int v2, v5, v2

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v11

    float-to-int v7, v7

    sub-int v7, v6, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 645
    const-string v2, "ui_tree_header"

    const/16 v9, 0x200

    move-object/from16 v0, v16

    invoke-static {v0, v2, v9}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 646
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    .line 647
    if-eqz v23, :cond_540

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-lez v9, :cond_540

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    const/high16 v9, 0x41600000    # 14.0f

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v10, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/2addr v10, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v9, v2

    .line 648
    :goto_2d3
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v11

    float-to-int v0, v2

    move/from16 v24, v0

    .line 649
    add-int v25, v20, v24

    .line 650
    add-int v2, v25, v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v26, v2, v10

    .line 651
    mul-int/lit8 v2, v20, 0x2

    mul-int v10, v4, v5

    add-int/2addr v2, v10

    add-int/lit8 v10, v4, -0x1

    mul-int v10, v10, v21

    add-int v27, v2, v10

    .line 652
    add-int v2, v6, v22

    mul-int/2addr v2, v3

    add-int v2, v2, v26

    add-int v28, v2, v20

    .line 654
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [Z

    move-object/from16 v29, v0

    .line 656
    :try_start_2fc
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_308
    :goto_308
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eqz v2, :cond_308

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->column(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    const/4 v10, 0x1

    aput-boolean v10, v29, v2
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_31d} :catch_31e

    goto :goto_308

    .line 657
    :catch_31e
    move-exception v2

    .line 660
    :cond_31f
    const/4 v3, 0x0

    .line 661
    const/4 v2, 0x0

    :goto_321
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_337

    aget v10, v18, v2

    if-lez v10, :cond_334

    add-int/lit8 v10, v3, 0x1

    add-int v12, v5, v21

    mul-int/2addr v3, v12

    add-int v3, v3, v20

    aput v3, v19, v2

    move v3, v10

    :cond_334
    add-int/lit8 v2, v2, 0x1

    goto :goto_321

    .line 663
    :cond_337
    mul-int/lit8 v2, v4, 0x3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v13, v2, [F

    .line 664
    array-length v2, v13

    new-array v14, v2, [F

    .line 665
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 666
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v30, v2, v11

    move/from16 v0, v25

    int-to-float v2, v0

    int-to-float v3, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v3, v11

    add-float v31, v2, v3

    .line 667
    const/4 v3, -0x1

    .line 668
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [I

    move-object/from16 v32, v0

    .line 669
    const/4 v2, 0x0

    :goto_35d
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    array-length v11, v11

    if-ge v2, v11, :cond_46d

    .line 670
    aget v11, v18, v2

    if-nez v11, :cond_369

    .line 669
    :goto_366
    add-int/lit8 v2, v2, 0x1

    goto :goto_35d

    .line 671
    :cond_369
    aget v33, v19, v2

    .line 673
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModShipTree;->COLS:[Ljava/lang/String;

    aget-object v11, v11, v2

    const/16 v12, 0xa

    const v15, -0x4f3b26

    const/16 v34, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-static {v0, v11, v12, v15, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 674
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 675
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 676
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    invoke-direct {v12, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 677
    move/from16 v0, v33

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 678
    move/from16 v0, v20

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    if-eqz v23, :cond_43f

    .line 682
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 683
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 684
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 690
    :goto_3b0
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 691
    move/from16 v0, v33

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 692
    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    if-ltz v3, :cond_3f0

    .line 696
    aget-boolean v11, v29, v3

    if-eqz v11, :cond_457

    const/4 v11, 0x6

    if-eq v2, v11, :cond_457

    const/4 v11, 0x1

    move v15, v11

    .line 697
    :goto_3cf
    if-eqz v15, :cond_45b

    move-object v12, v13

    .line 698
    :goto_3d2
    if-eqz v15, :cond_45e

    move v11, v10

    .line 699
    :goto_3d5
    aget v3, v19, v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    aput v3, v12, v11

    add-int/lit8 v3, v11, 0x1

    aput v31, v12, v3

    add-int/lit8 v3, v11, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v34, v0

    aput v34, v12, v3

    add-int/lit8 v3, v11, 0x3

    aput v31, v12, v3

    .line 700
    if-eqz v15, :cond_461

    add-int/lit8 v10, v10, 0x4

    .line 704
    :cond_3f0
    :goto_3f0
    move/from16 v0, v33

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v11, v0

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v12

    sub-float v12, v3, v11

    .line 705
    aget v3, v18, v2

    add-int/lit8 v3, v3, -0x1

    add-int v11, v6, v22

    mul-int/2addr v3, v11

    add-int v3, v3, v26

    int-to-float v3, v3

    int-to-float v11, v6

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v11, v15

    add-float v15, v3, v11

    .line 706
    aget-boolean v34, v29, v2

    .line 707
    if-eqz v34, :cond_464

    move-object v11, v13

    .line 708
    :goto_411
    if-eqz v34, :cond_466

    move v3, v10

    .line 709
    :goto_414
    aput v12, v11, v3

    add-int/lit8 v35, v3, 0x1

    aput v31, v11, v35

    add-int/lit8 v35, v3, 0x2

    aput v12, v11, v35

    add-int/lit8 v12, v3, 0x3

    aput v15, v11, v12

    .line 710
    add-int/lit8 v12, v3, 0x4

    sub-int v15, v33, v21

    int-to-float v15, v15

    aput v15, v11, v12

    add-int/lit8 v12, v3, 0x5

    aput v31, v11, v12

    add-int/lit8 v12, v3, 0x6

    move/from16 v0, v33

    int-to-float v15, v0

    aput v15, v11, v12

    add-int/lit8 v3, v3, 0x7

    aput v31, v11, v3

    .line 711
    if-eqz v34, :cond_468

    add-int/lit8 v10, v10, 0x8

    move v3, v2

    goto/16 :goto_366

    .line 687
    :cond_43f
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 688
    aget-boolean v11, v29, v2

    if-eqz v11, :cond_453

    const v11, -0x952f01

    :goto_44d
    invoke-virtual {v12, v11}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v11, v12

    goto/16 :goto_3b0

    :cond_453
    const v11, -0xc5a588

    goto :goto_44d

    .line 696
    :cond_457
    const/4 v11, 0x0

    move v15, v11

    goto/16 :goto_3cf

    :cond_45b
    move-object v12, v14

    .line 697
    goto/16 :goto_3d2

    :cond_45e
    move v11, v4

    .line 698
    goto/16 :goto_3d5

    .line 700
    :cond_461
    add-int/lit8 v4, v4, 0x4

    goto :goto_3f0

    :cond_464
    move-object v11, v14

    .line 707
    goto :goto_411

    :cond_466
    move v3, v4

    .line 708
    goto :goto_414

    .line 711
    :cond_468
    add-int/lit8 v4, v4, 0x8

    move v3, v2

    goto/16 :goto_366

    .line 713
    :cond_46d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v2, v4

    :goto_472
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 714
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShipTree;->column(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v17

    .line 715
    aget v4, v32, v17

    add-int/lit8 v9, v4, 0x1

    aput v9, v32, v17

    add-int v9, v6, v22

    mul-int/2addr v4, v9

    add-int v18, v26, v4

    .line 716
    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v9, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    add-float v20, v4, v9

    .line 717
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModUi;->state(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v4

    .line 718
    const/4 v9, 0x2

    if-gt v4, v9, :cond_4ee

    const/4 v9, 0x1

    move v12, v9

    .line 719
    :goto_49f
    if-eqz v12, :cond_4f1

    move-object v11, v13

    .line 720
    :goto_4a2
    if-eqz v12, :cond_4f3

    move v9, v10

    .line 721
    :goto_4a5
    aget v23, v19, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aput v23, v11, v9

    add-int/lit8 v23, v9, 0x1

    aput v20, v11, v23

    add-int/lit8 v23, v9, 0x2

    aget v24, v19, v17

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v11, v23

    add-int/lit8 v9, v9, 0x3

    aput v20, v11, v9

    .line 722
    if-eqz v12, :cond_4f5

    add-int/lit8 v10, v10, 0x4

    move v9, v2

    :goto_4d2
    move-object/from16 v2, p0

    .line 723
    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->card(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IIIILandroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v2

    .line 724
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 725
    aget v4, v19, v17

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 726
    move/from16 v0, v18

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v9

    .line 728
    goto :goto_472

    .line 718
    :cond_4ee
    const/4 v9, 0x0

    move v12, v9

    goto :goto_49f

    :cond_4f1
    move-object v11, v14

    .line 719
    goto :goto_4a2

    :cond_4f3
    move v9, v2

    .line 720
    goto :goto_4a5

    .line 722
    :cond_4f5
    add-int/lit8 v9, v2, 0x4

    goto :goto_4d2

    .line 729
    :cond_4f8
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;

    invoke-static {v13, v10}, Lfr/testudo/spacecorsair/mod/ModShipTree;->trim([FI)[F

    move-result-object v4

    invoke-static {v14, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->trim([FI)[F

    move-result-object v2

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-direct {v3, v0, v4, v2, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;-><init>(Landroid/content/Context;[F[FF)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->canvas:Landroid/widget/FrameLayout;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->hs:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->vs:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_223

    :cond_540
    move v9, v2

    goto/16 :goto_2d3

    :cond_543
    move v2, v3

    goto/16 :goto_16d
.end method

.method static selected()I
    .registers 1

    .prologue
    .line 193
    sget v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    return v0
.end method

.method static shipsOf(IZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 161
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    if-ne v3, p0, :cond_b

    .line 162
    if-eqz p1, :cond_29

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->listed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_29
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_25

    .line 164
    :cond_30
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->ORDER:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    return-object v1
.end method

.method private static shortPrice(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 975
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->price(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 977
    const v1, 0xf4240

    if-lt v0, v1, :cond_5b

    .line 978
    int-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_48

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/economy/Price;->inapp:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u25c6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_7a

    move-result-object v0

    .line 987
    :cond_47
    :goto_47
    return-object v0

    .line 979
    :cond_48
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 980
    :cond_5b
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_75

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 981
    :cond_75
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 984
    :catch_7a
    move-exception v1

    goto :goto_47
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 311
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->attach(Landroid/app/Activity;)V

    .line 312
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->overlay(Landroid/app/Activity;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-result-object v2

    .line 313
    if-nez v2, :cond_a

    .line 319
    :cond_9
    :goto_9
    return-void

    .line 314
    :cond_a
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->built:I

    sget v1, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    if-eq v0, v1, :cond_15

    sget v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->select(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V

    .line 315
    :cond_15
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    .line 316
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->setVisibility(I)V

    .line 317
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 318
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, v2, :cond_9

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->bringToFront()V

    goto :goto_9
.end method

.method private static showInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Landroid/view/View;)V
    .registers 19

    .prologue
    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->a:Landroid/app/Activity;

    .line 1003
    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->dp:F

    .line 1004
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    .line 1005
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_29

    move-object/from16 v2, p2

    .line 1006
    check-cast v2, Landroid/view/ViewGroup;

    .line 1007
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->selCard:Landroid/view/View;

    .line 1010
    :cond_29
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModUi;->state(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    .line 1011
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModShipTree;->secretLocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z

    move-result v6

    .line 1012
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v7

    .line 1013
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v8

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1015
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1016
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1017
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 1018
    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1019
    const v2, -0x8f9f1e6

    const v10, -0x952f01

    const/4 v11, 0x1

    invoke-static {v2, v10, v5, v11}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1022
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1023
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1024
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->thumb(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 1025
    if-eqz v6, :cond_7a

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModShipTree;->GREYED:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1026
    :cond_7a
    const v11, -0xf4e5d2

    const v12, -0xdbc7b1

    const/4 v13, 0x1

    invoke-static {v11, v12, v5, v13}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42800000    # 64.0f

    mul-float/2addr v12, v5

    float-to-int v12, v12

    const/high16 v13, 0x42800000    # 64.0f

    mul-float/2addr v13, v5

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1028
    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v5

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1029
    invoke-virtual {v10, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1031
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1032
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xf

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->rarityColor(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v13

    const/4 v14, 0x1

    invoke-static {v4, v2, v12, v13, v14}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1033
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShips;->role(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    .line 1034
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShips;->className(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  \u00b7  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShips;->techName(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_444

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  \u00b7  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f3
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xa

    const v13, -0x952f01

    const/4 v14, 0x1

    invoke-static {v4, v2, v12, v13, v14}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1035
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1036
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1037
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1038
    invoke-static {v4, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->emblem(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1039
    if-eqz v2, :cond_13f

    .line 1040
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1041
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1042
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1043
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v14, v5

    float-to-int v14, v14

    const/high16 v15, 0x41800000    # 16.0f

    mul-float/2addr v15, v5

    float-to-int v15, v15

    invoke-direct {v2, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1044
    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v14, v5

    float-to-int v14, v14

    iput v14, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1045
    invoke-virtual {v12, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    :cond_13f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v2, 0x7

    if-ge v8, v2, :cond_448

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  \u00b7  "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->standingText(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_166
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0x9

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupColor(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v4, v2, v13, v14, v15}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1048
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1049
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1054
    if-eqz v6, :cond_456

    .line 1055
    if-eqz v7, :cond_44c

    iget-object v2, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v2, :cond_44c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    .line 1056
    :goto_1a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secret ship: reach Honored with the "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_452

    const-string v2, " (listed from Trusted)"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1c1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    const v2, -0x1747b6

    .line 1064
    :goto_1cc
    const/16 v6, 0xb

    const/4 v8, 0x1

    invoke-static {v4, v3, v6, v2, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1065
    const/4 v3, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v6, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1066
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1067
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceTextOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    if-eqz v2, :cond_215

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hull licence: "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_4bd

    const-string v2, "  \u2713"

    :goto_201
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v6, -0x26c1

    const/4 v8, 0x0

    invoke-static {v4, v2, v3, v6, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1071
    :cond_215
    :try_start_215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->price(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v2

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/economy/Price;->inapp:Z

    if-eqz v2, :cond_4c1

    const-string v2, " \u25c6"

    :goto_235
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_23c} :catch_4c5

    move-result-object v2

    .line 1075
    :goto_23d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    const-string v6, "Level "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u00b7  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual/range {p1 .. p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    .line 1078
    instance-of v6, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v6, :cond_2bb

    .line 1079
    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 1080
    const-string v6, "\nSpeed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u00b7  Agility "

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u00b7  Armor "

    .line 1081
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u00b7  Guns "

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    iget v10, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1082
    iget v6, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    if-lez v6, :cond_2bb

    const-string v6, "  \u00b7  Missiles "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1084
    :cond_2bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const v6, -0x4f3b26

    const/4 v8, 0x0

    invoke-static {v4, v2, v3, v6, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1085
    const/4 v3, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v6, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1086
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1087
    if-eqz v7, :cond_323

    iget-object v2, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    if-eqz v2, :cond_323

    .line 1088
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1089
    const/4 v3, 0x2

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1090
    const v3, -0x4f3b26

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#d21aff\'><b>SKILL</b></font> "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1093
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1094
    const/4 v3, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1095
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1098
    :cond_323
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1099
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1100
    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1101
    const-string v2, "Close"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree;->smallButton(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/Button;

    move-result-object v7

    .line 1102
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModShipTree$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$9;-><init>(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_4d0

    const/4 v2, 0x1

    move v3, v2

    .line 1104
    :goto_34c
    if-eqz v3, :cond_4d4

    const-string v2, "OPEN \u25b6"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_354
    invoke-static {v4, v2, v5}, Lfr/testudo/spacecorsair/mod/ModShipTree;->smallButton(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/Button;

    move-result-object v8

    .line 1105
    if-eqz v3, :cond_4dc

    const v2, -0x952f01

    :goto_35d
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1106
    invoke-virtual {v8, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1107
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModShipTree$10;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$10;-><init>(ZLandroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1109
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1110
    invoke-virtual {v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1112
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1113
    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1114
    invoke-virtual {v9, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getWidth()I

    move-result v2

    if-lez v2, :cond_4e1

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getWidth()I

    move-result v2

    .line 1118
    :goto_39a
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getHeight()I

    move-result v3

    if-lez v3, :cond_4ed

    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getHeight()I

    move-result v3

    .line 1119
    :goto_3a4
    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    sub-int v6, v2, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v9, v4, v7}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1122
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    .line 1123
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 1124
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1125
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getLocationInWindow([I)V

    .line 1126
    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x0

    aget v10, v8, v10

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    aget v4, v4, v10

    const/4 v10, 0x1

    aget v8, v8, v10

    sub-int v8, v4, v8

    .line 1127
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    float-to-int v10, v4

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v9

    add-int/2addr v4, v10

    .line 1129
    add-int v11, v4, v6

    sub-int v12, v2, v10

    if-le v11, v12, :cond_404

    sub-int v4, v9, v6

    sub-int/2addr v4, v10

    .line 1130
    :cond_404
    sub-int/2addr v2, v6

    sub-int/2addr v2, v10

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1131
    sub-int v2, v3, v7

    sub-int/2addr v2, v10

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v3, v8, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1133
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1134
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->info:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1138
    return-void

    .line 1034
    :cond_444
    const-string v2, ""

    goto/16 :goto_f3

    .line 1047
    :cond_448
    const-string v2, ""

    goto/16 :goto_166

    .line 1055
    :cond_44c
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModShipTree;->groupName(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1a2

    .line 1056
    :cond_452
    const-string v2, ""

    goto/16 :goto_1c1

    .line 1058
    :cond_456
    if-nez v3, :cond_463

    const-string v2, "You are flying this ship"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x952f01

    goto/16 :goto_1cc

    .line 1059
    :cond_463
    const/4 v2, 0x1

    if-ne v3, v2, :cond_471

    const-string v2, "Owned"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0xbe00ea

    goto/16 :goto_1cc

    .line 1060
    :cond_471
    const/4 v2, 0x2

    if-ne v3, v2, :cond_47e

    const-string v2, "Can buy now"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, -0x26c1

    goto/16 :goto_1cc

    .line 1061
    :cond_47e
    const/4 v2, 0x3

    if-ne v3, v2, :cond_48c

    const-string v2, "Not enough credits"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x1f5fc0

    goto/16 :goto_1cc

    .line 1062
    :cond_48c
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->levelOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_4b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needs level "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v2, -0x9495

    goto/16 :goto_1cc

    .line 1063
    :cond_4b2
    const-string v2, "Locked"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v2, -0x807160

    goto/16 :goto_1cc

    .line 1068
    :cond_4bd
    const-string v2, ""

    goto/16 :goto_201

    .line 1071
    :cond_4c1
    :try_start_4c1
    const-string v2, " cr"
    :try_end_4c3
    .catch Ljava/lang/Exception; {:try_start_4c1 .. :try_end_4c3} :catch_4c5

    goto/16 :goto_235

    .line 1072
    :catch_4c5
    move-exception v2

    .line 1073
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->price(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_23d

    .line 1103
    :cond_4d0
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_34c

    .line 1104
    :cond_4d4
    const-string v2, "LOCKED"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_354

    .line 1105
    :cond_4dc
    const v2, -0x807160

    goto/16 :goto_35d

    .line 1117
    :cond_4e1
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_39a

    .line 1118
    :cond_4ed
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_3a4
.end method

.method public static shown(Landroid/app/Activity;)Z
    .registers 2

    .prologue
    .line 305
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->overlay(Landroid/app/Activity;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static smallButton(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/Button;
    .registers 10

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    .line 1232
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1233
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 1235
    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1236
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1237
    const v1, -0x33f4ddc8    # -3.6473056E7f

    const v2, -0xd3a580

    const/4 v3, 0x1

    invoke-static {v1, v2, p2, v3}, Lfr/testudo/spacecorsair/mod/ModShipTree;->box(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1238
    mul-float v1, v6, p2

    float-to-int v1, v1

    mul-float v2, v4, p2

    float-to-int v2, v2

    mul-float v3, v6, p2

    float-to-int v3, v3

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1239
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setMinWidth(I)V

    .line 1240
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 1241
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setMinHeight(I)V

    .line 1242
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 1243
    return-object v0
.end method

.method static standingText(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 210
    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    const-string v0, "Original hulls \u00b7 no faction standing"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_9
    return-object v0

    .line 211
    :cond_a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_15

    const-string v0, "Gift code hull"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 213
    :cond_15
    :try_start_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->RANK_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_9

    .line 216
    :catch_5b
    move-exception v0

    .line 217
    const-string v0, ""

    goto :goto_9
.end method

.method private static stateColor(I)I
    .registers 2

    .prologue
    .line 845
    if-nez p0, :cond_6

    const v0, -0x952f01

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    const v0, -0xbe00ea

    goto :goto_5

    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    const/16 v0, -0x26c1

    goto :goto_5

    :cond_13
    const v0, -0xb5a798

    goto :goto_5
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .registers 8

    .prologue
    .line 1215
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1216
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1218
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1219
    if-eqz p4, :cond_17

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1220
    :cond_17
    return-object v0
.end method

.method private static thumb(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 5

    .prologue
    .line 247
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 248
    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 249
    :goto_7
    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    :cond_c
    :goto_c
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    return-void

    .line 248
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->art(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    .line 251
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v0

    const/16 v1, 0x100

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->origIcon(Landroid/widget/ImageView;II)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_33

    goto :goto_c

    :catch_33
    move-exception v0

    goto :goto_c
.end method

.method private static trim([FI)[F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 767
    new-array v0, p1, [F

    .line 768
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    return-object v0
.end method
