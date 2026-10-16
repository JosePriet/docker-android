.class public Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/SettingsActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder_"
.end annotation


# instance fields
.field private context_:Landroid/content/Context;

.field private final intent_:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    .line 220
    return-void
.end method


# virtual methods
.method public flags(I)Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public startForResult(I)V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 237
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    :goto_f
    return-void

    .line 239
    :cond_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method
