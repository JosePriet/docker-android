.class final Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;
.super Ljava/lang/Object;
.source "ModLanCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLanCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decl"
.end annotation


# instance fields
.field laser:Ljava/lang/String;

.field level:I

.field maxHull:F

.field maxShield:F

.field missile:Ljava/lang/String;

.field refit:I

.field shield:Ljava/lang/String;

.field ship:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method same(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z
    .registers 4

    .prologue
    .line 49
    if-eqz p1, :cond_48

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    if-ne v0, v1, :cond_48

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->refit:I

    if-ne v0, v1, :cond_48

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxHull:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_48

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->maxShield:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->laser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->missile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->shield:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method
