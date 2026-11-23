.class public final enum Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;
.super Ljava/lang/Enum;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

.field public static final enum ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

.field public static final enum KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

.field public static final enum POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

.field public static final enum STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

.field public static final enum TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;


# direct methods
.method private static synthetic $values()[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;
    .registers 3

    .prologue
    .line 328
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 328
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    const-string v1, "ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    const-string v1, "TIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    const-string v1, "STANDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    const-string v1, "KILLS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    const-string v1, "POLICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->$values()[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

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
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;
    .registers 2

    .prologue
    .line 328
    const-class v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;
    .registers 1

    .prologue
    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    return-object v0
.end method
