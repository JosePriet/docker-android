.class public Lfr/testudo/spacecorsair/business/gifts/GiftRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static transient dirty:Z


# instance fields
.field public activatedGifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->dirty:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->activatedGifts:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lfr/testudo/spacecorsair/business/gifts/GiftRepository;
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addGift(Lfr/testudo/spacecorsair/business/gifts/GiftInstance;)V
    .registers 4

    .prologue
    .line 23
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->activatedGifts:Ljava/util/List;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->getOriginalValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->dirty:Z

    .line 26
    return-void
.end method

.method public hasBeenUsed(Lfr/testudo/spacecorsair/business/gifts/GiftInstance;)Z
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->activatedGifts:Ljava/util/List;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->getOriginalValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
