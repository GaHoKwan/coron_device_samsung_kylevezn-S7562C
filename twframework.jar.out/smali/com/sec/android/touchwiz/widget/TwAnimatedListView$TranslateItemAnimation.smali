.class public Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateItemAnimation"
.end annotation


# static fields
.field static final INVALID_TIME:J = 0x7fffffffffffffffL

.field static final TRANSLATE_SPEED:F = 0.6f


# instance fields
.field mAnchorDeltaX:I

.field mAnchorDeltaY:I

.field mAnchorX:I

.field mAnchorY:I

.field private mCache:Landroid/graphics/Bitmap;

.field mDelayTime:I

.field mDeltaX:I

.field mDeltaY:I

.field mDuration:I

.field mOffsetXDest:I

.field mOffsetYDest:I

.field private mPaint:Landroid/graphics/Paint;

.field mProgress:F

.field private mProgressWithoutDelay:F

.field mStartTime:J

.field mTmpRect:Landroid/graphics/Rect;

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "retainOnFinish"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 295
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 296
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 297
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 298
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 299
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 300
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 301
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 6
    .parameter "curUpTime"

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    .line 444
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mStartTime:J

    sub-long v0, p1, v2

    .line 445
    .local v0, elapsed:J
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-lez v2, :cond_4

    .line 446
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 447
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 456
    :goto_0
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 457
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 458
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 459
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 460
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 461
    :cond_1
    return-void

    .line 448
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-ge v2, v3, :cond_3

    .line 449
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0

    .line 452
    :cond_3
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0

    .line 454
    :cond_4
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0
.end method

.method public createDrawingCache(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    .line 468
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    .line 469
    .local v0, cacheEnable:Z
    if-nez v0, :cond_4

    .line 470
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 473
    :goto_0
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 474
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onPreDraw()Z

    .line 475
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 477
    .local v1, tempCache:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 478
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    .line 479
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 480
    if-nez v0, :cond_3

    .line 481
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 482
    :cond_3
    return-void

    .line 472
    .end local v1           #tempCache:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method public delay(I)V
    .locals 1
    .parameter "timeInMillisec"

    .prologue
    .line 352
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 353
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/high16 v4, 0x3f80

    .line 356
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 357
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 358
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 359
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 360
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 362
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 367
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 368
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 374
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 375
    return-void

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getDestOffsetX()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method public getDestOffsetY()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 6
    .parameter "outTransform"

    .prologue
    const/high16 v5, 0x3f80

    .line 512
    sget v1, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p1, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 513
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 514
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 515
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 517
    return-void
.end method

.method public isFinished()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-nez v4, :cond_2

    .line 406
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    if-nez v4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 406
    goto :goto_0

    .line 407
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 408
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mStartTime:J

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public move(IIII)V
    .locals 0
    .parameter "anchorX"
    .parameter "anchorDeltaX"
    .parameter "anchorY"
    .parameter "anchorDeltaY"

    .prologue
    .line 412
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    .line 413
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    .line 414
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    .line 415
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    .line 416
    return-void
.end method

.method public setAnimationTimings(JF)V
    .locals 2
    .parameter "startTime"
    .parameter "durationMultiplicator"

    .prologue
    .line 433
    const/high16 v1, 0x4396

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 434
    .local v0, duration:I
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    .line 435
    return-void
.end method

.method public setAnimationTimings(JI)V
    .locals 1
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 425
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mStartTime:J

    .line 426
    if-nez p3, :cond_0

    .line 427
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    .line 420
    return-void
.end method

.method public setXSpeedFactor(F)V
    .locals 1
    .parameter "xFactor"

    .prologue
    .line 384
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 385
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 386
    :cond_0
    return-void
.end method

.method public setYSpeedFactor(F)V
    .locals 1
    .parameter "yFactor"

    .prologue
    .line 395
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 396
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 397
    :cond_0
    return-void
.end method

.method public translate(IIII)V
    .locals 2
    .parameter "startOffsetX"
    .parameter "deltaX"
    .parameter "startOffsetY"
    .parameter "deltaY"

    .prologue
    .line 340
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 341
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    .line 342
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 343
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    .line 344
    return-void
.end method
