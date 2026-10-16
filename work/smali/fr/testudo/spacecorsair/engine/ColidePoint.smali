.class public Lfr/testudo/spacecorsair/engine/ColidePoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public point:Lfr/testudo/spacecorsair/engine/Vector2;

.field public size:I


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lfr/testudo/spacecorsair/engine/ColidePoint;->size:I

    .line 18
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 19
    return-void
.end method
