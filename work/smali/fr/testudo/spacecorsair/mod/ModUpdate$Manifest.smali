.class final Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;
.super Ljava/lang/Object;
.source "ModUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Manifest"
.end annotation


# instance fields
.field apkBuild:I

.field apkSha:Ljava/lang/String;

.field apkSize:J

.field apkUrl:Ljava/lang/String;

.field apkVersion:Ljava/lang/String;

.field final packs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;",
            ">;"
        }
    .end annotation
.end field

.field final patches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;",
            ">;"
        }
    .end annotation
.end field

.field final revoked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field seq:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkBuild:I

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->patches:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->packs:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->revoked:Ljava/util/Set;

    return-void
.end method
