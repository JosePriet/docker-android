.class final Lfr/testudo/spacecorsair/mod/ModCaps$Profile;
.super Ljava/lang/Object;
.source "ModCaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModCaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profile"
.end annotation


# instance fields
.field ab:F

.field ag:F

.field alien:Z

.field ar:F

.field big:Z

.field cls:I

.field data:I

.field eb:F

.field eg:F

.field er:F

.field flames:Z

.field hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

.field spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

.field titan:Z

.field top:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    .line 22
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    .line 23
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    .line 24
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    return-void
.end method
