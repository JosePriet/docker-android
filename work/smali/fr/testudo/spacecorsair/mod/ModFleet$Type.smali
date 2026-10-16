.class Lfr/testudo/spacecorsair/mod/ModFleet$Type;
.super Ljava/lang/Object;
.source "ModFleet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFleet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type"
.end annotation


# instance fields
.field final ai:I

.field final art:Ljava/lang/String;

.field final dmg:F

.field final hp:F

.field final kretari:Z

.field final minLevel:I

.field final name:Ljava/lang/String;

.field final size:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIFFZ)V
    .registers 9

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->art:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->name:Ljava/lang/String;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->ai:I

    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    iput p6, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->hp:F

    iput p7, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->dmg:F

    iput-boolean p8, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->kretari:Z

    .line 43
    return-void
.end method
