.class final Landroid/support/v4/app/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/a$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/r$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/content/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/s$a;

.field final synthetic o:Landroid/support/v4/app/s;


# virtual methods
.method a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->i:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->j:Z

    if-eqz v0, :cond_c

    .line 239
    iput-boolean v3, p0, Landroid/support/v4/app/s$a;->h:Z

    .line 267
    :cond_b
    :goto_b
    return-void

    .line 243
    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    if-nez v0, :cond_b

    .line 248
    iput-boolean v3, p0, Landroid/support/v4/app/s$a;->h:Z

    .line 250
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    if-eqz v0, :cond_42

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    iget v1, p0, Landroid/support/v4/app/s$a;->a:I

    iget-object v2, p0, Landroid/support/v4/app/s$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/r$a;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    .line 254
    :cond_42
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_b

    .line 255
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_7d
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->m:Z

    if-nez v0, :cond_8a

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    iget v1, p0, Landroid/support/v4/app/s$a;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/a;->a(ILandroid/support/v4/content/a$a;)V

    .line 263
    iput-boolean v3, p0, Landroid/support/v4/app/s$a;->m:Z

    .line 265
    :cond_8a
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->a()V

    goto/16 :goto_b
.end method

.method a(Landroid/support/v4/content/a;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/a",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    if-eqz v0, :cond_5e

    .line 419
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_6f

    .line 421
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    move-object v1, v0

    .line 425
    :goto_1e
    :try_start_1e
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_48

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_48
    iget-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/r$a;->a(Landroid/support/v4/content/a;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_5f

    .line 429
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_5b

    .line 430
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    iput-object v1, v0, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    .line 433
    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->f:Z

    .line 435
    :cond_5e
    return-void

    .line 429
    :catchall_5f
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_6e

    .line 430
    iget-object v2, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    iput-object v1, v2, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    :cond_6e
    throw v0

    :cond_6f
    move-object v1, v0

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/s$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 452
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/s$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_4d

    .line 456
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 458
    :cond_4d
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->e:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->f:Z

    if-eqz v0, :cond_79

    .line 459
    :cond_55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 460
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 461
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/s$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 463
    :cond_79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 467
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 468
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/s$a;->n:Landroid/support/v4/app/s$a;

    if-eqz v0, :cond_e9

    .line 470
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Landroid/support/v4/app/s$a;->n:Landroid/support/v4/app/s$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Landroid/support/v4/app/s$a;->n:Landroid/support/v4/app/s$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/s$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 474
    :cond_e9
    return-void
.end method

.method b()V
    .registers 4

    .prologue
    .line 270
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->i:Z

    .line 272
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->j:Z

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    .line 275
    return-void
.end method

.method c()V
    .registers 4

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->i:Z

    if-eqz v0, :cond_30

    .line 279
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->i:Z

    .line 281
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/s$a;->j:Z

    if-eq v0, v1, :cond_30

    .line 282
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    if-nez v0, :cond_30

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/app/s$a;->e()V

    .line 291
    :cond_30
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->e:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->k:Z

    if-nez v0, :cond_43

    .line 298
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    iget-object v1, p0, Landroid/support/v4/app/s$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/s$a;->a(Landroid/support/v4/content/a;Ljava/lang/Object;)V

    .line 300
    :cond_43
    return-void
.end method

.method d()V
    .registers 3

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->h:Z

    if-eqz v0, :cond_16

    .line 304
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->k:Z

    if-eqz v0, :cond_16

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->k:Z

    .line 306
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->e:Z

    if-eqz v0, :cond_16

    .line 307
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    iget-object v1, p0, Landroid/support/v4/app/s$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/s$a;->a(Landroid/support/v4/content/a;Ljava/lang/Object;)V

    .line 311
    :cond_16
    return-void
.end method

.method e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1d
    iput-boolean v3, p0, Landroid/support/v4/app/s$a;->h:Z

    .line 316
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->i:Z

    if-nez v0, :cond_37

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->m:Z

    if-eqz v0, :cond_37

    .line 319
    iput-boolean v3, p0, Landroid/support/v4/app/s$a;->m:Z

    .line 320
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/a$a;)V

    .line 321
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->c()V

    .line 324
    :cond_37
    return-void
.end method

.method f()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 327
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Destroying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/s$a;->l:Z

    .line 329
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->f:Z

    .line 330
    iput-boolean v4, p0, Landroid/support/v4/app/s$a;->f:Z

    .line 331
    iget-object v1, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Landroid/support/v4/app/s$a;->e:Z

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 332
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_4f

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reseting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4f
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_b1

    .line 335
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    move-object v1, v0

    .line 339
    :goto_68
    :try_start_68
    iget-object v0, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    iget-object v3, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-interface {v0, v3}, Landroid/support/v4/app/r$a;->a(Landroid/support/v4/content/a;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a1

    .line 341
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_7d

    .line 342
    iget-object v0, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    iput-object v1, v0, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    .line 346
    :cond_7d
    iput-object v2, p0, Landroid/support/v4/app/s$a;->c:Landroid/support/v4/app/r$a;

    .line 347
    iput-object v2, p0, Landroid/support/v4/app/s$a;->g:Ljava/lang/Object;

    .line 348
    iput-boolean v4, p0, Landroid/support/v4/app/s$a;->e:Z

    .line 349
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_97

    .line 350
    iget-boolean v0, p0, Landroid/support/v4/app/s$a;->m:Z

    if-eqz v0, :cond_92

    .line 351
    iput-boolean v4, p0, Landroid/support/v4/app/s$a;->m:Z

    .line 352
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/a$a;)V

    .line 354
    :cond_92
    iget-object v0, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->e()V

    .line 356
    :cond_97
    iget-object v0, p0, Landroid/support/v4/app/s$a;->n:Landroid/support/v4/app/s$a;

    if-eqz v0, :cond_a0

    .line 357
    iget-object v0, p0, Landroid/support/v4/app/s$a;->n:Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->f()V

    .line 359
    :cond_a0
    return-void

    .line 341
    :catchall_a1
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_b0

    .line 342
    iget-object v2, p0, Landroid/support/v4/app/s$a;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/j;

    iput-object v1, v2, Landroid/support/v4/app/j;->u:Ljava/lang/String;

    :cond_b0
    throw v0

    :cond_b1
    move-object v1, v2

    goto :goto_68
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget v1, p0, Landroid/support/v4/app/s$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Landroid/support/v4/app/s$a;->d:Landroid/support/v4/content/a;

    invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 446
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
