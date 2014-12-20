.class public Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
.super Ljava/lang/Object;
.source "TwEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 1.0f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 1.0f

.field public static MAX_EDGE_SCALE_Y:F = 0.0f

.field private static final MAX_GLOW_HEIGHT:F = 6.0f

.field public static MAX_GLOW_SCALE_Y:F = 0.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x10

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field public static final STATE_ABSORB:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PULL:I = 0x1

.field public static final STATE_PULL_DECAY:I = 0x4

.field public static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private isTouchWiz:Z

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    const/high16 v0, 0x3f80

    sput v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_EDGE_SCALE_Y:F

    .line 289
    const/high16 v0, 0x40c0

    sput v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_GLOW_SCALE_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MIN_WIDTH:I

    .line 156
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 291
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x10805ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 172
    const v1, 0x10805f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4396

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    .line 175
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 176
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 482
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 483
    .local v3, time:J
    iget-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 485
    .local v2, t:F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 487
    .local v1, interp:F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    .line 488
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 489
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 490
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 492
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 493
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 496
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 497
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 499
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 500
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 501
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 502
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 505
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 506
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 507
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 508
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 511
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 512
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 513
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 515
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 516
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 517
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 518
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 521
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 522
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 523
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 524
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 529
    :pswitch_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 531
    .local v0, factor:F
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 533
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_0

    .line 529
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 536
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private update2()V
    .locals 5

    .prologue
    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 463
    .local v1, time:J
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 464
    .local v0, t:F
    const v3, 0x3f7fbe77

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 465
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 467
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

    if-eqz v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;->onGlowRecedeAnimationStart()V

    .line 473
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_0

    .line 470
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "GlowRecedeAnimationTrigger need to be implemented"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    .line 419
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v8, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->update2()V

    .line 425
    :goto_0
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 426
    .local v1, edgeHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 427
    .local v3, edgeWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 428
    .local v5, glowHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 430
    .local v7, glowWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 432
    int-to-float v8, v5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x40c0

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 434
    .local v4, glowBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_1

    .line 436
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 437
    .local v6, glowLeft:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    .end local v6           #glowLeft:I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 447
    int-to-float v8, v1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 448
    .local v0, edgeBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_2

    .line 450
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 451
    .local v2, edgeLeft:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    .end local v2           #edgeLeft:I
    :goto_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 458
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    return v8

    .line 422
    .end local v0           #edgeBottom:I
    .end local v1           #edgeHeight:I
    .end local v3           #edgeWidth:I
    .end local v4           #glowBottom:I
    .end local v5           #glowHeight:I
    .end local v7           #glowWidth:I
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->update()V

    goto/16 :goto_0

    .line 440
    .restart local v1       #edgeHeight:I
    .restart local v3       #edgeWidth:I
    .restart local v4       #glowBottom:I
    .restart local v5       #glowHeight:I
    .restart local v7       #glowWidth:I
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 454
    .restart local v0       #edgeBottom:I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 458
    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 211
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    return v0
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v2, :cond_2

    .line 199
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 362
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 363
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 365
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 366
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 370
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 371
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 374
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 375
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 379
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 381
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 391
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    .line 396
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 398
    return-void
.end method

.method public onAbsorb2()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 402
    return-void
.end method

.method public onPull(F)V
    .locals 9
    .parameter "deltaDistance"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 226
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 227
    .local v2, now:J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 274
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 231
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 233
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v4, :cond_4

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->updatePullState()V

    .line 242
    :goto_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 243
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 245
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    .line 246
    const/high16 v4, 0x40e0

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 249
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 252
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 253
    .local v1, glowChange:F
    cmpl-float v4, p1, v8

    if-lez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    .line 254
    neg-float v1, v1

    .line 256
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    .line 257
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 261
    :cond_3
    const/high16 v4, 0x40c0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    const/high16 v6, 0x4180

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 268
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 270
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 271
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 272
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 273
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0

    .line 236
    .end local v0           #distance:F
    .end local v1           #glowChange:F
    :cond_4
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 238
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 239
    const/high16 v4, 0x4327

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto/16 :goto_1
.end method

.method public onPull2(F)V
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3f80

    .line 303
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 304
    const/high16 p1, 0x3f80

    .line 306
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 308
    const/high16 v0, 0x40c0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 310
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 311
    sget v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_EDGE_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 312
    sget v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_GLOW_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 313
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 330
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 335
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 336
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 337
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 338
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 340
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 341
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 342
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 343
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    .line 345
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 346
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public onRelease2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 317
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 319
    return-void
.end method

.method public setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

    .line 544
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 185
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    .line 186
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mHeight:I

    .line 187
    return-void
.end method

.method public setTouchWiz(Z)V
    .locals 0
    .parameter "touchwiz"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    .line 295
    return-void
.end method

.method public updatePullState()V
    .locals 4

    .prologue
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 278
    .local v0, now:J
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 282
    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 283
    const/high16 v2, 0x4327

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto :goto_0
.end method
