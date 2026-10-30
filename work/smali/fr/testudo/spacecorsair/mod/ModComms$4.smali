.class Lfr/testudo/spacecorsair/mod/ModComms$4;
.super Ljava/lang/Object;
.source "ModComms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModComms;->attachUi(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 265
    :try_start_1
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$900()I

    move-result v0

    .line 266
    const-string v1, "comms_click"

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc8

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 267
    if-ltz v0, :cond_60

    .line 269
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 270
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_61

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANK_DOWN:[[Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b> \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailHas:Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, ""

    :goto_53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    # invokes: Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModComms;->access$1100(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 276
    :cond_60
    :goto_60
    return-void

    .line 270
    :cond_61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER_LINE:[Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 271
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<br><i>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "No missions for you right now."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</i>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8c} :catch_8e

    move-result-object v0

    goto :goto_53

    .line 273
    :catch_8e
    move-exception v0

    goto :goto_60
.end method
