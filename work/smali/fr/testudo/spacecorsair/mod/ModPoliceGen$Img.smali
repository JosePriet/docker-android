.class public final Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
.super Ljava/lang/Object;
.source "ModPoliceGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModPoliceGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Img"
.end annotation


# instance fields
.field public final h:I

.field public final opaque:Z

.field public final px:[I

.field public final w:I


# direct methods
.method public constructor <init>(II[IZ)V
    .registers 5

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    iput-boolean p4, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->opaque:Z

    return-void
.end method
