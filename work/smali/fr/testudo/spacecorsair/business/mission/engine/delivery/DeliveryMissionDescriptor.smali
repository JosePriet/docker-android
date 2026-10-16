.class public Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enemiesName:Ljava/lang/String;

.field public maxAttackingPlayerEnemis:I

.field phases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->enemiesName:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->phases:Ljava/util/List;

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->maxAttackingPlayerEnemis:I

    return-void
.end method


# virtual methods
.method public addPhase(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;)Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->phases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-object p0
.end method
