.class public Lfr/testudo/spacecorsair/display/text/LootTextMessage;
.super Lfr/testudo/spacecorsair/display/text/TextMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/display/text/LootTextMessage$1;
    }
.end annotation


# static fields
.field public static lifetime:I


# instance fields
.field public curLifetime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/16 v0, 0xbb8

    sput v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->lifetime:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/text/TextMessage;-><init>()V

    .line 41
    return-void
.end method

.method public static getLifetime(Lfr/testudo/spacecorsair/business/loot/LootRarety;)I
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$LootRarety:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 41
    const/16 v0, 0x7d0

    :goto_d
    return v0

    .line 32
    :pswitch_e
    const/16 v0, 0xbb8

    goto :goto_d

    .line 34
    :pswitch_11
    const/16 v0, 0x1388

    goto :goto_d

    .line 36
    :pswitch_14
    const/16 v0, 0x1770

    goto :goto_d

    .line 38
    :pswitch_17
    const/16 v0, 0x2710

    goto :goto_d

    .line 29
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/display/text/TextMessage;->doPhysic(J)V

    .line 91
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    .line 92
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1f

    .line 93
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->a:F

    .line 95
    iget v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    if-gtz v0, :cond_1f

    .line 96
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->remove()V

    .line 99
    :cond_1f
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/text/LootTextMessage;
    .registers 14

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v3, -0x3f800000    # -4.0f

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/display/text/TextMessage;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/text/TextMessage;

    .line 48
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v1, v4

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    if-eqz p3, :cond_5e

    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v1, v4

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 53
    :cond_5e
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v4

    sub-float/2addr v1, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v4

    sub-float/2addr v2, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-float v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 58
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v6

    iput v1, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->r:F

    .line 59
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v6

    iput v1, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->g:F

    .line 60
    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->b:F

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->a:F

    .line 64
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->getLifetime(Lfr/testudo/spacecorsair/business/loot/LootRarety;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    .line 65
    return-object p0
.end method

.method public init(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/LootTextMessage;
    .registers 13

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLootLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/display/text/TextMessage;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/text/TextMessage;

    .line 70
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v4

    sub-float/2addr v1, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v4

    sub-float/2addr v2, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-float v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 76
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v6

    iput v1, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->r:F

    .line 77
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v6

    iput v1, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->g:F

    .line 78
    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->b:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->a:F

    .line 82
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->getLifetime(Lfr/testudo/spacecorsair/business/loot/LootRarety;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    .line 83
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->value:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->r:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->g:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->b:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 104
    return-void
.end method
