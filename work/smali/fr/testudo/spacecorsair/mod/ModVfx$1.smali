.class Lfr/testudo/spacecorsair/mod/ModVfx$1;
.super Ljava/lang/Object;
.source "ModVfx.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModVfx;->settingsRow(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5

    .prologue
    .line 109
    const v0, 0x5c100

    sub-int v0, p2, v0

    .line 110
    if-ltz v0, :cond_d

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->setQuality(I)V

    .line 111
    :cond_d
    return-void
.end method
