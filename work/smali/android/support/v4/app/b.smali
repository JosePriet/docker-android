.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/q;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/app/j;

.field b:Landroid/support/v4/app/b$a;

.field c:Landroid/support/v4/app/b$a;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/j;)V
    .registers 3

    .prologue
    .line 333
    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->l:Z

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->o:I

    .line 334
    iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    .line 335
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/j;

    .line 396
    if-eqz p3, :cond_43

    .line 397
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_41
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 405
    :cond_43
    if-eqz p1, :cond_80

    .line 406
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_7c

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_7c

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_7c
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 414
    :cond_80
    new-instance v0, Landroid/support/v4/app/b$a;

    invoke-direct {v0}, Landroid/support/v4/app/b$a;-><init>()V

    .line 415
    iput p4, v0, Landroid/support/v4/app/b$a;->c:I

    .line 416
    iput-object p2, v0, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 417
    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    .line 418
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_d
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_3a

    .line 584
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/support/v4/b/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/b/e;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 587
    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 589
    :cond_3a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    .line 590
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_51

    .line 591
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/b;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/b;->o:I

    .line 595
    :goto_49
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/j;->a(Ljava/lang/Runnable;Z)V

    .line 596
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    return v0

    .line 593
    :cond_51
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->o:I

    goto :goto_49
.end method

.method public a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/q;
    .registers 5

    .prologue
    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 385
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/q;
    .registers 5

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 390
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/q;
    .registers 4

    .prologue
    .line 434
    new-instance v0, Landroid/support/v4/app/b$a;

    invoke-direct {v0}, Landroid/support/v4/app/b$a;-><init>()V

    .line 435
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/b$a;->c:I

    .line 436
    iput-object p1, v0, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 437
    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    .line 439
    return-object p0
.end method

.method a(I)V
    .registers 8

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-nez v0, :cond_5

    .line 571
    :cond_4
    return-void

    .line 552
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b$a;

    move-object v2, v0

    .line 555
    :goto_2e
    if-eqz v2, :cond_4

    .line 556
    iget-object v0, v2, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_67

    .line 557
    iget-object v0, v2, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 558
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_67

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_67
    iget-object v0, v2, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_af

    .line 562
    iget-object v0, v2, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_74
    if-ltz v1, :cond_af

    .line 563
    iget-object v0, v2, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 564
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 565
    sget-boolean v3, Landroid/support/v4/app/j;->a:Z

    if-eqz v3, :cond_ab

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_ab
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_74

    .line 569
    :cond_af
    iget-object v0, v2, Landroid/support/v4/app/b$a;->a:Landroid/support/v4/app/b$a;

    move-object v2, v0

    goto/16 :goto_2e
.end method

