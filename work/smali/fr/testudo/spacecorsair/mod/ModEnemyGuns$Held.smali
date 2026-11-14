.class final Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;
.super Ljava/lang/Object;
.source "ModEnemyGuns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEnemyGuns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Held"
.end annotation


# instance fields
.field b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

.field left:J

.field ox:F

.field oy:F

.field s:Lfr/testudo/spacecorsair/business/Element;

.field size:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
