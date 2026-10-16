.class public Landroid/support/v4/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/b/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/b/h;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/b/h;->b:Z

    .line 46
    if-nez p1, :cond_13

    .line 47
    sget-object v0, Landroid/support/v4/b/c;->a:[I

    iput-object v0, p0, Landroid/support/v4/b/h;->c:[I

    .line 48
    sget-object v0, Landroid/support/v4/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;

    .line 54
    :goto_10
    iput v2, p0, Landroid/support/v4/b/h;->e:I

    .line 55
    return-void

    .line 50
    :cond_13
    invoke-static {p1}, Landroid/support/v4/b/c;->a(I)I

    move-result v0

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/b/h;->c:[I

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private d()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v3, p0, Landroid/support/v4/b/h;->e:I

    .line 143
    iget-object v4, p0, Landroid/support/v4/b/h;->c:[I

    .line 144
    iget-object v5, p0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 146
    :goto_9
    if-ge v1, v3, :cond_21

    .line 147
    aget-object v6, v5, v1

    .line 149
    sget-object v7, Landroid/support/v4/b/h;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    .line 150
    if-eq v1, v0, :cond_1c

    .line 151
    aget v7, v4, v1

    aput v7, v4, v0

    .line 152
    aput-object v6, v5, v0

    .line 153
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 156
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 160
    :cond_21
    iput-boolean v2, p0, Landroid/support/v4/b/h;->b:Z

    .line 161
    iput v0, p0, Landroid/support/v4/b/h;->e:I

    .line 164
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .prologue
    .line 236
    iget-boolean v0, p0, Landroid/support/v4/b/h;->b:Z

    if-eqz v0, :cond_7

    .line 237
    invoke-direct {p0}, Landroid/support/v4/b/h;->d()V

    .line 240
    :cond_7
    iget-object v0, p0, Landroid/support/v4/b/h;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public a()Landroid/support/v4/b/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/b/h",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/h;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    .line 63
    :try_start_7
    iget-object v1, p0, Landroid/support/v4/b/h;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v4/b/h;->c:[I

    .line 64
    iget-object v1, p0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1f

    .line 68
    :goto_1b
    return-object v0

    .line 65
    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_1f
    move-exception v1

    goto :goto_1b
.end method

.method public b()I
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Landroid/support/v4/b/h;->b:Z

    if-eqz v0, :cond_7

    .line 224
    invoke-direct {p0}, Landroid/support/v4/b/h;->d()V

    .line 227
    :cond_7
    iget v0, p0, Landroid/support/v4/b/h;->e:I

    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Landroid/support/v4/b/h;->b:Z

    if-eqz v0, :cond_7

    .line 251
    invoke-direct {p0}, Landroid/support/v4/b/h;->d()V

    .line 254
    :cond_7
    iget-object v0, p0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 309
    iget v2, p0, Landroid/support/v4/b/h;->e:I

    .line 310
    iget-object v3, p0, Landroid/support/v4/b/h;->d:[Ljava/lang/Object;

    move v0, v1

    .line 312
    :goto_6
    if-ge v0, v2, :cond_e

    .line 313
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 316
    :cond_e
    iput v1, p0, Landroid/support/v4/b/h;->e:I

    .line 317
    iput-boolean v1, p0, Landroid/support/v4/b/h;->b:Z

    .line 318
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v4/b/h;->a()Landroid/support/v4/b/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    if-gtz v0, :cond_9

    .line 364
    const-string v0, "{}"

    .line 384
    :goto_8
    return-object v0

    .line 367
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/b/h;->e:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Landroid/support/v4/b/h;->e:I

    if-ge v0, v2, :cond_41

    .line 370
    if-lez v0, :cond_23

    .line 371
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/v4/b/h;->a(I)I

    move-result v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0, v0}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v2

    .line 377
    if-eq v2, p0, :cond_3b

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 380
    :cond_3b
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 383
    :cond_41
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
