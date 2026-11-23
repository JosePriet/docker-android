.class final Lfr/testudo/spacecorsair/mod/ModQol$Options;
.super Ljava/lang/Object;
.source "ModQol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModQol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Options"
.end annotation


# instance fields
.field private final store:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModQol$Options;->store:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModQol$Options;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModQol$Options;->store:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModQol$Options;->store:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method getInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModQol$Options;->store:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