.method a(Landroid/support/v4/app/b$a;)V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b$a;

    if-nez v0, :cond_1f

    .line 365
    iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/b$a;

    iput-object p1, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b$a;

    .line 371
    :goto_8
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    iput v0, p1, Landroid/support/v4/app/b$a;->e:I

    .line 372
    iget v0, p0, Landroid/support/v4/app/b;->f:I

    iput v0, p1, Landroid/support/v4/app/b$a;->f:I

    .line 373
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    iput v0, p1, Landroid/support/v4/app/b$a;->g:I

    .line 374
    iget v0, p0, Landroid/support/v4/app/b;->h:I

    iput v0, p1, Landroid/support/v4/app/b$a;->h:I

    .line 375
    iget v0, p0, Landroid/support/v4/app/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/b;->d:I

    .line 376
    return-void

    .line 367
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/b$a;

    iput-object v0, p1, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/b$a;

    .line 368
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/b$a;

    iput-object p1, v0, Landroid/support/v4/app/b$a;->a:Landroid/support/v4/app/b$a;

    .line 369
    iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/b$a;

    goto :goto_8
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 238
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 241
    if-eqz p3, :cond_db

    .line 242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    iget v0, p0, Landroid/support/v4/app/b;->i:I

    if-eqz v0, :cond_47

    .line 246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Landroid/support/v4/app/b;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_47
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    if-nez v0, :cond_4f

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    if-eqz v0, :cond_6e

    .line 252
    :cond_4f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Landroid/support/v4/app/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_6e
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    if-nez v0, :cond_76

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    if-eqz v0, :cond_95

    .line 258
    :cond_76
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Landroid/support/v4/app/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :cond_95
    iget v0, p0, Landroid/support/v4/app/b;->p:I

    if-nez v0, :cond_9d

    iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b8

    .line 264
    :cond_9d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget v0, p0, Landroid/support/v4/app/b;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    :cond_b8
    iget v0, p0, Landroid/support/v4/app/b;->r:I

    if-nez v0, :cond_c0

    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_db

    .line 270
    :cond_c0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Landroid/support/v4/app/b;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 277
    :cond_db
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b$a;

    if-eqz v0, :cond_1f8

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b$a;

    move v2, v1

    move-object v3, v0

    .line 282
    :goto_fe
    if-eqz v3, :cond_1f8

    .line 284
    iget v0, v3, Landroid/support/v4/app/b$a;->c:I

    packed-switch v0, :pswitch_data_1fa

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/support/v4/app/b$a;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_11a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    if-eqz p3, :cond_187

    .line 299
    iget v0, v3, Landroid/support/v4/app/b$a;->e:I

    if-nez v0, :cond_141

    iget v0, v3, Landroid/support/v4/app/b$a;->f:I

    if-eqz v0, :cond_160

    .line 300
    :cond_141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget v0, v3, Landroid/support/v4/app/b$a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v0, v3, Landroid/support/v4/app/b$a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_160
    iget v0, v3, Landroid/support/v4/app/b$a;->g:I

    if-nez v0, :cond_168

    iget v0, v3, Landroid/support/v4/app/b$a;->h:I

    if-eqz v0, :cond_187

    .line 306
    :cond_168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget v0, v3, Landroid/support/v4/app/b$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget v0, v3, Landroid/support/v4/app/b$a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_187
    iget-object v0, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f1

    iget-object v0, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f1

    move v0, v1

    .line 313
    :goto_194
    iget-object v5, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1f1

    .line 314
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object v5, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d9

    .line 316
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :goto_1ad
    iget-object v5, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_194

    .line 285
    :pswitch_1b9
    const-string v0, "NULL"

    goto/16 :goto_11a

    .line 286
    :pswitch_1bd
    const-string v0, "ADD"

    goto/16 :goto_11a

    .line 287
    :pswitch_1c1
    const-string v0, "REPLACE"

    goto/16 :goto_11a

    .line 288
    :pswitch_1c5
    const-string v0, "REMOVE"

    goto/16 :goto_11a

    .line 289
    :pswitch_1c9
    const-string v0, "HIDE"

    goto/16 :goto_11a

    .line 290
    :pswitch_1cd
    const-string v0, "SHOW"

    goto/16 :goto_11a

    .line 291
    :pswitch_1d1
    const-string v0, "DETACH"

    goto/16 :goto_11a

    .line 292
    :pswitch_1d5
    const-string v0, "ATTACH"

    goto/16 :goto_11a

    .line 318
    :cond_1d9
    if-nez v0, :cond_1e0

    .line 319
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_1e0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 322
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1ad

    .line 327
    :cond_1f1
    iget-object v3, v3, Landroid/support/v4/app/b$a;->a:Landroid/support/v4/app/b$a;

    .line 328
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 329
    goto/16 :goto_fe

    .line 331
    :cond_1f8
    return-void

    .line 284
    nop

    :pswitch_data_1fa
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_1bd
        :pswitch_1c1
        :pswitch_1c5
        :pswitch_1c9
        :pswitch_1cd
        :pswitch_1d1
        :pswitch_1d5
    .end packed-switch
.end method

.method public b()I
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/q;
    .registers 4

    .prologue
    .line 461
    new-instance v0, Landroid/support/v4/app/b$a;

    invoke-direct {v0}, Landroid/support/v4/app/b$a;-><init>()V

    .line 462
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/b$a;->c:I

    .line 463
    iput-object p1, v0, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 464
    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    .line 466
    return-object p0
.end method

