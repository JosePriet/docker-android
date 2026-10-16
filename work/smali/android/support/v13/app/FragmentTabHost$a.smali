.class final Landroid/support/v13/app/FragmentTabHost$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private d:Landroid/app/Fragment;


# direct methods
.method static synthetic a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$a;->d:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v13/app/FragmentTabHost$a;Landroid/app/Fragment;)Landroid/app/Fragment;
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost$a;->d:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/Class;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$a;->c:Landroid/os/Bundle;

    return-object v0
.end method
