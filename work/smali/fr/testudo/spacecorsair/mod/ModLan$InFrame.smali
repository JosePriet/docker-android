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

.field recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

.field round:I

.field span:J

.field xp:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
