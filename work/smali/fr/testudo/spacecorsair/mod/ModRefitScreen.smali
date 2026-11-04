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
