.class public final Lfr/testudo/spacecorsair/mod/ModRefitScreen;
.super Ljava/lang/Object;
.source "ModRefitScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;
    }
.end annotation


# static fields
.field static final BG:I = -0xfaf4ea

.field static final CYAN:I = -0x952f01

.field static final DIM:I = -0x807160

.field static final EDGE:I = -0xdbc7b1

.field static final GOLD:I = -0x1747b6

.field static final LEVEL_MS:J = 0x960L

.field static final PANEL:I = -0x33f5e9da

.field static final RED:I = -0x9495

.field static final ROMAN:[Ljava/lang/String;

.field static final STAGE_MS:J = 0x11f8L

.field static final TEXT:I = -0x4f3b26

.field static final WHITE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "I"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "II"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "III"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IV"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "V"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->ROMAN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static num(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 946
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_11} :catch_13

    move-result v0

    goto :goto_9

    :catch_13
    move-exception v1

    goto :goto_9
.end method

.method static numL(Ljava/lang/String;)J
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 950
    if-eqz p0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_12} :catch_14

    move-result-wide v0

    goto :goto_a

    :catch_14
    move-exception v2

    goto :goto_a
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->summary()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_c
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRefitPanel;->show(Landroid/app/Activity;)V

    .line 47
    :goto_f
    return-void

    .line 40
    :cond_10
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;

    invoke-direct {v1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen$Bay;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_f

    .line 44
    :catch_24
    move-exception v0

    .line 45
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRefitPanel;->show(Landroid/app/Activity;)V

    goto :goto_f
.end method
