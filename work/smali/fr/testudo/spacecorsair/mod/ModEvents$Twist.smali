.class final enum Lfr/testudo/spacecorsair/mod/ModEvents$Twist;
.super Ljava/lang/Enum;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Twist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/mod/ModEvents$Twist;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

.field public static final enum BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

.field public static final enum QUIET:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

.field public static final enum REINFORCEMENTS:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

.field public static final enum RIVAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;


# instance fields
.field final line:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;
    .registers 3

    .prologue
    .line 331
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->QUIET:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->REINFORCEMENTS:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->RIVAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 332
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    const-string v1, "QUIET"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->QUIET:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    .line 333
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    const-string v1, "BETRAYAL"

    const/4 v2, 0x1

    const-string v3, "Our guide just turned its guns on us."

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    .line 334
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    const-string v1, "REINFORCEMENTS"

    const/4 v2, 0x2

    const-string v3, "A second flight is inbound."

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->REINFORCEMENTS:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    .line 335
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    const-string v1, "RIVAL"

    const/4 v2, 0x3

    const-string v3, "Another corsair wants the prize. Beat them there."

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->RIVAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    .line 331
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->$values()[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->line:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModEvents$Twist;
    .registers 2

    .prologue
    .line 331
    const-class v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;
    .registers 1

    .prologue
    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    return-object v0
.end method
