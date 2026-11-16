.class Lfr/testudo/spacecorsair/mod/ModLan$8;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 1372
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    return-void
.end method
