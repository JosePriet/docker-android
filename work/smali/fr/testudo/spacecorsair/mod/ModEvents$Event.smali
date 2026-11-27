.class final Lfr/testudo/spacecorsair/mod/ModEvents$Event;
.super Ljava/lang/Object;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# instance fields
.field final context:Lfr/testudo/spacecorsair/mod/ModEvents$Context;

.field credits:I

.field deadline:I

.field final encounterLevel:I

.field item:Ljava/lang/String;

.field lootTier:Ljava/lang/String;

.field final objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field parts:I

.field final seed:J

.field standing:I

.field final stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModEvents$Stop;",
            ">;"
        }
    .end annotation
.end field

.field final twist:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;


# direct methods
.method constructor <init>(JLfr/testudo/spacecorsair/mod/ModEvents$Context;Lfr/testudo/spacecorsair/mod/ModEvents$Objective;Lfr/testudo/spacecorsair/mod/ModEvents$Twist;)V
    .registers 7

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->item:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->lootTier:Ljava/lang/String;

    .line 442
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->seed:J

    .line 443
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->context:Lfr/testudo/spacecorsair/mod/ModEvents$Context;

    .line 444
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 445
    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->twist:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    .line 446
    iget v0, p3, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->encounterLevel:I

    .line 447
    return-void
.end method
