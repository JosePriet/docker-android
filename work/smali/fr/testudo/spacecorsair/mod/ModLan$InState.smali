.class final Lfr/testudo/spacecorsair/mod/ModLan$InState;
.super Ljava/lang/Object;
.source "ModLan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InState"
.end annotation


# instance fields
.field alive:Z

.field at:J

.field defeats:I

.field halfH:F

.field halfW:F

.field level:Ljava/lang/String;

.field life:F

.field maxLife:F

.field n:I

.field recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

.field spin:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
