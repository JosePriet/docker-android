.class final Lfr/testudo/spacecorsair/mod/ModLan$InFrame;
.super Ljava/lang/Object;
.source "ModLan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InFrame"
.end annotation


# instance fields
.field at:J

.field dmg:F

.field guestWins:I

.field hostWins:I

.field hx:F

.field hy:F

.field idx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lean:Z

.field level:Ljava/lang/String;

.field marks:[B

.field marksN:I

.field mission:Ljava/lang/String;

.field missionDone:Z

.field n:I

.field phx:F

.field phy:F

.field pvp:Z

.field recordIndex:Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;

.field recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

.field round:I

.field span:J

.field xp:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method indexRecords()V
    .registers 4

    .prologue
    .line 1229
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->PERF_FRAME_INDEX:Z

    if-eqz v0, :cond_10

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;-><init>([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recordIndex:Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;

    .line 1231
    :goto_f
    return-void

    .line 1230
    :cond_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->index([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    goto :goto_f
.end method
