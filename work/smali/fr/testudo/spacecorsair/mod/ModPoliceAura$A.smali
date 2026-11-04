.class final Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;
.super Ljava/lang/Object;
.source "ModPoliceAura.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModPoliceAura;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "A"
.end annotation


# instance fields
.field final art:Ljava/lang/String;

.field final fac:I

.field nextSpawn:J

.field final size:F


# direct methods
.method constructor <init>(Ljava/lang/String;IF)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->art:Ljava/lang/String;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->fac:I

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModPoliceAura$A;->size:F

    return-void
.end method
