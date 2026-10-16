.class public final Lcom/google/ads/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/at$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/ads/at;->d:I

    .line 58
    iput-object p1, p0, Lcom/google/ads/at;->e:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/google/ads/at;->a:[B

    .line 60
    iput v0, p0, Lcom/google/ads/at;->c:I

    .line 61
    array-length v0, p2

    iput v0, p0, Lcom/google/ads/at;->b:I

    .line 62
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/ads/at;
    .registers 2

    .prologue
    .line 69
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/ads/at;->a(Ljava/io/OutputStream;I)Lcom/google/ads/at;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/google/ads/at;
    .registers 4

    .prologue
    .line 78
    new-instance v0, Lcom/google/ads/at;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/ads/at;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-object v0, p0, Lcom/google/ads/at;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    .line 872
    new-instance v0, Lcom/google/ads/at$a;

    invoke-direct {v0}, Lcom/google/ads/at$a;-><init>()V

    throw v0

    .line 877
    :cond_b
    iget-object v0, p0, Lcom/google/ads/at;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/ads/at;->a:[B

    iget v2, p0, Lcom/google/ads/at;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 878
    iput v3, p0, Lcom/google/ads/at;->c:I

    .line 879
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/ads/at;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 887
    invoke-direct {p0}, Lcom/google/ads/at;->b()V

    .line 889
    :cond_7
    return-void
.end method

.method public a(B)V
    .registers 5

    .prologue
    .line 944
    iget v0, p0, Lcom/google/ads/at;->c:I

    iget v1, p0, Lcom/google/ads/at;->b:I

    if-ne v0, v1, :cond_9

    .line 945
    invoke-direct {p0}, Lcom/google/ads/at;->b()V

    .line 948
    :cond_9
    iget-object v0, p0, Lcom/google/ads/at;->a:[B

    iget v1, p0, Lcom/google/ads/at;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/at;->c:I

    aput-byte p1, v0, v1

    .line 949
    iget v0, p0, Lcom/google/ads/at;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/at;->d:I

    .line 950
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 954
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/ads/at;->a(B)V

    .line 955
    return-void
.end method

.method public a(II)V
    .registers 4

    .prologue
    .line 1055
    invoke-static {p1, p2}, Lcom/google/ads/au;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/at;->b(I)V

    .line 1056
    return-void
.end method

.method public a(IJ)V
    .registers 6

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/at;->a(II)V

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/google/ads/at;->a(J)V

    .line 133
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/at;->a(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/ads/at;->a(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/at;->b(J)V

    .line 325
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 357
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 358
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/ads/at;->b(I)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/google/ads/at;->a([B)V

    .line 360
    return-void
.end method

.method public a([B)V
    .registers 4

    .prologue
    .line 964
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/at;->a([BII)V

    .line 965
    return-void
.end method

.method public a([BII)V
    .registers 8

    .prologue
    .line 970
    iget v0, p0, Lcom/google/ads/at;->b:I

    iget v1, p0, Lcom/google/ads/at;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_19

    .line 972
    iget-object v0, p0, Lcom/google/ads/at;->a:[B

    iget v1, p0, Lcom/google/ads/at;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    iget v0, p0, Lcom/google/ads/at;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/ads/at;->c:I

    .line 974
    iget v0, p0, Lcom/google/ads/at;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/ads/at;->d:I

    .line 999
    :goto_18
    return-void

    .line 978
    :cond_19
    iget v0, p0, Lcom/google/ads/at;->b:I

    iget v1, p0, Lcom/google/ads/at;->c:I

    sub-int/2addr v0, v1

    .line 979
    iget-object v1, p0, Lcom/google/ads/at;->a:[B

    iget v2, p0, Lcom/google/ads/at;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 980
    add-int v1, p2, v0

    .line 981
    sub-int v2, p3, v0

    .line 982
    iget v3, p0, Lcom/google/ads/at;->b:I

    iput v3, p0, Lcom/google/ads/at;->c:I

    .line 983
    iget v3, p0, Lcom/google/ads/at;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/ads/at;->d:I

    .line 984
    invoke-direct {p0}, Lcom/google/ads/at;->b()V

    .line 989
    iget v0, p0, Lcom/google/ads/at;->b:I

    if-gt v2, v0, :cond_47

    .line 991
    iget-object v0, p0, Lcom/google/ads/at;->a:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iput v2, p0, Lcom/google/ads/at;->c:I

    .line 997
    :goto_41
    iget v0, p0, Lcom/google/ads/at;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/at;->d:I

    goto :goto_18

    .line 995
    :cond_47
    iget-object v0, p0, Lcom/google/ads/at;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_41
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 1069
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 1070
    invoke-virtual {p0, p1}, Lcom/google/ads/at;->a(I)V

    .line 1071
    return-void

    .line 1073
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/ads/at;->a(I)V

    .line 1074
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public b(J)V
    .registers 8

    .prologue
    .line 1095
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 1096
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/ads/at;->a(I)V

    .line 1097
    return-void

    .line 1099
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/ads/at;->a(I)V

    .line 1100
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method
