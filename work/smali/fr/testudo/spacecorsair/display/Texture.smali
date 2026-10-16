.class public Lfr/testudo/spacecorsair/display/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public loaded:Z

.field public name:I

.field public resource:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/Texture;->reset()V

    .line 14
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 17
    iput v1, p0, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    .line 18
    iput v1, p0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 19
    iput v0, p0, Lfr/testudo/spacecorsair/display/Texture;->width:I

    .line 20
    iput v0, p0, Lfr/testudo/spacecorsair/display/Texture;->height:I

    .line 21
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 22
    return-void
.end method
