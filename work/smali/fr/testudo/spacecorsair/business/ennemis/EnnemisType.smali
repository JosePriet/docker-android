.class public final enum Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public static final enum UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "DEFENSOR"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "ALBATROS"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "TOURELLE"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "TAUPE"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "FRELON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "ROCKET_TOURELLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "UFO_ALIEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "ALIEN_RAT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "ALIEN_BLATTE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const-string v1, "ALIEN_TOURELLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->$VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->$VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    return-object v0
.end method
