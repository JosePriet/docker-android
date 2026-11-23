.class final Lfr/testudo/spacecorsair/mod/ModEvents$Stop;
.super Ljava/lang/Object;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stop"
.end annotation


# instance fields
.field final action:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

.field final actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field final art:Ljava/lang/String;

.field final count:I

.field final distance:I

.field final holdSeconds:I

.field final required:I


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V
    .registers 8

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->action:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    .line 413
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    .line 414
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->art:Ljava/lang/String;

    .line 415
    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->distance:I

    .line 416
    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->count:I

    .line 417
    iput p6, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->required:I

    .line 418
    iput p7, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->holdSeconds:I

    .line 419
    return-void
.end method
