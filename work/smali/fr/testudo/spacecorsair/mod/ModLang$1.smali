.class Lfr/testudo/spacecorsair/mod/ModLang$1;
.super Ljava/lang/Object;
.source "ModLang.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLang;->selector(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLang$1;->val$keys:[Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLang$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6

    .prologue
    .line 150
    const v0, 0x4c41000

    sub-int v0, p2, v0

    .line 151
    if-ltz v0, :cond_15

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLang$1;->val$keys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLang$1;->val$a:Landroid/app/Activity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLang$1;->val$keys:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->setMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 152
    :cond_15
    return-void
.end method
