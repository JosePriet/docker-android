.class public final enum Lfr/testudo/spacecorsair/display/Background$BackImage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/display/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/display/Background$BackImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public static final enum Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public static final enum Blue:Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public static final enum Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public static final enum Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public static final enum Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public static final enum Red:Lfr/testudo/spacecorsair/display/Background$BackImage;


# instance fields
.field texture:Lfr/testudo/spacecorsair/display/Texture;

.field public textureBuffer:Ljava/nio/FloatBuffer;

.field public texture_size:I

.field public vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    const-string v1, "Black_default"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/display/Background$BackImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 49
    new-instance v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    const-string v1, "Brown"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/display/Background$BackImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 50
    new-instance v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    const-string v1, "Red"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/display/Background$BackImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Red:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 51
    new-instance v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    const-string v1, "Blue"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/display/Background$BackImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Blue:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    const-string v1, "Purple"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/display/Background$BackImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 53
    new-instance v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    const-string v1, "Nebuleuse"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Background$BackImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Background$BackImage;

    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Red:Lfr/testudo/spacecorsair/display/Background$BackImage;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Blue:Lfr/testudo/spacecorsair/display/Background$BackImage;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/display/Background$BackImage;->Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/display/Background$BackImage;->Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->$VALUES:[Lfr/testudo/spacecorsair/display/Background$BackImage;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static random()Lfr/testudo/spacecorsair/display/Background$BackImage;
    .registers 4

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->values()[Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 64
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->values()[Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Background$BackImage;
    .registers 2

    .prologue
    .line 46
    const-class v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Background$BackImage;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/display/Background$BackImage;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->$VALUES:[Lfr/testudo/spacecorsair/display/Background$BackImage;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/display/Background$BackImage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/display/Background$BackImage;

    return-object v0
.end method


# virtual methods
.method public setTexture(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    iput-object p2, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 72
    const/16 v0, 0xc

    new-array v0, v0, [F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    aput v1, v0, v4

    const/4 v1, 0x1

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 78
    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    iput v1, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->texture_size:I

    .line 80
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 83
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    # getter for: Lfr/testudo/spacecorsair/display/Background;->texture_stars:[F
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background;->access$000()[F

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->textureBuffer:Ljava/nio/FloatBuffer;

    # getter for: Lfr/testudo/spacecorsair/display/Background;->texture_stars:[F
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background;->access$000()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background$BackImage;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    return-void
.end method
