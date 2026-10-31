.class final Lfr/testudo/spacecorsair/mod/ModFitting$Picker;
.super Ljava/lang/Object;
.source "ModFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Picker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static candidates(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->type(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    move-result-object v3

    .line 1486
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 1487
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v5

    .line 1488
    if-nez v5, :cond_44

    const/4 v1, 0x0

    .line 1489
    :goto_2a
    if-eqz v1, :cond_17

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    if-ne v1, v3, :cond_17

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1490
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_17

    .line 1492
    :catch_3a
    move-exception v0

    .line 1495
    :cond_3b
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$6;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$6;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1506
    return-object v2

    .line 1488
    :cond_44
    :try_start_44
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_3a

    move-result-object v1

    goto :goto_2a
.end method

.method static itemRow(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObject;F)Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1510
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1511
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1512
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1513
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 1514
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1515
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1516
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1517
    if-eqz p1, :cond_36

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1519
    :try_start_2c
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1520
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyImage(Landroid/widget/ImageView;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_36} :catch_cb

    .line 1525
    :cond_36
    :goto_36
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v3, v4, p3

    float-to-int v3, v3

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1527
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1528
    mul-float v0, v7, p3

    float-to-int v0, v0

    mul-float v3, v7, p3

    float-to-int v3, v3

    invoke-virtual {v2, v0, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1529
    const/high16 v3, 0x41500000    # 13.0f

    if-nez p1, :cond_bc

    const v0, -0xb5a798

    :goto_5b
    invoke-static {p0, v3, v0, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1530
    if-eqz p1, :cond_67

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_67
    const-string v0, "Empty slot"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    :goto_6d
    if-eqz p2, :cond_90

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v4

    if-le v4, v6, :cond_90

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1532
    :cond_90
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1533
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1534
    const/high16 v0, 0x41200000    # 10.0f

    const v3, -0x4f3b26

    invoke-static {p0, v0, v3, v5}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1535
    if-nez p1, :cond_c6

    const-string v0, ""

    :goto_a3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p3

    float-to-int v0, v0

    invoke-virtual {v3, v5, v0, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1537
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1538
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    return-object v1

    .line 1529
    :cond_bc
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->rarityColor(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    goto :goto_5b

    .line 1530
    :cond_c1
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    .line 1535
    :cond_c6
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->statLine(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 1521
    :catch_cb
    move-exception v2

    goto/16 :goto_36
.end method

.method static show(Landroid/app/Activity;I)V
    .registers 19

    .prologue
    .line 1365
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->dp(Landroid/content/Context;)F

    move-result v4

    .line 1366
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1367
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1368
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1369
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1370
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1371
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 1372
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1373
    const v2, -0xfaf4ea

    const v3, -0x952f01

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v4

    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v8, v4

    invoke-static {v2, v3, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFitting;->box(IIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1376
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1377
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1378
    const/high16 v3, 0x41700000    # 15.0f

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_COLOR:[I

    aget v7, v7, p1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_GROUP:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  \u00b7  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_NAME:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    const-string v3, "CLOSE"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v7, -0x4f3b26

    move-object/from16 v0, p0

    invoke-static {v0, v3, v7}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v7

    .line 1382
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1383
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1386
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->gear(I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 1387
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->itemRow(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObject;F)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1388
    const-string v8, "DETAILS"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v9, -0x952f01

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v8

    .line 1389
    new-instance v9, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v9, v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;-><init>(Landroid/app/Dialog;Landroid/app/Activity;I)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1392
    if-eqz v2, :cond_d6

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v9

    if-nez v9, :cond_d6

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1393
    :cond_d6
    const/high16 v8, 0x41200000    # 10.0f

    const v9, -0x4f3b26

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1394
    const-string v9, "FITTED"

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v4

    float-to-int v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v12, v4

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1396
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1397
    const v8, -0x33f4e5d2    # -3.6464824E7f

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_COLOR:[I

    aget v9, v9, p1

    const v10, -0x7f000001

    and-int/2addr v9, v10

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v4

    invoke-static {v8, v9, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFitting;->box(IIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1398
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1400
    const/high16 v3, 0x41200000    # 10.0f

    const v8, -0x4f3b26

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v9}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1401
    const-string v8, "IN CARGO \u2014 TAP FIT TO SWAP (the fitted item returns to your hold)"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    mul-float/2addr v9, v4

    float-to-int v9, v9

    const/4 v10, 0x0

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v4

    float-to-int v11, v11

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1403
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1405
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1406
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1407
    new-instance v3, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1408
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1409
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->candidates(I)Ljava/util/List;

    move-result-object v9

    .line 1412
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F

    move-result v10

    .line 1413
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_165
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 1414
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->itemRow(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObject;F)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 1415
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F

    move-result v13

    .line 1416
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1d2

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1d2

    cmpl-float v3, v13, v10

    if-eqz v3, :cond_1d2

    .line 1417
    const/high16 v14, 0x41300000    # 11.0f

    cmpl-float v3, v13, v10

    if-lez v3, :cond_246

    const v3, -0xbe00ea

    :goto_19c
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v15}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v14

    .line 1418
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v3, v13, v10

    if-lez v3, :cond_24b

    const-string v3, "+"

    :goto_1ae
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-float/2addr v13, v10

    invoke-static {v13}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x41000000    # 8.0f

    mul-float/2addr v15, v4

    float-to-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v13, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1420
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1422
    :cond_1d2
    const-string v3, "FIT"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v13, -0xbe00ea

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v3

    .line 1423
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v13

    invoke-virtual {v13}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canEquip()Z

    move-result v13

    .line 1424
    if-nez v13, :cond_215

    .line 1425
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1426
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LV "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v14

    invoke-virtual {v14}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v14

    iget v14, v14, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    const v13, -0xb5a798

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 1429
    :cond_215
    new-instance v13, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;-><init>(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;Landroid/app/Dialog;)V

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1440
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v13, -0x2

    invoke-direct {v2, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1441
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1442
    const v3, -0x7ff4e5d2

    const v13, 0x306ad0ff

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v14, v4

    invoke-static {v3, v13, v4, v14}, Lfr/testudo/spacecorsair/mod/ModFitting;->box(IIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1443
    invoke-virtual {v8, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_165

    .line 1477
    :catch_244
    move-exception v2

    .line 1480
    :goto_245
    return-void

    .line 1417
    :cond_246
    const v3, -0xa5b6

    goto/16 :goto_19c

    .line 1418
    :cond_24b
    const-string v3, ""

    goto/16 :goto_1ae

    .line 1445
    :cond_24f
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a1

    .line 1446
    const/high16 v2, 0x41400000    # 12.0f

    const v3, -0x4f3b26

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v9}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No "

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_NAME:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " in your cargo hold. Buy one at a station market or the cash shop."

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    const/4 v3, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    mul-float/2addr v9, v4

    float-to-int v9, v9

    const/4 v10, 0x0

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v11, v4

    float-to-int v11, v11

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1449
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1452
    :cond_2a1
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1453
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1454
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1455
    const/4 v3, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v8, v4

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1456
    const-string v3, "OPEN INVENTORY"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v8}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v3

    .line 1457
    new-instance v8, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v5, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1465
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1467
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$4;

    invoke-direct {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1470
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1473
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1475
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1476
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3f28f5c3    # 0.66f

    mul-float/2addr v5, v6

    const/high16 v6, 0x441b0000    # 620.0f

    mul-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_315
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_315} :catch_244

    goto/16 :goto_245
.end method
