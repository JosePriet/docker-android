.class final Lfr/testudo/spacecorsair/mod/ModV34$Sh;
.super Ljava/lang/Object;
.source "ModV34.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModV34;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sh"
.end annotation


# instance fields
.field cap:F

.field cur:F

.field hit:J

.field last:J

.field rate:F


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0xbb8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->hit:J

    return-void
.end method
