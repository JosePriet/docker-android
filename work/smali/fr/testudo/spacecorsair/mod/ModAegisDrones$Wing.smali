.class final Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;
.super Ljava/lang/Object;
.source "ModAegisDrones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModAegisDrones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wing"
.end annotation


# instance fields
.field final drones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field next:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    .line 36
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->next:J

    return-void
.end method
