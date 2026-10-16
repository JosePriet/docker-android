.class final enum Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/gifts/GiftInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

.field public static final enum ACHIEVEMENT:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

.field public static final enum IN_APP_MONEY:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

.field public static final enum MONEY:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

.field public static final enum OBJECT:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

.field public static final enum XP:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    const-string v1, "MONEY"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->MONEY:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->OBJECT:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    const-string v1, "IN_APP_MONEY"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->IN_APP_MONEY:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    const-string v1, "ACHIEVEMENT"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->ACHIEVEMENT:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    const-string v1, "XP"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->XP:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    sget-object v1, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->MONEY:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->OBJECT:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->IN_APP_MONEY:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->ACHIEVEMENT:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->XP:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->$VALUES:[Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;
    .registers 2

    .prologue
    .line 24
    const-class v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->$VALUES:[Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    return-object v0
.end method
