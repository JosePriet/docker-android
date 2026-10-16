.class public abstract Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fetchOrCreateObjectToFindWhenInZone()Lfr/testudo/spacecorsair/business/Element;
.end method

.method public abstract onFirstTimeEnterInTargetArea()V
.end method

.method public abstract onObjectFound(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
.end method

.method public abstract onObjectPickedUp(Lfr/testudo/spacecorsair/business/Element;)V
.end method
