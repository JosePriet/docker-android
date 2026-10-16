.class public Lfr/testudo/spacecorsair/utils/Fonts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static antigrav:Landroid/graphics/Typeface;

.field public static logo:Landroid/graphics/Typeface;

.field public static starwars:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->logo:Landroid/graphics/Typeface;

    .line 16
    sput-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->starwars:Landroid/graphics/Typeface;

    .line 18
    sput-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->antigrav:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/res/AssetManager;)V
    .registers 2

    .prologue
    .line 21
    const-string v0, "fonts/logoFont.ttf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->logo:Landroid/graphics/Typeface;

    .line 22
    const-string v0, "fonts/Starjedi.ttf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->starwars:Landroid/graphics/Typeface;

    .line 23
    const-string v0, "fonts/antigravbb_reg.ttf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->antigrav:Landroid/graphics/Typeface;

    .line 24
    return-void
.end method

.method public static setFontToAllViews(Landroid/graphics/Typeface;Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 28
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_19

    .line 32
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    :cond_15
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 33
    :cond_19
    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_23

    .line 34
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_15

    .line 35
    :cond_23
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2d

    .line 36
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_15

    .line 37
    :cond_2d
    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_37

    .line 38
    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_15

    .line 39
    :cond_37
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_15

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/utils/Fonts;->setFontToAllViews(Landroid/graphics/Typeface;Landroid/view/ViewGroup;)V

    goto :goto_15

    .line 43
    :cond_41
    return-void
.end method
