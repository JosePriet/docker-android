.class Lfr/testudo/spacecorsair/mod/ModComms$3;
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
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 197
    :try_start_1
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$700()I

    move-result v0

    .line 198
    const-string v1, "comms_click"

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc8

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 199
    const/4 v1, 0x1

    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModComms;->access$802(Z)Z

    .line 200
    if-ltz v0, :cond_58

    .line 201
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 202
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_62

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANK_DOWN:[[Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_32
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1770

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    :cond_58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showMissionMenu()V

    .line 209
    :goto_61
    return-void

    .line 202
    :cond_62
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER_LINE:[Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_32

    .line 206
    :catch_6f
    move-exception v0

    goto :goto_61
.end method
