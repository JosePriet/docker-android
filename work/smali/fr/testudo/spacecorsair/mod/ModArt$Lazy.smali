.class final Lfr/testudo/spacecorsair/mod/ModArt$Lazy;
.super Lfr/testudo/spacecorsair/display/Texture;
.source "ModArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lazy"
.end annotation


# instance fields
.field final asset:Ljava/lang/String;

.field failedGen:I

.field final fallback:I

.field lastUse:I

.field pending:Landroid/graphics/Bitmap;

.field queued:Z

.field volatile resident:Z

.field wasResident:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 62
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/Texture;-><init>()V

    .line 57
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->lastUse:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    .line 63
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    .line 64
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->fallback:I

    .line 65
    return-void
.end method
