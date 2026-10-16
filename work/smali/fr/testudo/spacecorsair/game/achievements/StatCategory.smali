.class public Lfr/testudo/spacecorsair/game/achievements/StatCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public items:[Lfr/testudo/spacecorsair/game/achievements/StatItem;

.field public labelResourceId:I


# direct methods
.method private constructor <init>(I[Lfr/testudo/spacecorsair/game/achievements/StatItem;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lfr/testudo/spacecorsair/game/achievements/StatCategory;->labelResourceId:I

    .line 25
    iput-object p2, p0, Lfr/testudo/spacecorsair/game/achievements/StatCategory;->items:[Lfr/testudo/spacecorsair/game/achievements/StatItem;

    .line 26
    return-void
.end method

.method public static create(I)Lfr/testudo/spacecorsair/game/achievements/StatCategory;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/game/achievements/StatCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/game/achievements/StatCategory;-><init>(I[Lfr/testudo/spacecorsair/game/achievements/StatItem;)V

    return-object v0
.end method


# virtual methods
.method public getLocalisedLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/game/achievements/StatCategory;->labelResourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs withItems([Lfr/testudo/spacecorsair/game/achievements/StatItem;)Lfr/testudo/spacecorsair/game/achievements/StatCategory;
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/achievements/StatCategory;->items:[Lfr/testudo/spacecorsair/game/achievements/StatItem;

    .line 34
    return-object p0
.end method
