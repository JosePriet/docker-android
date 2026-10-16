.class public final enum Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

.field public static final enum simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

.field public static final enum standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;


# instance fields
.field public gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    const-string v1, "standard"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    const-string v1, "simpleGaz"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->$VALUES:[Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;
    .registers 2

    .prologue
    .line 13
    const-class v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->$VALUES:[Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    return-object v0
.end method
