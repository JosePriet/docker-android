.class public Lfr/testudo/spacecorsair/engine/IntegerStringReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ELEMENT_SIZE:I = 0x2710

.field public static final NUMBERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 14
    const/16 v0, 0x2710

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 19
    sget-object v1, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 21
    :cond_28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
