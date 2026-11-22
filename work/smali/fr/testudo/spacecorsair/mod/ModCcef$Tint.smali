.class final Lfr/testudo/spacecorsair/mod/ModCcef$Tint;
.super Lfr/testudo/spacecorsair/display/Drawable;
.source "ModCcef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModCcef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tint"
.end annotation


# instance fields
.field final base:Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 6

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 735
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v0, :cond_18

    move v0, v1

    :goto_9
    iget-object v3, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v3, :cond_1d

    :goto_d
    invoke-direct {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {p0, v2, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 736
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;->base:Lfr/testudo/spacecorsair/display/Drawable;

    .line 737
    return-void

    .line 735
    :cond_18
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto :goto_9

    :cond_1d
    iget-object v1, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_d
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V
    .registers 22

    .prologue
    .line 741
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;->base:Lfr/testudo/spacecorsair/display/Drawable;

    const v1, 0x3f0f5c29    # 0.56f

    mul-float v6, p6, v1

    const v1, 0x3f1eb852    # 0.62f

    mul-float v7, p7, v1

    const v1, 0x3f2e147b    # 0.68f

    mul-float v8, p8, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 742
    return-void
.end method
