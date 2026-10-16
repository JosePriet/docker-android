.class public Lcom/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a$a;
    }
.end annotation


# direct methods
.method public static a()I
    .registers 2

    .prologue
    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    const/4 v0, 0x3

    .line 27
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcom/a/a/a/a$a;->a()I

    move-result v0

    goto :goto_b
.end method
