.class final Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;
.super Ljava/lang/Object;
.source "ModCapitals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModCapitals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cap"
.end annotation


# instance fields
.field final anchor:Lfr/testudo/spacecorsair/engine/Vector2;

.field data:I

.field f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

.field hostileAnnounced:Z

.field mounts:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method
