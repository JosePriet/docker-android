.class public final Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;
.super Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;-><init>()V

    .line 172
    return-void
.end method

.method private afterSetContentView_()V
    .registers 4

    .prologue
    const v2, 0x7f0a0053

    const v1, 0x7f0a0052

    .line 43
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtFullLife:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtLaserDps:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentShieldRegenRate:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtLaserLevel:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->shieldSpecTable:Landroid/widget/TableLayout;

    .line 48
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtItemDescription:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtLaserDamage:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileLifeTime:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtItemWeight:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->missileSpecTable:Landroid/widget/TableLayout;

    .line 53
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentLaserActxtCurrentency:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentShieldRegenTime:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtActuel:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileAgility:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->btnEquip:Landroid/widget/Button;

    .line 58
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileLevel:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentLaserDps:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileDamage:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtAlterations:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileQuantity:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtShieldRegenerationTime:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileLifeTime:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtShieldLevel:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentLaserSpeed:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtLaserSpeed:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->layAlterations:Landroid/view/ViewGroup;

    .line 69
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtItemQuality:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->btnUse:Landroid/widget/Button;

    .line 71
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileDamage:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileLevel:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtLaserReload:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->laserSpecTable:Landroid/widget/TableLayout;

    .line 75
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtItemName:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtShieldCapacity:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileRangeDamage:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileResistance:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentShieldCapacity:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtTimeUp:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->imgItem:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileRangeDamage:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentLaserReload:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtLaserAccuracy:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtAlterationsTitle:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtAlreadyStored:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentMissileAgility:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtShieldRegenerationRate:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileQuantity:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtCurrentLaserDamage:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->txtMissileResistance:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_229

    .line 95
    new-instance v1, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_229
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_237

    .line 110
    new-instance v1, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$2;-><init>(Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_237
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->bindUI()V

    .line 123
    return-void
.end method

.method private cast_(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 149
    return-object p1
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 37
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->injectExtras_()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    return-void
.end method

.method private injectExtras_()V
    .registers 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_20

    .line 156
    const-string v1, "objecttype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 158
    :try_start_12
    const-string v1, "objecttype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->cast_(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->objectTypeAsString:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_20} :catch_21

    .line 164
    :cond_20
    :goto_20
    return-void

    .line 159
    :catch_21
    move-exception v0

    .line 160
    const-string v1, "InventoryDetailActivity_"

    const-string v2, "Could not cast extra to expected type, the field is left to its default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 144
    new-instance v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 31
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->setContentView(I)V

    .line 34
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->setContentView(I)V

    .line 128
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->afterSetContentView_()V

    .line 129
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->setContentView(Landroid/view/View;)V

    .line 140
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->afterSetContentView_()V

    .line 141
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->afterSetContentView_()V

    .line 135
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 169
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity_;->injectExtras_()V

    .line 170
    return-void
.end method
