.class public final enum Lfr/testudo/spacecorsair/business/world/RadarDrawType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/world/RadarDrawType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field public static final enum POINT:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field public static final enum PORTAL:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field public static final enum STATION_M:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field public static final enum STATION_P:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field public static final enum STATION_S:Lfr/testudo/spacecorsair/business/world/RadarDrawType;


# instance fields
.field public isPoint:Z

.field public radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->POINT:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    const-string v1, "STATION_S"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_S:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    const-string v1, "STATION_M"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_M:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    const-string v1, "STATION_P"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_P:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    const-string v1, "PORTAL"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->PORTAL:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->POINT:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_S:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_M:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_P:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->PORTAL:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->$VALUES:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->isPoint:Z

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->isPoint:Z

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/RadarDrawType;
    .registers 2

    .prologue
    .line 14
    const-class v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/world/RadarDrawType;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->$VALUES:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/world/RadarDrawType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    return-object v0
.end method


# virtual methods
.method public setRadarDrawables(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    invoke-direct {v0, p1, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 31
    return-void
.end method
