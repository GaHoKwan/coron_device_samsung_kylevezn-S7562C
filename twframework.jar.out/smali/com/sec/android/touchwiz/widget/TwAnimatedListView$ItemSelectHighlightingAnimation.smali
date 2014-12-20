.class public Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemSelectHighlightingAnimation"
.end annotation


# instance fields
.field private mDelayTime:I

.field private mDuration:I

.field private mFromX:F

.field private mFromY:F

.field private mHalfOfAnimationPassed:Z

.field private mHitRect:Landroid/graphics/Rect;

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field private mStartTime:J

.field private mToX:F

.field private mToY:F


# direct methods
.method protected constructor <init>(Z)V
    .locals 1
    .parameter "retainOnFinish"

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    .line 553
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHitRect:Landroid/graphics/Rect;

    .line 554
    return-void
.end method

.method private switchToScaleDown()V
    .locals 3

    .prologue
    .line 603
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    .line 604
    .local v0, mSwapX:F
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    .line 605
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    .line 607
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    .line 608
    .local v1, mSwapY:F
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    .line 609
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    .line 610
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 6
    .parameter "curUpTime"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 618
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mStartTime:J

    sub-long v0, p1, v2

    .line 619
    .local v0, elapsed:J
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    if-lez v2, :cond_4

    .line 620
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 621
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    .line 630
    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 631
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    .line 633
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v3, 0x3f00

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    if-nez v2, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->switchToScaleDown()V

    .line 635
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    .line 637
    :cond_1
    return-void

    .line 622
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    if-ge v2, v3, :cond_3

    .line 623
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    goto :goto_0

    .line 626
    :cond_3
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    goto :goto_0

    .line 628
    :cond_4
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 580
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 582
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 583
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    .line 585
    :cond_0
    const/high16 v0, 0x3f80

    .line 586
    .local v0, sx:F
    const/high16 v1, 0x3f80

    .line 588
    .local v1, sy:F
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    .line 589
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 591
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    .line 592
    :cond_3
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 595
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 596
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v1, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mPivotX:F

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 598
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 599
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 600
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    return v0
.end method

.method public isFinished()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 641
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    if-nez v4, :cond_2

    .line 642
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    if-nez v4, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 642
    goto :goto_0

    .line 643
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 644
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mStartTime:J

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isListItemSelectionAnimating()Z
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationTimings(JI)V
    .locals 2
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 655
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .end local p1
    :cond_0
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mStartTime:J

    .line 656
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    .line 657
    return-void
.end method

.method public setScaleUpParameters(FFFFFF)V
    .locals 0
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    .line 569
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    .line 570
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    .line 571
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    .line 572
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    .line 574
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mPivotX:F

    .line 575
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->mPivotY:F

    .line 576
    return-void
.end method