.method public b(Z)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 691
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_30

    .line 692
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Landroid/support/v4/b/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/b/e;-><init>(Ljava/lang/String;)V

    .line 694
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 695
    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 698
    :cond_30
    invoke-virtual {p0, v6}, Landroid/support/v4/app/b;->a(I)V

    .line 700
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/b$a;

    move-object v3, v0

    .line 701
    :goto_36
    if-eqz v3, :cond_104

    .line 702
    iget v0, v3, Landroid/support/v4/app/b$a;->c:I

    packed-switch v0, :pswitch_data_126

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Landroid/support/v4/app/b$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :pswitch_58
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 705
    iget v1, v3, Landroid/support/v4/app/b$a;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 706
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    .line 760
    :cond_6b
    :goto_6b
    iget-object v0, v3, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/b$a;

    move-object v3, v0

    goto :goto_36

    .line 711
    :pswitch_6f
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 712
    if-eqz v0, :cond_84

    .line 713
    iget v1, v3, Landroid/support/v4/app/b$a;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 714
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    .line 718
    :cond_84
    iget-object v0, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_6b

    move v1, v2

    .line 719
    :goto_89
    iget-object v0, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6b

    .line 720
    iget-object v0, v3, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 721
    iget v4, v3, Landroid/support/v4/app/b$a;->g:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 722
    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 719
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_89

    .line 727
    :pswitch_a6
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 728
    iget v1, v3, Landroid/support/v4/app/b$a;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 729
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6b

    .line 732
    :pswitch_b2
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 733
    iget v1, v3, Landroid/support/v4/app/b$a;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6b

    .line 738
    :pswitch_c6
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 739
    iget v1, v3, Landroid/support/v4/app/b$a;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 740
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6b

    .line 744
    :pswitch_da
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 745
    iget v1, v3, Landroid/support/v4/app/b$a;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 746
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6b

    .line 750
    :pswitch_ef
    iget-object v0, v3, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 751
    iget v1, v3, Landroid/support/v4/app/b$a;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 752
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6b

    .line 763
    :cond_104
    if-eqz p1, :cond_118

    .line 764
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v1, v1, Landroid/support/v4/app/j;->n:I

    iget v2, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v2}, Landroid/support/v4/app/j;->c(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/b;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/j;->a(IIIZ)V

    .line 768
    :cond_118
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-ltz v0, :cond_125

    .line 769
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v1, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->b(I)V

    .line 770
    iput v6, p0, Landroid/support/v4/app/b;->o:I

    .line 772
    :cond_125
    return-void

    .line 702
    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_58
        :pswitch_6f
        :pswitch_a6
        :pswitch_b2
        :pswitch_c6
        :pswitch_da
        :pswitch_ef
    .end packed-switch
.end method

.method public c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/q;
    .registers 4

    .prologue
    .line 470
    new-instance v0, Landroid/support/v4/app/b$a;

    invoke-direct {v0}, Landroid/support/v4/app/b$a;-><init>()V

    .line 471
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/b$a;->c:I

    .line 472
    iput-object p1, v0, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 473
    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    .line 475
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 600
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1e
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_2e

    .line 603
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-gez v0, :cond_2e

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_2e
    invoke-virtual {p0, v8}, Landroid/support/v4/app/b;->a(I)V

    .line 610
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b$a;

    move-object v4, v0

    .line 611
    :goto_34
    if-eqz v4, :cond_16d

    .line 612
    iget v0, v4, Landroid/support/v4/app/b$a;->c:I

    packed-switch v0, :pswitch_data_184

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/support/v4/app/b$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :pswitch_56
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 615
    iget v1, v4, Landroid/support/v4/app/b$a;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 616
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 679
    :cond_61
    :goto_61
    iget-object v0, v4, Landroid/support/v4/app/b$a;->a:Landroid/support/v4/app/b$a;

    move-object v4, v0

    goto :goto_34

    .line 619
    :pswitch_65
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 620
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_10a

    move v1, v2

    move-object v3, v0

    .line 621
    :goto_6f
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10b

    .line 622
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 623
    sget-boolean v5, Landroid/support/v4/app/j;->a:Z

    if-eqz v5, :cond_a9

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_a9
    if-eqz v3, :cond_b1

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v6, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v5, v6, :cond_b6

    .line 626
    :cond_b1
    if-ne v0, v3, :cond_ba

    .line 627
    const/4 v3, 0x0

    iput-object v3, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 621
    :cond_b6
    :goto_b6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 629
    :cond_ba
    iget-object v5, v4, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_c5

    .line 630
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    .line 632
    :cond_c5
    iget-object v5, v4, Landroid/support/v4/app/b$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget v5, v4, Landroid/support/v4/app/b$a;->f:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 634
    iget-boolean v5, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v5, :cond_100

    .line 635
    iget v5, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 636
    sget-boolean v5, Landroid/support/v4/app/j;->a:Z

    if-eqz v5, :cond_100

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_100
    iget-object v5, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v6, p0, Landroid/support/v4/app/b;->i:I

    iget v7, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_b6

    :cond_10a
    move-object v3, v0

    .line 644
    :cond_10b
    if-eqz v3, :cond_61

    .line 645
    iget v0, v4, Landroid/support/v4/app/b$a;->e:I

    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 646
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_61

    .line 650
    :pswitch_118
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 651
    iget v1, v4, Landroid/support/v4/app/b$a;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 652
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 655
    :pswitch_129
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 656
    iget v1, v4, Landroid/support/v4/app/b$a;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 657
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 660
    :pswitch_13a
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 661
    iget v1, v4, Landroid/support/v4/app/b$a;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 665
    :pswitch_14b
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 666
    iget v1, v4, Landroid/support/v4/app/b$a;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 670
    :pswitch_15c
    iget-object v0, v4, Landroid/support/v4/app/b$a;->d:Landroid/support/v4/app/Fragment;

    .line 671
    iget v1, v4, Landroid/support/v4/app/b$a;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 672
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 682
    :cond_16d
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    iget v1, v1, Landroid/support/v4/app/j;->n:I

    iget v2, p0, Landroid/support/v4/app/b;->i:I

    iget v3, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/j;->a(IIIZ)V

    .line 685
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_183

    .line 686
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/b;)V

    .line 688
    :cond_183
    return-void

    .line 612
    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_56
        :pswitch_65
        :pswitch_118
        :pswitch_129
        :pswitch_13a
        :pswitch_14b
        :pswitch_15c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Landroid/support/v4/app/b;->o:I

    if-ltz v1, :cond_25

    .line 225
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_25
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 229
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
