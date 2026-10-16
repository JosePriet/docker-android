.class public final enum Lfr/testudo/spacecorsair/billing/InAppObject;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/billing/InAppObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum CREDIT_ALIEN_10:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum CREDIT_ALIEN_25:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum CREDIT_ALIEN_5:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum CREDIT_STANDARD_1M:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum CREDIT_STANDARD_250K:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum CREDIT_STANDARD_500K:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum REMOVE_ADDS:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum TEST_CANCELLED:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum TEST_PURCHASE:Lfr/testudo/spacecorsair/billing/InAppObject;

.field public static final enum TEST_REFUNDED:Lfr/testudo/spacecorsair/billing/InAppObject;


# instance fields
.field public consumable:Z

.field public sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "CREDIT_ALIEN_5"

    const-string v2, "alien_credit_5"

    invoke-direct {v0, v1, v4, v2}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_5:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "CREDIT_ALIEN_10"

    const-string v2, "alien_credit_10"

    invoke-direct {v0, v1, v5, v2}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_10:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "CREDIT_ALIEN_25"

    const-string v2, "alien_credit_25"

    invoke-direct {v0, v1, v6, v2}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_25:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "REMOVE_ADDS"

    const-string v2, "remove_adds"

    invoke-direct {v0, v1, v7, v2, v4}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->REMOVE_ADDS:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "CREDIT_STANDARD_250K"

    const-string v2, "credit_250"

    invoke-direct {v0, v1, v8, v2}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_250K:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "CREDIT_STANDARD_500K"

    const/4 v2, 0x5

    const-string v3, "credit_500"

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_500K:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "CREDIT_STANDARD_1M"

    const/4 v2, 0x6

    const-string v3, "credit_1000"

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_1M:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "TEST_PURCHASE"

    const/4 v2, 0x7

    const-string v3, "android.test.purchased"

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->TEST_PURCHASE:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "TEST_CANCELLED"

    const/16 v2, 0x8

    const-string v3, "android.test.canceled"

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->TEST_CANCELLED:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    const-string v1, "TEST_REFUNDED"

    const/16 v2, 0x9

    const-string v3, "android.test.refunded"

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->TEST_REFUNDED:Lfr/testudo/spacecorsair/billing/InAppObject;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/billing/InAppObject;

    sget-object v1, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_5:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_10:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_25:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/billing/InAppObject;->REMOVE_ADDS:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v1, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_250K:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_500K:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_1M:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/billing/InAppObject;->TEST_PURCHASE:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/billing/InAppObject;->TEST_CANCELLED:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfr/testudo/spacecorsair/billing/InAppObject;->TEST_REFUNDED:Lfr/testudo/spacecorsair/billing/InAppObject;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->$VALUES:[Lfr/testudo/spacecorsair/billing/InAppObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/billing/InAppObject;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lfr/testudo/spacecorsair/billing/InAppObject;->sku:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lfr/testudo/spacecorsair/billing/InAppObject;->consumable:Z

    .line 34
    return-void
.end method

.method public static getBySku(Ljava/lang/String;)Lfr/testudo/spacecorsair/billing/InAppObject;
    .registers 6

    .prologue
    .line 41
    invoke-static {}, Lfr/testudo/spacecorsair/billing/InAppObject;->values()[Lfr/testudo/spacecorsair/billing/InAppObject;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 42
    iget-object v4, v0, Lfr/testudo/spacecorsair/billing/InAppObject;->sku:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46
    :goto_13
    return-object v0

    .line 41
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 46
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getCreditByAmount(I)Lfr/testudo/spacecorsair/billing/InAppObject;
    .registers 2

    .prologue
    .line 65
    sparse-switch p0, :sswitch_data_e

    .line 76
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 67
    :sswitch_5
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_250K:Lfr/testudo/spacecorsair/billing/InAppObject;

    goto :goto_4

    .line 70
    :sswitch_8
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_500K:Lfr/testudo/spacecorsair/billing/InAppObject;

    goto :goto_4

    .line 73
    :sswitch_b
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_STANDARD_1M:Lfr/testudo/spacecorsair/billing/InAppObject;

    goto :goto_4

    .line 65
    :sswitch_data_e
    .sparse-switch
        0x3d090 -> :sswitch_5
        0x7a120 -> :sswitch_8
        0xf4240 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getInappCreditByAmount(I)Lfr/testudo/spacecorsair/billing/InAppObject;
    .registers 2

    .prologue
    .line 50
    sparse-switch p0, :sswitch_data_e

    .line 61
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 52
    :sswitch_5
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_5:Lfr/testudo/spacecorsair/billing/InAppObject;

    goto :goto_4

    .line 55
    :sswitch_8
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_10:Lfr/testudo/spacecorsair/billing/InAppObject;

    goto :goto_4

    .line 58
    :sswitch_b
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->CREDIT_ALIEN_25:Lfr/testudo/spacecorsair/billing/InAppObject;

    goto :goto_4

    .line 50
    :sswitch_data_e
    .sparse-switch
        0x5 -> :sswitch_5
        0xa -> :sswitch_8
        0x19 -> :sswitch_b
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/billing/InAppObject;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/billing/InAppObject;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/billing/InAppObject;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/billing/InAppObject;->$VALUES:[Lfr/testudo/spacecorsair/billing/InAppObject;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/billing/InAppObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/billing/InAppObject;

    return-object v0
.end method
