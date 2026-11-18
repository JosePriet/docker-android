.class final Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;
.super Ljava/lang/Object;
.source "ModLanCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLanCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Limits"
.end annotation


# instance fields
.field doom:Z

.field dps:F

.field dpsPvp:F

.field exact:Z

.field expDps:F

.field expShot:F

.field flags:I

.field hull:F

.field regen:F

.field shield:F

.field shot:F

.field shotPvp:F

.field shotsPerSec:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
