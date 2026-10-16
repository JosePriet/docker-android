.class public Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

.field public scanTimeInSec:I


# direct methods
.method public constructor <init>(ILfr/testudo/spacecorsair/business/world/civil/ScanListener;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;->scanTimeInSec:I

    .line 16
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    .line 17
    return-void
.end method
