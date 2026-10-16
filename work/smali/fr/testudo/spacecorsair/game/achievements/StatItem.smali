.class public Lfr/testudo/spacecorsair/game/achievements/StatItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final descId:I

.field private final relatedAchivement:Lfr/testudo/spacecorsair/game/achievements/Achievement;


# direct methods
.method private constructor <init>(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/achievements/StatItem;->relatedAchivement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    .line 20
    iput p2, p0, Lfr/testudo/spacecorsair/game/achievements/StatItem;->descId:I

    .line 21
    return-void
.end method

.method public static of(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)Lfr/testudo/spacecorsair/game/achievements/StatItem;
    .registers 3

    .prologue
    .line 24
    new-instance v0, Lfr/testudo/spacecorsair/game/achievements/StatItem;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/game/achievements/StatItem;-><init>(Lfr/testudo/spacecorsair/game/achievements/Achievement;I)V

    return-object v0
.end method


# virtual methods
.method public getLoalisedLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/game/achievements/StatItem;->descId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()J
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/achievements/StatItem;->relatedAchivement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    return-wide v0
.end method
