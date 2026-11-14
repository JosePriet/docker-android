.class Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$10;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->buildStats(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/PlayerInfo;Lfr/testudo/spacecorsair/business/player/Inventory;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    .registers 2

    .prologue
    .line 934
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$10;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 936
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$10;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRefitScreen;->show(Landroid/app/Activity;)V

    .line 937
    return-void
.end method
