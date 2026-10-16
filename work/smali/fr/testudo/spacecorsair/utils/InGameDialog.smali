.class public Lfr/testudo/spacecorsair/utils/InGameDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static scrollTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirm(Landroid/content/Context;ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .registers 8

    .prologue
    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/activity/Main;->scrollForceMoga:I

    .line 122
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030011

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 125
    const v0, 0x7f030007

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 127
    const v0, 0x7f0a0030

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    const v0, 0x7f0a0031

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v0, 0x7f0a0034

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v0, 0x7f0a0033

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 139
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/InGameDialog;->makeItScrollableByMoga(Landroid/view/View;)V

    .line 141
    const v0, 0x7f0a0036

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 142
    new-instance v1, Lfr/testudo/spacecorsair/utils/InGameDialog$4;

    invoke-direct {v1, v2, p3}, Lfr/testudo/spacecorsair/utils/InGameDialog$4;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v1, 0x7f0a0037

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 153
    new-instance v3, Lfr/testudo/spacecorsair/utils/InGameDialog$5;

    invoke-direct {v3, v2, p2}, Lfr/testudo/spacecorsair/utils/InGameDialog$5;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v3, :cond_9b

    .line 164
    const v3, 0x7f07039f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 165
    const v0, 0x7f0703a1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 173
    :goto_8f
    new-instance v0, Lfr/testudo/spacecorsair/utils/InGameDialog$6;

    invoke-direct {v0, p3}, Lfr/testudo/spacecorsair/utils/InGameDialog$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 183
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 185
    return-object v2

    .line 168
    :cond_9b
    const v3, 0x7f0703a0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 169
    const v0, 0x7f07027d

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_8f
.end method

.method public static makeItScrollableByMoga(Landroid/view/View;)V
    .registers 7

    .prologue
    const-wide/16 v2, 0x32

    .line 93
    if-nez p0, :cond_5

    .line 114
    :goto_4
    return-void

    .line 97
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/utils/InGameDialog;->scrollTimer:Ljava/util/Timer;

    .line 98
    new-instance v1, Lfr/testudo/spacecorsair/utils/InGameDialog$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/InGameDialog$3;-><init>(Landroid/view/View;)V

    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/utils/InGameDialog;->scrollTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method public static show(Landroid/content/Context;IIILjava/lang/Runnable;)Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p2, v1, p4}, Lfr/testudo/spacecorsair/utils/InGameDialog;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .registers 8

    .prologue
    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/activity/Main;->scrollForceMoga:I

    .line 37
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030011

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f030008

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 42
    const v0, 0x7f0a0030

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 45
    const v0, 0x7f0a0031

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0a0034

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f0a0033

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 53
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/InGameDialog;->makeItScrollableByMoga(Landroid/view/View;)V

    .line 55
    const v0, 0x7f0a0036

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v2, :cond_78

    .line 58
    const v2, 0x7f07039e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 63
    :goto_64
    new-instance v2, Lfr/testudo/spacecorsair/utils/InGameDialog$1;

    invoke-direct {v2, v1, p4}, Lfr/testudo/spacecorsair/utils/InGameDialog$1;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/utils/InGameDialog$2;

    invoke-direct {v0, p4}, Lfr/testudo/spacecorsair/utils/InGameDialog$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 83
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 86
    return-object v1

    .line 60
    :cond_78
    const v2, 0x7f070357

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_64
.end method
