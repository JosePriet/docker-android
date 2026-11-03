.class final Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;
.super Lfr/testudo/spacecorsair/display/Drawable;
.source "ModPoliceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModPoliceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tinted"
.end annotation


# instance fields
.field final base:Lfr/testudo/spacecorsair/display/Drawable;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 112
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    .line 113
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V
    .registers 22

    .prologue
    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v6, p6, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v7, p7, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v8, p8, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 118
    return-void
.end method
