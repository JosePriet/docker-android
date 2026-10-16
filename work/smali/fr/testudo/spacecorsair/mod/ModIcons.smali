.class public final Lfr/testudo/spacecorsair/mod/ModIcons;
.super Ljava/lang/Object;
.source "ModIcons.java"


# static fields
.field private static last:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBackground(Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 23
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModIcons;->icon(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_12

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_12
    return-void
.end method

.method public static applyImage(Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModIcons;->icon(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    :cond_9
    return-void
.end method

.method private static icon(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 34
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIcons;->last:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 35
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModIcons;->last:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 36
    if-eqz v0, :cond_a

    if-nez p0, :cond_b

    .line 42
    :cond_a
    :goto_a
    return-object v1

    .line 37
    :cond_b
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 38
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v2, :cond_a

    .line 39
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v0

    .line 40
    if-gez v0, :cond_1e

    move-object v0, v1

    :goto_1c
    move-object v1, v0

    goto :goto_a

    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->ICONS:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_1c

    .line 41
    :catch_2b
    move-exception v0

    goto :goto_a
.end method

.method public static id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 2

    .prologue
    .line 18
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModIcons;->last:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 19
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v0

    return v0
.end method
