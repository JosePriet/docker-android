.class final Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;
.super Ljava/lang/Object;
.source "ModCapitals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModCapitals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Faction"
.end annotation


# instance fields
.field final b:F

.field final g:F

.field final hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field final key:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final r:F

.field final ship:Ljava/lang/String;

.field final turretTex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V
    .registers 10

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iput p6, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iput p7, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_turret_cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->turretTex:Ljava/lang/String;

    .line 38
    return-void
.end method
