.class public Lfr/testudo/spacecorsair/activity/BuyInapp;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# static fields
.field public static final INTENT_BILLING:I = 0x2


# instance fields
.field textBuyArgument:Landroid/widget/TextView;

.field textBuyArgumentCredit:Landroid/widget/TextView;

.field textCurAmount:Landroid/widget/TextView;

.field textCurRegular:Landroid/widget/TextView;

.field txtGift:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public LayBuy10()V
    .registers 2

    .prologue
    .line 139
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->buyInappCredit(I)V

    .line 140
    return-void
.end method

.method public LayBuy1000()V
    .registers 2

    .prologue
    .line 159
    const v0, 0xf4240

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->buyGameCredit(I)V

    .line 160
    return-void
.end method

.method public LayBuy25()V
    .registers 2

    .prologue
    .line 144
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->buyInappCredit(I)V

    .line 145
    return-void
.end method

.method public LayBuy250()V
    .registers 2

    .prologue
    .line 149
    const v0, 0x3d090

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->buyGameCredit(I)V

    .line 150
    return-void
.end method

.method public LayBuy5()V
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->buyInappCredit(I)V

    .line 135
    return-void
.end method

.method public LayBuy500()V
    .registers 2

    .prologue
    .line 154
    const v0, 0x7a120

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->buyGameCredit(I)V

    .line 155
    return-void
.end method

.method public bind()V
    .registers 7

    .prologue
    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    .line 57
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->textBuyArgument:Landroid/widget/TextView;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f0702cb

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->textBuyArgumentCredit:Landroid/widget/TextView;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f0702cc

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->textCurAmount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCreditInApp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->textCurRegular:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->addRemoved:Z

    if-eqz v0, :cond_69

    .line 70
    :cond_69
    return-void
.end method

.method public buyGameCredit(I)V
    .registers 5

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/SpaceCorsairApplication;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 111
    invoke-static {p1}, Lfr/testudo/spacecorsair/billing/InAppObject;->getCreditByAmount(I)Lfr/testudo/spacecorsair/billing/InAppObject;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/SpaceCorsairApplication;

    iget-object v1, v1, Lfr/testudo/spacecorsair/billing/InAppObject;->sku:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->buyItem(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 121
    :goto_1c
    return-void

    .line 115
    :cond_1d
    const v0, 0x7f070325

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 118
    :catch_29
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public buyInappCredit(I)V
    .registers 5

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/SpaceCorsairApplication;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 95
    invoke-static {p1}, Lfr/testudo/spacecorsair/billing/InAppObject;->getInappCreditByAmount(I)Lfr/testudo/spacecorsair/billing/InAppObject;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/SpaceCorsairApplication;

    iget-object v1, v1, Lfr/testudo/spacecorsair/billing/InAppObject;->sku:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->buyItem(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 105
    :goto_1c
    return-void

    .line 99
    :cond_1d
    const v0, 0x7f070325

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 102
    :catch_29
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public getGift()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->txtGift:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->giftHook(Landroid/app/Activity;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :mod_gift_continue
    return-void
    :mod_gift_continue

    .line 75
    :try_start_1
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->txtGift:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->ofEncrypted(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftInstance;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->isValid()Z

    move-result v1

    if-nez v1, :cond_21

    .line 79
    const v0, 0x7f0702b6

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    :goto_20
    return-void

    .line 83
    :cond_21
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->apply()V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f0702b7

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_52

    goto :goto_20

    .line 86
    :catch_52
    move-exception v0

    .line 87
    const v0, 0x7f0702b5

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method protected onActivityResult(ILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/SpaceCorsairApplication;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->handleActivityResult(IILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;->bind()V

    .line 130
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 49
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onPause()V

    .line 50
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/BuyInapp;->overridePendingTransition(II)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 40
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/BuyInapp;->overridePendingTransition(II)V

    .line 41
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onResume()V

    .line 42
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 166
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 168
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 172
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 174
    return-void
.end method
