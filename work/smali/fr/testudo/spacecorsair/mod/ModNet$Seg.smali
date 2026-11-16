.class final Lfr/testudo/spacecorsair/mod/ModNet$Seg;
.super Ljava/lang/Object;
.source "ModNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Seg"
.end annotation


# instance fields
.field data:[B

.field firstAt:J

.field off:I

.field sacked:Z

.field sentAt:J

.field tries:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$1;)V
    .registers 2

    .prologue
    .line 560
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModNet$Seg;-><init>()V

    return-void
.end method
