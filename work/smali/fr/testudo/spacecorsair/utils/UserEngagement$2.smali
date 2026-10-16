.class final Lfr/testudo/spacecorsair/utils/UserEngagement$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/UserEngagement$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .prologue
    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/UserEngagement$2;->val$context:Landroid/content/Context;

    const-string v1, "rate_dontshowagain"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 145
    return-void
.end method
