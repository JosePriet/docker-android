.class public Lfr/testudo/spacecorsair/display/android/DashboardLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final UNEVEN_GRID_PENALTY_MULTIPLIER:I = 0xa


# instance fields
.field private mMaxChildHeight:I

.field private mMaxChildWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v1, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    .line 33
    iput v1, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    .line 33
    iput v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    .line 33
    iput v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 23

    .prologue
    .line 95
    sub-int v8, p4, p2

    .line 96
    sub-int v9, p5, p3

    .line 98
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->getChildCount()I

    move-result v10

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v1, 0x0

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    :goto_f
    if-ge v2, v10, :cond_25

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_22

    .line 102
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 107
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 110
    :cond_25
    if-nez v1, :cond_28

    .line 188
    :cond_27
    return-void

    .line 116
    :cond_28
    const v3, 0x7fffffff

    .line 123
    const/4 v2, 0x1

    .line 127
    :goto_2c
    add-int/lit8 v4, v1, -0x1

    div-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x1

    .line 129
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    mul-int/2addr v4, v2

    sub-int v4, v8, v4

    add-int/lit8 v6, v2, 0x1

    div-int v7, v4, v6

    .line 130
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    mul-int/2addr v4, v5

    sub-int v4, v9, v4

    add-int/lit8 v6, v5, 0x1

    div-int v6, v4, v6

    .line 132
    sub-int v4, v6, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 133
    mul-int v11, v5, v2

    if-eq v11, v1, :cond_53

    .line 134
    mul-int/lit8 v4, v4, 0xa

    .line 137
    :cond_53
    if-ge v4, v3, :cond_8c

    .line 143
    const/4 v3, 0x1

    if-ne v5, v3, :cond_a9

    move v1, v5

    move v3, v6

    move v4, v7

    .line 161
    :goto_5b
    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 162
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 165
    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, v7

    sub-int v3, v8, v3

    div-int v8, v3, v2

    .line 166
    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, v11

    sub-int v3, v9, v3

    div-int v9, v3, v1

    .line 170
    const/4 v4, 0x0

    .line 171
    const/4 v3, 0x0

    move v6, v3

    :goto_76
    if-ge v6, v10, :cond_27

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 173
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_ad

    move v3, v4

    .line 171
    :goto_87
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto :goto_76

    .line 148
    :cond_8c
    add-int/lit8 v2, v2, -0x1

    .line 149
    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 150
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    mul-int/2addr v3, v2

    sub-int v3, v8, v3

    add-int/lit8 v4, v2, 0x1

    div-int v4, v3, v4

    .line 151
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    mul-int/2addr v3, v1

    sub-int v3, v9, v3

    add-int/lit8 v5, v1, 0x1

    div-int/2addr v3, v5

    goto :goto_5b

    .line 155
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2c

    .line 177
    :cond_ad
    div-int v13, v4, v2

    .line 178
    rem-int v3, v4, v2

    .line 180
    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, v7

    mul-int v14, v8, v3

    add-int/2addr v14, v5

    .line 181
    add-int/lit8 v5, v13, 0x1

    mul-int/2addr v5, v11

    mul-int v15, v9, v13

    add-int/2addr v15, v5

    .line 183
    if-nez v7, :cond_d3

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_d3

    move/from16 v5, p4

    :goto_c5
    if-nez v11, :cond_d7

    add-int/lit8 v3, v1, -0x1

    if-ne v13, v3, :cond_d7

    move/from16 v3, p5

    :goto_cd
    invoke-virtual {v12, v14, v15, v5, v3}, Landroid/view/View;->layout(IIII)V

    .line 186
    add-int/lit8 v3, v4, 0x1

    goto :goto_87

    .line 183
    :cond_d3
    add-int v3, v14, v8

    move v5, v3

    goto :goto_c5

    :cond_d7
    add-int v3, v15, v9

    goto :goto_cd
.end method

.method protected onMeasure(II)V
    .registers 13

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0x8

    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    .line 50
    iput v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 59
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->getChildCount()I

    move-result v4

    move v1, v0

    .line 60
    :goto_20
    if-ge v1, v4, :cond_4b

    .line 61
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_2f

    .line 60
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 66
    :cond_2f
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 68
    iget v6, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    .line 69
    iget v6, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    goto :goto_2c

    .line 74
    :cond_4b
    iget v1, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 76
    iget v2, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 79
    :goto_57
    if-ge v0, v4, :cond_6a

    .line 80
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v8, :cond_66

    .line 79
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 85
    :cond_66
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_63

    .line 88
    :cond_6a
    iget v0, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildWidth:I

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->mMaxChildHeight:I

    invoke-static {v1, p2}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/display/android/DashboardLayout;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method
