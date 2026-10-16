.class Landroid/support/v4/app/s;
.super Landroid/support/v4/app/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/s$a;
    }
.end annotation


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/h",
            "<",
            "Landroid/support/v4/app/s$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/h",
            "<",
            "Landroid/support/v4/app/s$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Landroid/support/v4/app/FragmentActivity;

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/s;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
    .registers 5

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    .line 194
    new-instance v0, Landroid/support/v4/b/h;

    invoke-direct {v0}, Landroid/support/v4/b/h;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    .line 200
    new-instance v0, Landroid/support/v4/b/h;

    invoke-direct {v0}, Landroid/support/v4/b/h;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    .line 478
    iput-object p1, p0, Landroid/support/v4/app/s;->d:Ljava/lang/String;

    .line 479
    iput-object p2, p0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    .line 480
    iput-boolean p3, p0, Landroid/support/v4/app/s;->f:Z

    .line 481
    return-void
.end method


# virtual methods
.method a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2

    .prologue
    .line 484
    iput-object p1, p0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    .line 485
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    if-lez v0, :cond_59

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 804
    :goto_25
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 805
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    .line 806
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v4, v1}, Landroid/support/v4/b/h;->a(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 807
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/s$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 804
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 811
    :cond_59
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    if-lez v0, :cond_af

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    :goto_7c
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 815
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    .line 816
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v3, v2}, Landroid/support/v4/b/h;->a(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/s$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 821
    :cond_af
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 825
    .line 826
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 827
    :goto_9
    if-ge v2, v4, :cond_23

    .line 828
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    .line 829
    iget-boolean v5, v0, Landroid/support/v4/app/s$a;->h:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, Landroid/support/v4/app/s$a;->f:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_1c
    or-int/2addr v3, v0

    .line 827
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_21
    move v0, v1

    .line 829
    goto :goto_1c

    .line 831
    :cond_23
    return v3
.end method

.method b()V
    .registers 5

    .prologue
    .line 701
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    if-eqz v0, :cond_43

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 705
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    :cond_42
    return-void

    .line 709
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    .line 713
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4f
    if-ltz v1, :cond_42

    .line 714
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->a()V

    .line 713
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4f
.end method

.method c()V
    .registers 5

    .prologue
    .line 719
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    if-nez v0, :cond_43

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 723
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    :goto_42
    return-void

    .line 727
    :cond_43
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4c
    if-ltz v1, :cond_5d

    .line 728
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->e()V

    .line 727
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4c

    .line 730
    :cond_5d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    goto :goto_42
.end method

.method d()V
    .registers 5

    .prologue
    .line 734
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    if-nez v0, :cond_43

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 738
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    :cond_42
    return-void

    .line 742
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/s;->g:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    .line 744
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_52
    if-ltz v1, :cond_42

    .line 745
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->b()V

    .line 744
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_52
.end method

.method e()V
    .registers 4

    .prologue
    .line 750
    iget-boolean v0, p0, Landroid/support/v4/app/s;->g:Z

    if-eqz v0, :cond_3d

    .line 751
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s;->g:Z

    .line 754
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2c
    if-ltz v1, :cond_3d

    .line 755
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->c()V

    .line 754
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    .line 758
    :cond_3d
    return-void
.end method

.method f()V
    .registers 4

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 762
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/s$a;->k:Z

    .line 761
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 764
    :cond_1a
    return-void
.end method

.method g()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 768
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->d()V

    .line 767
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 770
    :cond_1a
    return-void
.end method

.method h()V
    .registers 4

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/support/v4/app/s;->g:Z

    if-nez v0, :cond_3f

    .line 774
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_29
    if-ltz v1, :cond_3a

    .line 776
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->f()V

    .line 775
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_29

    .line 778
    :cond_3a
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->c()V

    .line 781
    :cond_3f
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_5b

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_5b
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_64
    if-ltz v1, :cond_75

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s$a;

    invoke-virtual {v0}, Landroid/support/v4/app/s$a;->f()V

    .line 782
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_64

    .line 785
    :cond_75
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->c()V

    .line 786
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v1, p0, Landroid/support/v4/app/s;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 795
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
