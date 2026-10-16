.class final enum Lcom/google/gson/stream/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/stream/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/gson/stream/b;

.field public static final enum b:Lcom/google/gson/stream/b;

.field public static final enum c:Lcom/google/gson/stream/b;

.field public static final enum d:Lcom/google/gson/stream/b;

.field public static final enum e:Lcom/google/gson/stream/b;

.field public static final enum f:Lcom/google/gson/stream/b;

.field public static final enum g:Lcom/google/gson/stream/b;

.field public static final enum h:Lcom/google/gson/stream/b;

.field private static final synthetic i:[Lcom/google/gson/stream/b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->a:Lcom/google/gson/stream/b;

    .line 37
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->b:Lcom/google/gson/stream/b;

    .line 43
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->c:Lcom/google/gson/stream/b;

    .line 49
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->d:Lcom/google/gson/stream/b;

    .line 55
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->e:Lcom/google/gson/stream/b;

    .line 60
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->f:Lcom/google/gson/stream/b;

    .line 65
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->g:Lcom/google/gson/stream/b;

    .line 70
    new-instance v0, Lcom/google/gson/stream/b;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/b;->h:Lcom/google/gson/stream/b;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/gson/stream/b;

    sget-object v1, Lcom/google/gson/stream/b;->a:Lcom/google/gson/stream/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gson/stream/b;->b:Lcom/google/gson/stream/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gson/stream/b;->c:Lcom/google/gson/stream/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gson/stream/b;->d:Lcom/google/gson/stream/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gson/stream/b;->e:Lcom/google/gson/stream/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gson/stream/b;->f:Lcom/google/gson/stream/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gson/stream/b;->g:Lcom/google/gson/stream/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gson/stream/b;->h:Lcom/google/gson/stream/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/stream/b;->i:[Lcom/google/gson/stream/b;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/stream/b;
    .registers 2

    .prologue
    .line 25
    const-class v0, Lcom/google/gson/stream/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/stream/b;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/stream/b;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/gson/stream/b;->i:[Lcom/google/gson/stream/b;

    invoke-virtual {v0}, [Lcom/google/gson/stream/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/stream/b;

    return-object v0
.end method
