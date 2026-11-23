.class final Lfr/testudo/spacecorsair/mod/ModEvents$Context;
.super Ljava/lang/Object;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Context"
.end annotation


# instance fields
.field final faction:Ljava/lang/String;

.field final heat:I

.field final kills:I

.field final level:I

.field final owner:Ljava/lang/String;

.field final policeTier:I

.field final seconds:I

.field final standing:I

.field final trigger:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIILfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V
    .registers 12

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    if-ltz p1, :cond_2b

    const/16 v0, 0x28

    if-gt p1, v0, :cond_2b

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2b

    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2b

    const/16 v0, -0x64

    if-lt p4, v0, :cond_2b

    const/16 v0, 0x64

    if-gt p4, v0, :cond_2b

    if-ltz p5, :cond_2b

    const/4 v0, -0x1

    if-lt p6, v0, :cond_2b

    const/4 v0, 0x6

    if-gt p6, v0, :cond_2b

    if-ltz p7, :cond_2b

    if-ltz p8, :cond_2b

    if-nez p9, :cond_33

    .line 381
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sector context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_33
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    .line 383
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->faction:Ljava/lang/String;

    .line 384
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->owner:Ljava/lang/String;

    .line 385
    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->standing:I

    .line 386
    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->heat:I

    .line 387
    iput p6, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->policeTier:I

    .line 388
    iput p7, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->seconds:I

    .line 389
    iput p8, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->kills:I

    .line 390
    iput-object p9, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->trigger:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    .line 391
    return-void
.end method


# virtual methods
.method ready()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 394
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->trigger:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 399
    :cond_b
    :goto_b
    return v0

    .line 395
    :pswitch_c
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->seconds:I

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_b

    move v0, v1

    goto :goto_b

    .line 396
    :pswitch_14
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->standing:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_b

    move v0, v1

    goto :goto_b

    .line 397
    :pswitch_1c
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->kills:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_b

    move v0, v1

    goto :goto_b

    .line 398
    :pswitch_23
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->heat:I

    if-lez v2, :cond_2b

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->policeTier:I

    if-gez v2, :cond_b

    :cond_2b
    move v0, v1

    goto :goto_b

    .line 394
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_23
    .end packed-switch
.end method
