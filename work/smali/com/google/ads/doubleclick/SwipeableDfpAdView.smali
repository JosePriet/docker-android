.class public Lcom/google/ads/doubleclick/SwipeableDfpAdView;
.super Lcom/google/ads/doubleclick/DfpAdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public setSwipeableEventListener(Lcom/google/ads/SwipeableAdListener;)V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/ads/doubleclick/DfpAdView;->setSwipeableEventListener(Lcom/google/ads/SwipeableAdListener;)V

    .line 47
    return-void
.end method
