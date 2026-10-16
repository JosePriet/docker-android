.class public final enum Lfr/testudo/spacecorsair/display/RenderElementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/display/RenderElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/display/RenderElementType;

.field public static final enum INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

.field public static final enum LINE:Lfr/testudo/spacecorsair/display/RenderElementType;

.field public static final enum NONE:Lfr/testudo/spacecorsair/display/RenderElementType;

.field public static final enum POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

.field public static final enum SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

.field public static final enum TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    const-string v1, "SPRITE"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/display/RenderElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/display/RenderElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/display/RenderElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/display/RenderElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->NONE:Lfr/testudo/spacecorsair/display/RenderElementType;

    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    const-string v1, "INFOBAR"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/display/RenderElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    const-string v1, "LINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/RenderElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->LINE:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/RenderElementType;

    sget-object v1, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/display/RenderElementType;->NONE:Lfr/testudo/spacecorsair/display/RenderElementType;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/display/RenderElementType;->LINE:Lfr/testudo/spacecorsair/display/RenderElementType;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->$VALUES:[Lfr/testudo/spacecorsair/display/RenderElementType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/RenderElementType;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/RenderElementType;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/display/RenderElementType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->$VALUES:[Lfr/testudo/spacecorsair/display/RenderElementType;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/display/RenderElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/display/RenderElementType;

    return-object v0
.end method
