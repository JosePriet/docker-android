.class final Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;
.super Ljava/lang/Object;
.source "ModStationGuns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModStationGuns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Post"
.end annotation


# instance fields
.field aimLeft:J

.field ang:[F

.field art:Ljava/lang/String;

.field f:I

.field guns:[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

.field kick:[I

.field logged:Z

.field mounts:[F

.field range:F

.field reload:[I

.field shot:F

.field side:F

.field st:Lfr/testudo/spacecorsair/business/world/station/Station;

.field target:Lfr/testudo/spacecorsair/business/Element;

.field tex:Ljava/lang/String;

.field ts:F


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    return-void
.end method
