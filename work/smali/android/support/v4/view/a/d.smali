.class public Landroid/support/v4/view/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/a/d$c;,
        Landroid/support/v4/view/a/d$b;,
        Landroid/support/v4/view/a/d$d;,
        Landroid/support/v4/view/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/view/a/d$a;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    .line 140
    new-instance v0, Landroid/support/v4/view/a/d$c;

    invoke-direct {v0}, Landroid/support/v4/view/a/d$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/d;->a:Landroid/support/v4/view/a/d$a;

    .line 146
    :goto_d
    return-void

    .line 141
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 142
    new-instance v0, Landroid/support/v4/view/a/d$b;

    invoke-direct {v0}, Landroid/support/v4/view/a/d$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/d;->a:Landroid/support/v4/view/a/d$a;

    goto :goto_d

    .line 144
    :cond_1c
    new-instance v0, Landroid/support/v4/view/a/d$d;

    invoke-direct {v0}, Landroid/support/v4/view/a/d$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/d;->a:Landroid/support/v4/view/a/d$a;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Landroid/support/v4/view/a/d;->a:Landroid/support/v4/view/a/d$a;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/d$a;->a(Landroid/support/v4/view/a/d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/d;->b:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/support/v4/view/a/d;->b:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/view/a/a;
    .registers 3

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v4/view/a/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/support/v4/view/a/a;
    .registers 3

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method
