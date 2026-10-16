.class public final enum Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum $JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum GOTO_ALEAT_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum GOTO_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum HYPERSPACE_JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum IDLE_DURING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum IDLE_FOREVER:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public static final enum RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "IDLE_FOREVER"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_FOREVER:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "IDLE_DURING"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_DURING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "GOTO_POINT"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->GOTO_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "GOTO_ALEAT_POINT"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->GOTO_ALEAT_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "ATTACK_TARGET"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "HYPERSPACE_JUMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->HYPERSPACE_JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "$JUMP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->$JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    const-string v1, "RANDOM_CIVIL_ATTACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_FOREVER:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_DURING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->GOTO_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->GOTO_ALEAT_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->HYPERSPACE_JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->$JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->$VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;
    .registers 2

    .prologue
    .line 34
    const-class v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->$VALUES:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    return-object v0
.end method
