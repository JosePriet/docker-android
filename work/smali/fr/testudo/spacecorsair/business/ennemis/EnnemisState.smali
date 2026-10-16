.class public final enum Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

.field public static final enum CHASING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

.field public static final enum IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

.field public static final enum TARGET_ONCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

.field public static final enum TARGET_PATROUILLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

.field public static final enum TARGET_RANDOM:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    .line 6
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    const-string v1, "CHASING"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->CHASING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    .line 7
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    const-string v1, "TARGET_ONCE"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->TARGET_ONCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    .line 8
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    const-string v1, "TARGET_RANDOM"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->TARGET_RANDOM:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    .line 9
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    const-string v1, "TARGET_PATROUILLE"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->TARGET_PATROUILLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->CHASING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->TARGET_ONCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->TARGET_RANDOM:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->TARGET_PATROUILLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->$VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->$VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    return-object v0
.end method
