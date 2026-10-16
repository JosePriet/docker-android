.class public final enum Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/engine/GameThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraTouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

.field public static final enum MOOVE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

.field public static final enum NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

.field public static final enum PINCH:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1226
    new-instance v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    new-instance v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    const-string v1, "MOOVE"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->MOOVE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    new-instance v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    const-string v1, "PINCH"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->PINCH:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1225
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->MOOVE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->PINCH:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->$VALUES:[Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

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
    .line 1225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;
    .registers 2

    .prologue
    .line 1225
    const-class v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;
    .registers 1

    .prologue
    .line 1225
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->$VALUES:[Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    return-object v0
.end method
