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

.field mission:Ljava/lang/String;

.field n:I

.field recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

.field solo:Z

.field spin:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->mission:Ljava/lang/String;

    return-void
.end method
