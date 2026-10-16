.class final Lfr/testudo/spacecorsair/mod/ModArt$Art;
.super Lfr/testudo/spacecorsair/display/Drawable;
.source "ModArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Art"
.end annotation


# instance fields
.field final turret:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V
    .registers 4

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 74
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/mod/ModArt$Art;->turret:Z

    .line 75
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V
    .registers 13

    .prologue
    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Art;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 80
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_b

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 81
    :cond_b
    invoke-super/range {p0 .. p10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 82
    return-void
.end method
