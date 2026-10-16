.class public final enum Lfr/testudo/spacecorsair/textengine/TextSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/textengine/TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/textengine/TextSize;

.field public static final enum LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

.field public static final enum LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

.field public static final enum MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

.field public static final enum NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

.field public static final enum NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

.field public static final enum SCORE:Lfr/testudo/spacecorsair/textengine/TextSize;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    const-string v1, "LITTLE"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/textengine/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/textengine/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    const-string v1, "NORMALPLUS"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/textengine/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/textengine/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/textengine/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    new-instance v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    const-string v1, "SCORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/textengine/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->SCORE:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/textengine/TextSize;

    sget-object v1, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/textengine/TextSize;->SCORE:Lfr/testudo/spacecorsair/textengine/TextSize;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->$VALUES:[Lfr/testudo/spacecorsair/textengine/TextSize;

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

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/textengine/TextSize;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/textengine/TextSize;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/textengine/TextSize;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->$VALUES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/textengine/TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/textengine/TextSize;

    return-object v0
.end method
