.class public Lfr/testudo/spacecorsair/display/RenderElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/display/RenderElement$1;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field backgroundMode:Z

.field public cameraRelative:Z

.field public drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field g:F

.field infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

.field line:Lfr/testudo/spacecorsair/display/Line;

.field pointSize:F

.field position:Lfr/testudo/spacecorsair/engine/Vector2;

.field r:F

.field renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

.field spin:F

.field text:Ljava/lang/String;

.field textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

.field zoomInsensitive:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->NONE:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/display/Line;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/Line;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->line:Lfr/testudo/spacecorsair/display/Line;

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13

    .prologue
    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElement$1;->$SwitchMap$fr$testudo$spacecorsair$display$RenderElementType:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/display/RenderElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 205
    :cond_d
    :goto_d
    return-void

    .line 170
    :pswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v0, :cond_d

    .line 171
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->spin:F

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    iget v5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    iget-boolean v9, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    iget-boolean v10, p0, Lfr/testudo/spacecorsair/display/RenderElement;->backgroundMode:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    goto :goto_d

    .line 176
    :pswitch_31
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    iget v4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    iget-boolean v7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    iget v8, p0, Lfr/testudo/spacecorsair/display/RenderElement;->pointSize:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/display/PointDrawable;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFFFFZF)V

    goto :goto_d

    .line 180
    :pswitch_4a
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->text:Ljava/lang/String;

    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v2, v0

    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v3, v0

    iget v4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    iget-boolean v8, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    iget-object v9, p0, Lfr/testudo/spacecorsair/display/RenderElement;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto :goto_d

    .line 187
    :pswitch_67
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    if-eqz v0, :cond_d

    .line 188
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->drawCameraRelative(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;)V

    goto :goto_d

    .line 193
    :pswitch_73
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->line:Lfr/testudo/spacecorsair/display/Line;

    if-eqz v0, :cond_d

    .line 194
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->line:Lfr/testudo/spacecorsair/display/Line;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    iget v3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    iget v4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/display/Line;->draw(Ljavax/microedition/khronos/opengles/GL10;ZFFFFZ)V

    goto :goto_d

    .line 166
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_31
        :pswitch_4a
        :pswitch_67
        :pswitch_73
    .end packed-switch
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->NONE:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 151
    iput-object v3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 152
    iput-object v3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 153
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x4f000000

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x31000000

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 155
    iput v4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->spin:F

    .line 156
    iput v4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->pointSize:F

    .line 157
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 158
    iput-object v3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->text:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    .line 160
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->backgroundMode:Z

    .line 162
    return-void
.end method

.method public set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;Z)V
    .registers 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 37
    iput-object p1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 38
    iput-object p2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 41
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 42
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 43
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 44
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 45
    return-void
.end method

.method public set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    .registers 20

    .prologue
    .line 78
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFZZ)V

    .line 79
    return-void
.end method

.method public set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFZZ)V
    .registers 12

    .prologue
    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 64
    iput-object p1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 65
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 66
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 67
    iput-boolean p9, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    .line 68
    iput p4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->spin:F

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 70
    iput p5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 71
    iput p6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 72
    iput p7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 73
    iput p8, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 74
    iput-boolean p10, p0, Lfr/testudo/spacecorsair/display/RenderElement;->backgroundMode:Z

    .line 75
    return-void
.end method

.method public set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFZ)V
    .registers 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 50
    iput-object p1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 52
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 53
    iput-boolean p6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    .line 54
    iput p4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->spin:F

    .line 55
    iput p5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 57
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 58
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 59
    iput v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 60
    return-void
.end method

.method public set(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 88
    iput-object p2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 90
    return-void
.end method

.method public setAsBackground(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    .registers 20

    .prologue
    .line 82
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFZZ)V

    .line 83
    return-void
.end method

.method public setAsPoint(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    .registers 9

    .prologue
    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 109
    iput p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 110
    iput p5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 111
    iput p4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 112
    iput p6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 113
    iput p7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->pointSize:F

    .line 114
    iput-boolean p2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    .line 116
    return-void
.end method

.method public setAsText(FFLjava/lang/String;ZFFFFLfr/testudo/spacecorsair/textengine/TextSize;)V
    .registers 11

    .prologue
    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 137
    iput p5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 138
    iput p7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 139
    iput p6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 140
    iput p8, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 141
    iput-object p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->text:Ljava/lang/String;

    .line 142
    iput-boolean p4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 143
    iput-object p9, p0, Lfr/testudo/spacecorsair/display/RenderElement;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    .line 145
    return-void
.end method

.method public setAsText(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;ZFFFFLfr/testudo/spacecorsair/textengine/TextSize;)V
    .registers 10

    .prologue
    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 123
    iput p4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 124
    iput p6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 125
    iput p5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 126
    iput p7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 127
    iput-object p2, p0, Lfr/testudo/spacecorsair/display/RenderElement;->text:Ljava/lang/String;

    .line 128
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 129
    iput-object p8, p0, Lfr/testudo/spacecorsair/display/RenderElement;->textSize:Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->zoomInsensitive:Z

    .line 131
    return-void
.end method

.method public setLine(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/display/RenderElementType;->LINE:Lfr/testudo/spacecorsair/display/RenderElementType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->renderType:Lfr/testudo/spacecorsair/display/RenderElementType;

    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/RenderElement;->line:Lfr/testudo/spacecorsair/display/Line;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/display/Line;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 96
    iput-object v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 97
    iput-object v1, p0, Lfr/testudo/spacecorsair/display/RenderElement;->infoBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 98
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    .line 99
    iput p5, p0, Lfr/testudo/spacecorsair/display/RenderElement;->r:F

    .line 100
    iput p7, p0, Lfr/testudo/spacecorsair/display/RenderElement;->b:F

    .line 101
    iput p6, p0, Lfr/testudo/spacecorsair/display/RenderElement;->g:F

    .line 102
    iput p4, p0, Lfr/testudo/spacecorsair/display/RenderElement;->a:F

    .line 103
    return-void
.end method
