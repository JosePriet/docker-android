.class public Lfr/testudo/spacecorsair/display/GoldTextMessage;
.super Lfr/testudo/spacecorsair/display/text/TextMessage;
.source "SourceFile"


# static fields
.field public static lifetime:I


# instance fields
.field public curLifetime:I

.field public textSize:Lfr/testudo/spacecorsair/textengine/TextSize;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/16 v0, 0xbb8

    sput v0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->lifetime:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/text/TextMessage;-><init>()V

    .line 21
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/display/text/TextMessage;->doPhysic(J)V

    .line 54
    iget v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    .line 55
    iget v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1f

    .line 56
    iget v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->a:F

    .line 58
    iget v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    if-gtz v0, :cond_1f

    .line 59
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->remove()V

    .line 62
    :cond_1f
    return-void
.end method

.method public init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/display/text/TextMessage;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/text/TextMessage;

    .line 26
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 27
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 28
    const v0, 0x3ebcbcbd

    iput v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->r:F

    .line 29
    const v0, 0x3f56d6d7

    iput v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->g:F

    .line 30
    iput v4, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->b:F

    .line 31
    iput v4, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->a:F

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 34
    sget v0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->lifetime:I

    iput v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    .line 35
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->value:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->r:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->g:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->b:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->a:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 67
    return-void
.end method

.method public withLifeTimeInSec(I)Lfr/testudo/spacecorsair/display/GoldTextMessage;
    .registers 3

    .prologue
    .line 45
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->curLifetime:I

    .line 46
    return-object p0
.end method

.method public withTextSize(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/display/GoldTextMessage;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lfr/testudo/spacecorsair/display/GoldTextMessage;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 41
    return-object p0
.end method
