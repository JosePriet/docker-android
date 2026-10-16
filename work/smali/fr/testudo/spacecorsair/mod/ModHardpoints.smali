.class final Lfr/testudo/spacecorsair/mod/ModHardpoints;
.super Ljava/lang/Object;
.source "ModHardpoints.java"


# static fields
.field static final ARTS:[Ljava/lang/String;

.field static final MISSILES:[[F

.field static final TURRETS:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 7
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "viper"

    aput-object v1, v0, v6

    const/4 v1, 0x1

    const-string v2, "hornet"

    aput-object v2, v0, v1

    const-string v1, "albatros"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "raptor"

    aput-object v2, v0, v1

    const-string v1, "monolith"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "tempest"

    aput-object v2, v0, v1

    const-string v1, "leviathan"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "raven"

    aput-object v2, v0, v1

    const-string v1, "cobalt"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "mantis"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hydra"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "verdant"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sovereign"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sunlance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "imperator"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "wraith"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "bastille"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "moth"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "crimson_throne"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dev_prototype"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "aurora"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "bulwark"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cardinal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "foundry"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "graywall"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "harbinger"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nightjar"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sanctum"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "shade"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "talon"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "warlord"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "bastion"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "mule"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "tortoise"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "comet"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "kite"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "seraph"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "bulldog"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ironside"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "tidewarden"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHardpoints;->ARTS:[Ljava/lang/String;

    .line 8
    const/16 v0, 0x28

    new-array v0, v0, [[F

    new-array v1, v6, [F

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-array v2, v4, [F

    fill-array-data v2, :array_3a0

    aput-object v2, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_3ac

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v5, [F

    fill-array-data v2, :array_3bc

    aput-object v2, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_3cc

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v5, [F

    fill-array-data v2, :array_3dc

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_3ec

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v2, v6, [F

    aput-object v2, v0, v1

    new-array v1, v4, [F

    fill-array-data v1, :array_408

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v2, v5, [F

    fill-array-data v2, :array_414

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [F

    fill-array-data v2, :array_424

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [F

    fill-array-data v2, :array_434

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [F

    fill-array-data v2, :array_444

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [F

    fill-array-data v2, :array_454

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [F

    fill-array-data v2, :array_464

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [F

    fill-array-data v2, :array_474

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [F

    fill-array-data v2, :array_484

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [F

    fill-array-data v2, :array_494

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_4a4

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_4c0

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_4dc

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [F

    fill-array-data v2, :array_4e4

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [F

    fill-array-data v2, :array_4f0

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [F

    fill-array-data v2, :array_500

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [F

    fill-array-data v2, :array_50c

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [F

    fill-array-data v2, :array_518

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [F

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v5, [F

    fill-array-data v2, :array_528

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [F

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [F

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [F

    fill-array-data v2, :array_538

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_548

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_550

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_558

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [F

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [F

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_560

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v4, [F

    fill-array-data v2, :array_568

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v5, [F

    fill-array-data v2, :array_574

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [F

    fill-array-data v2, :array_584

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHardpoints;->TURRETS:[[F

    .line 50
    const/16 v0, 0x28

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_58c

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_594

    aput-object v2, v0, v1

    new-array v1, v4, [F

    fill-array-data v1, :array_59c

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v4, [F

    fill-array-data v2, :array_5a8

    aput-object v2, v0, v1

    new-array v1, v4, [F

    fill-array-data v1, :array_5b4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [F

    fill-array-data v2, :array_5c0

    aput-object v2, v0, v1

    new-array v1, v7, [F

    fill-array-data v1, :array_5cc

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v2, v4, [F

    fill-array-data v2, :array_5e0

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_5ec

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_5f4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_5fc

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [F

    fill-array-data v2, :array_604

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [F

    fill-array-data v2, :array_610

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_61c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [F

    fill-array-data v2, :array_624

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [F

    fill-array-data v2, :array_630

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [F

    fill-array-data v2, :array_63c

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [F

    fill-array-data v2, :array_648

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [F

    fill-array-data v2, :array_654

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [F

    fill-array-data v2, :array_668

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_67c

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_684

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_68c

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_694

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_69c

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [F

    fill-array-data v2, :array_6a4

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_6b8

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_6c0

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_6c8

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_6d0

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v4, [F

    fill-array-data v2, :array_6d8

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_6e4

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_6ec

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_6f4

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_6fc

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_704

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_70c

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_714

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [F

    fill-array-data v2, :array_71c

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [F

    fill-array-data v2, :array_724

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHardpoints;->MISSILES:[[F

    return-void

    .line 8
    :array_3a0
    .array-data 4
        -0x3e4f3333    # -22.1f
        -0x40666666    # -1.2f
        0x41b40000    # 22.5f
        -0x40800000    # -1.0f
    .end array-data

    :array_3ac
    .array-data 4
        0x0
        -0x3de8cccd    # -37.8f
        0x0
        0x41a33333    # 20.4f
        0x0
        0x4255999a    # 53.4f
    .end array-data

    :array_3bc
    .array-data 4
        -0x3de46666    # -38.9f
        -0x3e633333    # -19.6f
        0x42193333    # 38.3f
        -0x3e633333    # -19.6f
        -0x41b33333    # -0.2f
        0x422e6666    # 43.6f
    .end array-data

    :array_3cc
    .array-data 4
        0x0
        -0x3cee3333    # -145.8f
        -0x3d5d3333    # -81.4f
        0x420f3333    # 35.8f
        0x42a2cccd    # 81.4f
        0x420f3333    # 35.8f
    .end array-data

    :array_3dc
    .array-data 4
        -0x41666666    # -0.3f
        -0x3d5b3333    # -82.4f
        -0x3d5f0000    # -80.5f
        0x429f6666    # 79.7f
        0x42a1999a    # 80.8f
        0x429f6666    # 79.7f
    .end array-data

    :array_3ec
    .array-data 4
        -0x3d300000    # -104.0f
        -0x3cfd0000    # -131.0f
        0x42d00000    # 104.0f
        -0x3cfd0000    # -131.0f
        -0x3d300000    # -104.0f
        0x41500000    # 13.0f
        0x42d00000    # 104.0f
        0x41500000    # 13.0f
        -0x3d300000    # -104.0f
        0x431c0000    # 156.0f
        0x42d00000    # 104.0f
        0x431c0000    # 156.0f
    .end array-data

    :array_408
    .array-data 4
        -0x3e3a6666    # -24.7f
        0x41366666    # 11.4f
        0x41c5999a    # 24.7f
        0x41366666    # 11.4f
    .end array-data

    :array_414
    .array-data 4
        0x0
        -0x3da46666    # -54.9f
        -0x3dd93333    # -41.7f
        0x40dccccd    # 6.9f
        0x4226cccd    # 41.7f
        0x40dccccd    # 6.9f
    .end array-data

    :array_424
    .array-data 4
        -0x41666666    # -0.3f
        -0x3d9b999a    # -57.1f
        -0x3d7ccccd    # -65.6f
        0x421ccccd    # 39.2f
        0x42826666    # 65.2f
        0x421c6666    # 39.1f
    .end array-data

    :array_434
    .array-data 4
        0x0
        -0x3d3f999a    # -96.2f
        -0x3d616666    # -79.3f
        0x40d9999a    # 6.8f
        0x429e999a    # 79.3f
        0x40d9999a    # 6.8f
    .end array-data

    :array_444
    .array-data 4
        -0x3d880000    # -62.0f
        0x4191999a    # 18.2f
        0x42753333    # 61.3f
        0x41900000    # 18.0f
        -0x41000000    # -0.5f
        0x429ccccd    # 78.4f
    .end array-data

    :array_454
    .array-data 4
        -0x3d96cccd    # -58.3f
        -0x3e99999a    # -14.4f
        0x4266cccd    # 57.7f
        -0x3e91999a    # -14.9f
        0x0
        0x4281999a    # 64.8f
    .end array-data

    :array_464
    .array-data 4
        0x0
        -0x3cfae666    # -133.1f
        -0x3d7dcccd    # -65.1f
        -0x3e240000    # -27.5f
        0x42823333    # 65.1f
        -0x3e240000    # -27.5f
    .end array-data

    :array_474
    .array-data 4
        0x3dcccccd    # 0.1f
        -0x3d5f999a    # -80.2f
        -0x3d330000    # -102.5f
        0x4212cccd    # 36.7f
        0x42cd999a    # 102.8f
        0x4213999a    # 36.9f
    .end array-data

    :array_484
    .array-data 4
        -0x40733333    # -1.1f
        -0x3cff6666    # -128.6f
        -0x3d1e999a    # -112.7f
        0x4264cccd    # 57.2f
        0x42dd3333    # 110.6f
        0x4266cccd    # 57.7f
    .end array-data

    :array_494
    .array-data 4
        0x0
        -0x3cde0000    # -162.0f
        0x0
        -0x3de80000    # -38.0f
        0x0
        0x42b80000    # 92.0f
    .end array-data

    :array_4a4
    .array-data 4
        -0x3d0e0000    # -121.0f
        -0x3ce50000    # -155.0f
        0x42f20000    # 121.0f
        -0x3ce50000    # -155.0f
        -0x3cfb0000    # -133.0f
        -0x3df80000    # -34.0f
        0x43050000    # 133.0f
        -0x3df80000    # -34.0f
        -0x3cfe0000    # -130.0f
        0x43560000    # 214.0f
        0x43020000    # 130.0f
        0x43560000    # 214.0f
    .end array-data

    :array_4c0
    .array-data 4
        -0x3d100000    # -120.0f
        0x42700000    # 60.0f
        0x42f00000    # 120.0f
        0x42700000    # 60.0f
        -0x3d100000    # -120.0f
        -0x3d900000    # -60.0f
        0x42f00000    # 120.0f
        -0x3d900000    # -60.0f
        -0x3c6ff333    # -288.1f
        0x412b3333    # 10.7f
        0x43900ccd    # 288.1f
        0x412b3333    # 10.7f
    .end array-data

    :array_4dc
    .array-data 4
        0x0
        -0x3fc00000    # -3.0f
    .end array-data

    :array_4e4
    .array-data 4
        -0x3e226666    # -27.7f
        -0x3dc7999a    # -46.1f
        0x41e00000    # 28.0f
        -0x3dc6cccd    # -46.3f
    .end array-data

    :array_4f0
    .array-data 4
        -0x3dd93333    # -41.7f
        -0x40666666    # -1.2f
        0x4223999a    # 40.9f
        -0x4059999a    # -1.3f
        -0x41333333    # -0.4f
        0x42473333    # 49.8f
    .end array-data

    :array_500
    .array-data 4
        -0x3d756666    # -69.3f
        -0x3efb3333    # -8.3f
        0x4288cccd    # 68.4f
        -0x3f000000    # -8.0f
    .end array-data

    :array_50c
    .array-data 4
        -0x3de53333    # -38.7f
        -0x3dca0000    # -45.5f
        0x421a6666    # 38.6f
        -0x3dca0000    # -45.5f
    .end array-data

    :array_518
    .array-data 4
        -0x3dd1999a    # -43.6f
        -0x3dc53333    # -46.7f
        0x421e6666    # 39.6f
        -0x3dc5999a    # -46.6f
        -0x40266666    # -1.7f
        0x420e6666    # 35.6f
    .end array-data

    :array_528
    .array-data 4
        -0x3dbf999a    # -48.1f
        -0x3ddacccd    # -41.3f
        0x423e0000    # 47.5f
        -0x3ddacccd    # -41.3f
        -0x41666666    # -0.3f
        0x42680000    # 58.0f
    .end array-data

    :array_538
    .array-data 4
        -0x40b33333    # -0.8f
        -0x3d880000    # -62.0f
        -0x40800000    # -1.0f
        0x40a66666    # 5.2f
        -0x40e66666    # -0.6f
        0x428f3333    # 71.6f
    .end array-data

    :array_548
    .array-data 4
        0x40c33333    # 6.1f
        -0x3dfe0000    # -32.5f
    .end array-data

    :array_550
    .array-data 4
        0x4101999a    # 8.1f
        -0x3ef00000    # -9.0f
    .end array-data

    :array_558
    .array-data 4
        0x414b3333    # 12.7f
        -0x3ed1999a    # -10.9f
    .end array-data

    :array_560
    .array-data 4
        0x4181999a    # 16.2f
        0x40dccccd    # 6.9f
    .end array-data

    :array_568
    .array-data 4
        -0x3e8ccccd    # -15.2f
        0x3e99999a    # 0.3f
        0x41733333    # 15.2f
        0x3e99999a    # 0.3f
    .end array-data

    :array_574
    .array-data 4
        0x0
        -0x3de53333    # -38.7f
        -0x3e69999a    # -18.8f
        0x41b00000    # 22.0f
        0x41966666    # 18.8f
        0x41b00000    # 22.0f
    .end array-data

    :array_584
    .array-data 4
        -0x3e9b3333    # -14.3f
        -0x3ef66666    # -8.6f
    .end array-data

    .line 50
    :array_58c
    .array-data 4
        0x41066666    # 8.4f
        -0x3e533333    # -21.6f
    .end array-data

    :array_594
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_59c
    .array-data 4
        -0x3e500000    # -22.0f
        -0x3d2ecccd    # -104.6f
        0x41b00000    # 22.0f
        -0x3d2ecccd    # -104.6f
    .end array-data

    :array_5a8
    .array-data 4
        -0x3de5999a    # -38.6f
        -0x3d436666    # -94.3f
        0x421a6666    # 38.6f
        -0x3d436666    # -94.3f
    .end array-data

    :array_5b4
    .array-data 4
        -0x3dd13333    # -43.7f
        -0x3cb6199a    # -201.9f
        0x422ecccd    # 43.7f
        -0x3cb6199a    # -201.9f
    .end array-data

    :array_5c0
    .array-data 4
        -0x3d846666    # -62.9f
        -0x3ced4ccd    # -146.7f
        0x427b999a    # 62.9f
        -0x3ced4ccd    # -146.7f
    .end array-data

    :array_5cc
    .array-data 4
        -0x3d1e0000    # -113.0f
        0x439f0000    # 318.0f
        0x42e20000    # 113.0f
        0x439f0000    # 318.0f
        -0x3d900000    # -60.0f
        -0x3c6a0000    # -300.0f
        0x42700000    # 60.0f
        -0x3c6a0000    # -300.0f
    .end array-data

    :array_5e0
    .array-data 4
        -0x3e7e6666    # -16.2f
        -0x3e6c0000    # -18.5f
        0x4181999a    # 16.2f
        -0x3e6c0000    # -18.5f
    .end array-data

    :array_5ec
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_5f4
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_5fc
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_604
    .array-data 4
        -0x3d973333    # -58.2f
        -0x3d156666    # -117.3f
        0x4268cccd    # 58.2f
        -0x3d156666    # -117.3f
    .end array-data

    :array_610
    .array-data 4
        -0x3dbc6666    # -48.9f
        -0x3d4a6666    # -90.8f
        0x4243999a    # 48.9f
        -0x3d4a6666    # -90.8f
    .end array-data

    :array_61c
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_624
    .array-data 4
        -0x3d40cccd    # -95.6f
        -0x3cb8999a    # -199.4f
        0x42bf3333    # 95.6f
        -0x3cb8999a    # -199.4f
    .end array-data

    :array_630
    .array-data 4
        -0x3d913333    # -59.7f
        -0x3d040000    # -126.0f
        0x426ecccd    # 59.7f
        -0x3d040000    # -126.0f
    .end array-data

    :array_63c
    .array-data 4
        -0x3d6e0000    # -73.0f
        -0x3cfb4ccd    # -132.7f
        0x42920000    # 73.0f
        -0x3cfb4ccd    # -132.7f
    .end array-data

    :array_648
    .array-data 4
        -0x3c6a0000    # -300.0f
        -0x3de00000    # -40.0f
        0x43960000    # 300.0f
        -0x3de00000    # -40.0f
    .end array-data

    :array_654
    .array-data 4
        0x0
        -0x3c778000    # -273.0f
        0x0
        0x43770000    # 247.0f
        -0x3cea0000    # -150.0f
        0x42700000    # 60.0f
        0x43160000    # 150.0f
        0x42700000    # 60.0f
    .end array-data

    :array_668
    .array-data 4
        -0x3ca40000    # -220.0f
        0x0
        0x435c0000    # 220.0f
        0x0
        -0x3c380000    # -400.0f
        0x41900000    # 18.0f
        0x43c80000    # 400.0f
        0x41900000    # 18.0f
    .end array-data

    :array_67c
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_684
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_68c
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_694
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_69c
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6a4
    .array-data 4
        -0x3d2e6666    # -104.8f
        0x4227999a    # 41.9f
        0x42d1999a    # 104.8f
        0x4227999a    # 41.9f
        -0x3d4c0000    # -90.0f
        0x42dc0000    # 110.0f
        0x42b40000    # 90.0f
        0x42dc0000    # 110.0f
    .end array-data

    :array_6b8
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6c0
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6c8
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6d0
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6d8
    .array-data 4
        -0x3d54999a    # -85.7f
        0x42bc999a    # 94.3f
        0x42ab6666    # 85.7f
        0x42bc999a    # 94.3f
    .end array-data

    :array_6e4
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6ec
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6f4
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_6fc
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_704
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_70c
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_714
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_71c
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data

    :array_724
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
