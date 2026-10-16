.class public Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public txtStatName:Landroid/widget/TextView;

.field public txtStatValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public bind(Lfr/testudo/spacecorsair/game/achievements/StatItem;)V
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;->txtStatName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->getLoalisedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;->txtStatValue:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/achievements/StatItem;->value()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
