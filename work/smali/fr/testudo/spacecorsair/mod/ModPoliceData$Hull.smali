.class final Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;
.super Ljava/lang/Object;
.source "ModPoliceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModPoliceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hull"
.end annotation


# instance fields
.field final ai:I

.field final art:Ljava/lang/String;

.field final cls:I

.field final size:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->cls:I

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceData;->AI:[I

    aget v0, v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->ai:I

    return-void
.end method
