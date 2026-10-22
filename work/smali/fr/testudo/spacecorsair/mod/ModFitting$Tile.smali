.class final Lfr/testudo/spacecorsair/mod/ModFitting$Tile;
.super Landroid/widget/LinearLayout;
.source "ModFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tile"
.end annotation


# instance fields
.field final caption:Landroid/widget/TextView;

.field final d:F

.field final icon:Landroid/widget/ImageView;

.field final iconBox:Landroid/widget/FrameLayout;

.field final name:Landroid/widget/TextView;

.field shown:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field shownEmpty:Z

.field final slot:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 13

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1034
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1035
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->slot:I

    .line 1036
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->dp(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    .line 1037
    invoke-virtual {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->setOrientation(I)V

    .line 1038
    invoke-virtual {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->setGravity(I)V

    .line 1039
    invoke-virtual {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->setClickable(Z)V

    .line 1040
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->iconBox:Landroid/widget/FrameLayout;

    .line 1041
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    .line 1042
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1043
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1044
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1045
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1046
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->iconBox:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->iconBox:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42380000    # 46.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42380000    # 46.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p1, v0, v8, v5}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    .line 1049
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1050
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1051
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1052
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1053
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    const v1, -0x4ffaf4ea

    const/4 v2, 0x0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v3, v7

    invoke-static {v1, v6, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->box(IIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1055
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1056
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    const/high16 v0, 0x41000000    # 8.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_COLOR:[I

    aget v1, v1, p2

    invoke-static {p1, v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->caption:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->caption:Landroid/widget/TextView;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_NAME:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->caption:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1060
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->caption:Landroid/widget/TextView;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1061
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->caption:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->addView(Landroid/view/View;)V

    .line 1062
    return-void
.end method


# virtual methods
.method bind(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 12

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const v5, -0xb5a798

    const/4 v2, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x1

    .line 1065
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->slot:I

    if-eq v0, v8, :cond_1c

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 1066
    :goto_13
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->shown:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-ne p1, v3, :cond_1e

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->shownEmpty:Z

    if-ne v0, v3, :cond_1e

    .line 1111
    :goto_1b
    return-void

    .line 1065
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .line 1067
    :cond_1e
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->shown:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 1068
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->shownEmpty:Z

    .line 1069
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1070
    if-nez p1, :cond_86

    move v4, v5

    .line 1071
    :goto_29
    if-eqz v0, :cond_8c

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artSlotEmpty:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$300()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1072
    :goto_2f
    if-eqz v3, :cond_91

    .line 1073
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->iconBox:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v7, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    :goto_3f
    if-eqz p1, :cond_10f

    if-nez v0, :cond_10f

    .line 1090
    :try_start_43
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->slot:I

    if-ne v0, v8, :cond_dc

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 1091
    :goto_4b
    if-eqz v0, :cond_df

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$500()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_df

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1092
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$500()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_68} :catch_ee

    .line 1102
    :goto_68
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1103
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->slot:I

    if-ne v0, v8, :cond_106

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 1104
    :goto_77
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_109

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->name:Ljava/lang/String;

    :goto_7d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b

    .line 1070
    :cond_86
    invoke-static {v6, p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->rarityColor(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    move v4, v3

    goto :goto_29

    .line 1071
    :cond_8c
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artSlot:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$400()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2f

    .line 1075
    :cond_91
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1076
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1077
    if-eqz v0, :cond_ba

    .line 1078
    const v6, -0x7ffaf4ea

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1079
    const/high16 v6, 0x3fc00000    # 1.5f

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v6, v9

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v7, v9

    invoke-virtual {v3, v1, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 1086
    :goto_b4
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->iconBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3f

    .line 1081
    :cond_ba
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 1082
    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_126

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 1083
    const/high16 v6, 0x41b80000    # 23.0f

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 1084
    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->d:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_b4

    :cond_dc
    move-object v0, v2

    .line 1090
    goto/16 :goto_4b

    .line 1093
    :cond_df
    :try_start_df
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->slot:I

    if-ne v0, v8, :cond_f6

    .line 1094
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_ec} :catch_ee

    goto/16 :goto_68

    .line 1099
    :catch_ee
    move-exception v0

    .line 1100
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 1096
    :cond_f6
    :try_start_f6
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1097
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyImage(Landroid/widget/ImageView;)V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_104} :catch_ee

    goto/16 :goto_68

    :cond_106
    move-object v0, v2

    .line 1103
    goto/16 :goto_77

    .line 1104
    :cond_109
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7d

    .line 1107
    :cond_10f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1108
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    const-string v1, "empty"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1b

    .line 1082
    :array_126
    .array-data 4
        -0xe9cfb6
        -0xf4e5d2
    .end array-data
.end method
