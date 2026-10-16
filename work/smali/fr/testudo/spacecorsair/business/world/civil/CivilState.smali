.class public final enum Lfr/testudo/spacecorsair/business/world/civil/CivilState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/world/civil/CivilState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/world/civil/CivilState;

.field public static final enum ACTIVITY:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

.field public static final enum ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

.field public static final enum ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

.field public static final enum IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ACTIVITY:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    const-string v1, "ATTACK_TARGET"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    const-string v1, "ESCAPE"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ACTIVITY:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->$VALUES:[Lfr/testudo/spacecorsair/business/world/civil/CivilState;

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

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/civil/CivilState;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/world/civil/CivilState;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->$VALUES:[Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/world/civil/CivilState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    return-object v0
.end method
