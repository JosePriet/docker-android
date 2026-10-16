.class public Lfr/testudo/spacecorsair/display/text/XpTextMessage;
.super Lfr/testudo/spacecorsair/display/text/TextMessage;
.source "SourceFile"


# static fields
.field public static lifetime:I


# instance fields
.field public curLifetime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/16 v0, 0xbb8

    sput v0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->lifetime:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/text/TextMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/display/text/TextMessage;->doPhysic(J)V

    .line 35
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->curLifetime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->curLifetime:I

    .line 36
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->curLifetime:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1f

    .line 37
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->curLifetime:I

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->a:F

    .line 39
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->curLifetime:I

    if-gtz v0, :cond_1f

    .line 40
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->remove()V

    .line 43
    :cond_1f
    return-void
.end method

.method public init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/XpTextMessage;
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 18
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/display/text/TextMessage;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/text/TextMessage;

    .line 19
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v4

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 20
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v4

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 21
    iput v5, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->r:F

    .line 22
    const v0, 0x3f63d70a    # 0.89f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->g:F

    .line 23
    const v0, 0x3e947ae1    # 0.29f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->b:F

    .line 24
    iput v5, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->a:F

    .line 26
    sget v0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->lifetime:I

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->curLifetime:I

    .line 27
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->value:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->r:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->g:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->b:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 48
    return-void
.end method
