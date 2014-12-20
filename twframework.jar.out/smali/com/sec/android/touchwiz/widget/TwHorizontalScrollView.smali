.class public Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "TwHorizontalScrollView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwHorizontalScrollView"

.field protected static final TW_AIR_VIEW_WINSET:Z


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field private mBounceEnabled:Z

.field mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field protected mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

.field protected mEndEffectEnabled:Z

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverAreaWidth_DP:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_BOUNCE:Z

    .line 91
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_SCROLL:Z

    .line 93
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 259
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 122
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 129
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 136
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 153
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 169
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 180
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    .line 210
    const/16 v2, 0x19

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth_DP:I

    .line 212
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    .line 217
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I

    .line 218
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I

    .line 219
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 220
    const/16 v2, 0x12c

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollTimeInterval:I

    .line 221
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 222
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 227
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 232
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    .line 237
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 242
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 247
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 252
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isHoveringUIEnabled:Z

    .line 2431
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I

    .line 264
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initScrollView()V

    .line 266
    sget-object v2, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setFillViewport(Z)V

    .line 272
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isHoveringUIEnabled:Z

    .line 283
    return-void

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    const-string v2, "TwHorizontalScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 413
    .local v1, childWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 415
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2401
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 2402
    :cond_0
    const/4 p1, 0x0

    .line 2407
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 2404
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 2405
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1595
    if-eqz p1, :cond_0

    .line 1596
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1597
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawBounceView(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, -0x3d4c

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 2166
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->areBounceViewsReady()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2168
    :cond_1
    const v10, 0x3e99999a

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    mul-float v0, v10, v11

    .line 2169
    .local v0, bounceExtent:F
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewMargin()I

    move-result v2

    .line 2173
    .local v2, bounceViewMargin:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2174
    .local v5, horizScrollViewChildWidth:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2176
    .local v4, horizScrollViewChildHeight:I
    :goto_2
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    if-gtz v10, :cond_2

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    if-gtz v10, :cond_2

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    if-gtz v10, :cond_2

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    if-lez v10, :cond_a

    :cond_2
    move v6, v9

    .line 2177
    .local v6, needToClip:Z
    :goto_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2178
    .local v3, clippedRect:Landroid/graphics/RectF;
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v10, v10

    iput v10, v3, Landroid/graphics/RectF;->left:F

    .line 2179
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v10, v10

    iput v10, v3, Landroid/graphics/RectF;->top:F

    .line 2180
    iget v10, v3, Landroid/graphics/RectF;->left:F

    int-to-float v11, v5

    add-float/2addr v10, v11

    iput v10, v3, Landroid/graphics/RectF;->right:F

    .line 2181
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iput v10, v3, Landroid/graphics/RectF;->bottom:F

    .line 2183
    cmpl-float v10, v0, v12

    if-lez v10, :cond_5

    .line 2184
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v1

    .line 2186
    .local v1, bounceViewHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2189
    if-eqz v6, :cond_3

    .line 2190
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 2193
    :cond_3
    int-to-float v10, v1

    sub-float v7, v0, v10

    .line 2194
    .local v7, translateX:F
    cmpl-float v10, v7, v12

    if-lez v10, :cond_4

    .line 2195
    const/4 v7, 0x0

    .line 2199
    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v10

    sub-float/2addr v7, v10

    .line 2201
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v11, v2

    add-int/2addr v11, v4

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2202
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2203
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v10, p1, v9}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->draw(Landroid/graphics/Canvas;Z)V

    .line 2204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2205
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2209
    .end local v1           #bounceViewHeight:I
    .end local v7           #translateX:F
    :cond_5
    cmpg-float v9, v0, v12

    if-gez v9, :cond_0

    .line 2210
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9, v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v1

    .line 2211
    .restart local v1       #bounceViewHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2214
    if-eqz v6, :cond_6

    .line 2215
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 2218
    :cond_6
    int-to-float v9, v5

    add-float v7, v9, v0

    .line 2219
    .restart local v7       #translateX:F
    sub-int v9, v5, v1

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_7

    .line 2220
    sub-int v9, v5, v1

    int-to-float v7, v9

    .line 2223
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v9

    add-float/2addr v7, v9

    .line 2224
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v9, v9

    add-float/2addr v9, v7

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v10, v2

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2225
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2226
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9, p1, v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->draw(Landroid/graphics/Canvas;Z)V

    .line 2227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2228
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .end local v1           #bounceViewHeight:I
    .end local v3           #clippedRect:Landroid/graphics/RectF;
    .end local v4           #horizScrollViewChildHeight:I
    .end local v5           #horizScrollViewChildWidth:I
    .end local v6           #needToClip:Z
    .end local v7           #translateX:F
    :cond_8
    move v5, v8

    .line 2173
    goto/16 :goto_1

    .restart local v5       #horizScrollViewChildWidth:I
    :cond_9
    move v4, v8

    .line 2174
    goto/16 :goto_2

    .restart local v4       #horizScrollViewChildHeight:I
    :cond_a
    move v6, v8

    .line 2176
    goto/16 :goto_3
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1331
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1332
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1341
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1343
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1344
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1345
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1346
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1347
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1349
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1355
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1357
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1359
    move-object v1, v5

    .line 1360
    move v3, v7

    .line 1344
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1355
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1362
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 1366
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1367
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1373
    move-object v1, v5

    goto :goto_2

    .line 1362
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1376
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 1381
    move-object v1, v5

    .line 1382
    const/4 v3, 0x1

    goto :goto_2

    .line 1383
    :cond_7
    if-eqz v6, :cond_0

    .line 1388
    move-object v1, v5

    goto :goto_2

    .line 1395
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 1302
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1303
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 1304
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1306
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1311
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1269
    const/4 v1, 0x0

    .line 1270
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1271
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1272
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1275
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 564
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 565
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 570
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_0
    return v2
.end method

.method private initBounceView()V
    .locals 2

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->initBounceView(Landroid/content/Context;)V

    .line 2094
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 575
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 326
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 327
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 328
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 329
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTouchSlop:I

    .line 330
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMinimumVelocity:I

    .line 331
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMaximumVelocity:I

    .line 332
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverscrollDistance:I

    .line 333
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverflingDistance:I

    .line 335
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 336
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setOrientation(I)V

    .line 337
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 338
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 341
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    .line 343
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initBounceView()V

    .line 345
    :cond_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 583
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 585
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1574
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2012
    if-ne p1, p2, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return v1

    .line 2016
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2017
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1583
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1585
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1145
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1146
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1150
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1151
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 1152
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 1153
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1154
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1157
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 592
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1484
    const/4 v4, 0x1

    .line 1486
    .local v4, handled:Z
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1487
    .local v6, width:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1488
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1489
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1491
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1492
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1493
    move-object v5, p0

    .line 1496
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1497
    const/4 v4, 0x0

    .line 1503
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    .line 1504
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1506
    :cond_1
    return v4

    .line 1489
    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1499
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1500
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1499
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1814
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1816
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1818
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1819
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 1821
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1832
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1833
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1834
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1835
    if-eqz p2, :cond_2

    .line 1836
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->scrollBy(II)V

    .line 1841
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1833
    goto :goto_0

    .line 1838
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 377
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 386
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1518
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1519
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1520
    const/4 v0, 0x0

    .line 1522
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1524
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1526
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1527
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1528
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1529
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1530
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    .line 1531
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1554
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 1562
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1563
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1564
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1566
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1534
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1536
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1537
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 1548
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1551
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .line 1538
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1540
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1542
    .local v1, daRight:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1544
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1545
    sub-int v6, v1, v5

    goto :goto_1

    .line 1551
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1671
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v0

    .line 1681
    .local v0, extent:I
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 3

    .prologue
    .line 1687
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1700
    .local v0, offset:I
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1653
    .local v1, count:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1654
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    .line 1667
    .end local v0           #contentWidth:I
    :goto_0
    return v0

    .line 1658
    .restart local v0       #contentWidth:I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1659
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1660
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1661
    .local v2, overscrollRight:I
    if-gez v4, :cond_2

    .line 1662
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1667
    goto :goto_0

    .line 1663
    :cond_2
    if-le v4, v2, :cond_1

    .line 1664
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 21

    .prologue
    .line 1733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1754
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollX:I

    .line 1755
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    .line 1756
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v19

    .line 1757
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v20

    .line 1759
    .local v20, y:I
    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    move/from16 v0, v20

    if-eq v7, v0, :cond_2

    .line 1760
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 1761
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v15

    .line 1762
    .local v15, overscrollMode:I
    if-eqz v15, :cond_1

    const/4 v3, 0x1

    if-ne v15, v3, :cond_4

    if-lez v8, :cond_4

    :cond_1
    const/4 v13, 0x1

    .line 1765
    .local v13, canOverscroll:Z
    :goto_0
    sub-int v4, v19, v6

    sub-int v5, v20, v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverflingDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 1766
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1768
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_6

    if-eqz v13, :cond_6

    .line 1769
    if-gez v19, :cond_5

    if-ltz v6, :cond_5

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1798
    .end local v8           #range:I
    .end local v13           #canOverscroll:Z
    .end local v15           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1801
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1803
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_3
    return-void

    .line 1762
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v8       #range:I
    .restart local v15       #overscrollMode:I
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 1771
    .restart local v13       #canOverscroll:Z
    :cond_5
    move/from16 v0, v19

    if-le v0, v8, :cond_2

    if-gt v6, v8, :cond_2

    .line 1772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1774
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1775
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1776
    .local v14, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result v16

    .line 1778
    .local v16, tempX:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result v17

    .line 1783
    .local v17, tempY:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1785
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity(Z)F

    move-result v18

    .line 1788
    .local v18, velocity:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1789
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollTo(II)V

    .line 1791
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_BOUNCE:Z

    if-eqz v3, :cond_8

    .line 1792
    const-string v3, "TwHorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScroll:: ActualY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ScrollerVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1853
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1910
    :cond_0
    :goto_0
    return v5

    .line 1856
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1857
    .local v6, width:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1858
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1860
    .local v4, screenRight:I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1863
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1864
    add-int/2addr v3, v1

    .line 1868
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1869
    sub-int/2addr v4, v1

    .line 1872
    :cond_3
    const/4 v5, 0x0

    .line 1874
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1879
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1881
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1888
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1889
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1890
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1892
    goto :goto_0

    .line 1884
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1892
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1898
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1900
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1908
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1903
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 739
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v4, v9

    .line 740
    .local v4, isHoveringOn:Z
    :goto_0
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering_list_scroll"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v3, v9

    .line 742
    .local v3, isHoverListScrollOn:Z
    :goto_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    if-nez v11, :cond_0

    .line 743
    new-instance v11, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$1;)V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    .line 745
    :cond_0
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isHoveringUIEnabled:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_5

    .line 746
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 898
    :cond_2
    :goto_2
    return v9

    .end local v3           #isHoverListScrollOn:Z
    .end local v4           #isHoveringOn:Z
    :cond_3
    move v4, v10

    .line 739
    goto :goto_0

    .restart local v4       #isHoveringOn:Z
    :cond_4
    move v3, v10

    .line 740
    goto :goto_1

    .line 749
    .restart local v3       #isHoverListScrollOn:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 750
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v8, v11

    .line 751
    .local v8, y:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 752
    .local v0, childCount:I
    const/4 v1, 0x0

    .line 753
    .local v1, contentRightSide:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 755
    .local v6, range:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-gtz v11, :cond_6

    .line 756
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth_DP:I

    int-to-float v11, v11

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v9, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    .line 761
    :cond_6
    if-eqz v0, :cond_7

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 765
    :cond_7
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-le v7, v11, :cond_8

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    sub-int v11, v1, v11

    if-lt v7, v11, :cond_9

    :cond_8
    if-lez v6, :cond_9

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v13, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v13, :cond_d

    .line 768
    :cond_9
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 769
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 771
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_0
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :cond_a
    :goto_3
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eq v11, v9, :cond_b

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    if-eqz v9, :cond_c

    .line 778
    :cond_b
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 780
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_1
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 786
    :cond_c
    :goto_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 787
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 788
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 790
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_2

    .line 772
    :catch_0
    move-exception v2

    .line 773
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "TwHorizontalScrollView"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 781
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 782
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 793
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_d
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v11, :cond_e

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 796
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 833
    :pswitch_1
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_10

    .line 834
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 835
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 836
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 798
    :pswitch_2
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 800
    if-ltz v7, :cond_f

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-gt v7, v10, :cond_f

    .line 802
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 805
    const/16 v10, 0x11

    const/4 v11, -0x1

    :try_start_2
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 809
    :goto_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 810
    .local v5, msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 811
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 812
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 806
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 807
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 814
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_f
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v1, v10

    if-lt v7, v10, :cond_2

    if-gt v7, v1, :cond_2

    .line 816
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 819
    const/16 v10, 0xd

    const/4 v11, -0x1

    :try_start_3
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 823
    :goto_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 824
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 825
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 826
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 820
    .end local v5           #msg:Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 821
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 839
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_10
    if-ltz v7, :cond_12

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-gt v7, v10, :cond_12

    .line 841
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 844
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_11

    .line 846
    const/16 v10, 0x11

    const/4 v11, -0x1

    :try_start_4
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 852
    :cond_11
    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 853
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 854
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 855
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 847
    .end local v5           #msg:Landroid/os/Message;
    :catch_4
    move-exception v2

    .line 848
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 857
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_12
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v1, v10

    if-lt v7, v10, :cond_2

    if-gt v7, v1, :cond_2

    .line 859
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 862
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_13

    .line 864
    const/16 v10, 0xd

    const/4 v11, -0x1

    :try_start_5
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 870
    :cond_13
    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 871
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 872
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 873
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 865
    .end local v5           #msg:Landroid/os/Message;
    :catch_5
    move-exception v2

    .line 866
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 879
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 880
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 884
    :cond_14
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_6
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 889
    :goto_9
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 890
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 891
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 892
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 893
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 885
    :catch_6
    move-exception v2

    .line 886
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 796
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 2236
    const v30, 0x3e99999a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v31, v0

    mul-float v7, v30, v31

    .line 2237
    .local v7, bounceExtent:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2241
    .local v4, absBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    if-lez v30, :cond_11

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 2245
    .local v16, horizScrollViewChildWidth:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v21

    .line 2246
    .local v21, overscrollMode:I
    if-eqz v21, :cond_0

    const/16 v30, 0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v30

    if-lez v30, :cond_12

    :cond_0
    const/4 v11, 0x1

    .line 2250
    .local v11, drawBounceView:Z
    :goto_1
    const/16 v30, 0x0

    cmpl-float v30, v7, v30

    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->cancelTextShakeAnimation()V

    .line 2255
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v26

    .line 2256
    .local v26, saveCount:I
    const/high16 v12, 0x3f80

    .line 2257
    .local v12, fadeStrength:F
    const/16 v17, 0x0

    .line 2258
    .local v17, initialFadeHeight:F
    const/4 v5, 0x0

    .line 2260
    .local v5, actualFadeHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v18, v0

    .line 2261
    .local v18, left:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v28, v0

    .line 2262
    .local v28, top:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v24, v18, v30

    .line 2263
    .local v24, right:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v6, v0

    .line 2264
    .local v6, bottom:F
    const/4 v13, 0x0

    .line 2266
    .local v13, fadingEdgeOffset:F
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    .line 2267
    .local v19, leftViewRect:Landroid/graphics/RectF;
    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    .line 2269
    .local v25, rightViewRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    if-eqz v11, :cond_5

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewFadingEdgeLength()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    cmpl-float v30, v7, v30

    if-lez v30, :cond_13

    const/16 v30, 0x1

    :goto_2
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v8

    .line 2274
    .local v8, bounceViewHeight:I
    const/4 v14, 0x4

    .line 2276
    .local v14, flags:I
    int-to-float v0, v8

    move/from16 v30, v0

    const v31, 0x3eaa7efa

    mul-float v20, v30, v31

    .line 2277
    .local v20, maxFadeHeight:F
    cmpg-float v30, v4, v20

    if-gez v30, :cond_2

    .line 2278
    div-float v30, v4, v20

    mul-float v12, v12, v30

    .line 2281
    :cond_2
    mul-float v5, v17, v12

    .line 2283
    move v13, v4

    .line 2284
    int-to-float v0, v8

    move/from16 v30, v0

    cmpl-float v30, v4, v30

    if-lez v30, :cond_3

    .line 2285
    int-to-float v13, v8

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v10, v30, v31

    .line 2288
    .local v10, draggingCoef:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    const v30, 0x3e99999a

    cmpl-float v30, v10, v30

    if-lez v30, :cond_3

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    cmpl-float v30, v7, v30

    if-lez v30, :cond_14

    const/16 v30, 0x1

    :goto_3
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->startTextShakingAnimation(Z)V

    .line 2293
    .end local v10           #draggingCoef:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v9

    .line 2295
    .local v9, currentAnimValue:F
    const/16 v30, 0x0

    cmpl-float v30, v7, v30

    if-lez v30, :cond_4

    .line 2296
    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 2297
    move-object/from16 v0, v19

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 2298
    add-float v30, v18, v13

    move/from16 v0, v30

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 2299
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    add-float v30, v30, v5

    move/from16 v0, v30

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 2302
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    sub-float v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 2303
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    sub-float v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 2305
    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2307
    :cond_4
    const/16 v30, 0x0

    cmpg-float v30, v7, v30

    if-gez v30, :cond_5

    .line 2308
    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 2309
    move-object/from16 v0, v25

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 2310
    sub-float v30, v24, v13

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 2311
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    sub-float v30, v30, v5

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 2314
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    add-float v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 2315
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    add-float v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 2317
    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2321
    .end local v8           #bounceViewHeight:I
    .end local v9           #currentAnimValue:F
    .end local v14           #flags:I
    .end local v20           #maxFadeHeight:F
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwBounceController;->adjustBounceExtent()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2326
    if-eqz v21, :cond_6

    const/16 v30, 0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v30

    if-lez v30, :cond_7

    .line 2328
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_15

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    .line 2335
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    if-eqz v11, :cond_a

    .line 2338
    const/16 v30, 0x0

    cmpl-float v30, v7, v30

    if-lez v30, :cond_8

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    const/high16 v31, -0x3d4c

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getFadingEdgePaint(FFFF)Landroid/graphics/Paint;

    move-result-object v22

    .line 2342
    .local v22, paintForFading:Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2344
    .end local v22           #paintForFading:Landroid/graphics/Paint;
    :cond_8
    const/16 v30, 0x0

    cmpg-float v30, v7, v30

    if-gez v30, :cond_9

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    const/high16 v31, 0x42b4

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getFadingEdgePaint(FFFF)Landroid/graphics/Paint;

    move-result-object v22

    .line 2348
    .restart local v22       #paintForFading:Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2351
    .end local v22           #paintForFading:Landroid/graphics/Paint;
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2353
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->drawBounceView(Landroid/graphics/Canvas;)V

    .line 2356
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    if-eqz v30, :cond_10

    .line 2357
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v27, v0

    .line 2358
    .local v27, scrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v30

    if-nez v30, :cond_d

    .line 2359
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 2360
    .local v23, restoreCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v15, v30, v31

    .line 2362
    .local v15, height:I
    const/high16 v30, 0x4387

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 2369
    :cond_b
    neg-int v0, v15

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 2373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2375
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2377
    .end local v15           #height:I
    .end local v23           #restoreCount:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v30

    if-nez v30, :cond_10

    .line 2378
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 2379
    .restart local v23       #restoreCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v29

    .line 2380
    .local v29, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v15, v30, v31

    .line 2382
    .restart local v15       #height:I
    const/high16 v30, 0x42b4

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    .line 2389
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    add-int v31, v31, v29

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 2393
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2395
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2398
    .end local v15           #height:I
    .end local v23           #restoreCount:I
    .end local v27           #scrollX:I
    .end local v29           #width:I
    :cond_10
    return-void

    .line 2241
    .end local v5           #actualFadeHeight:F
    .end local v6           #bottom:F
    .end local v11           #drawBounceView:Z
    .end local v12           #fadeStrength:F
    .end local v13           #fadingEdgeOffset:F
    .end local v16           #horizScrollViewChildWidth:I
    .end local v17           #initialFadeHeight:F
    .end local v18           #left:F
    .end local v19           #leftViewRect:Landroid/graphics/RectF;
    .end local v21           #overscrollMode:I
    .end local v24           #right:F
    .end local v25           #rightViewRect:Landroid/graphics/RectF;
    .end local v26           #saveCount:I
    .end local v28           #top:F
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2246
    .restart local v16       #horizScrollViewChildWidth:I
    .restart local v21       #overscrollMode:I
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2272
    .restart local v5       #actualFadeHeight:F
    .restart local v6       #bottom:F
    .restart local v11       #drawBounceView:Z
    .restart local v12       #fadeStrength:F
    .restart local v13       #fadingEdgeOffset:F
    .restart local v17       #initialFadeHeight:F
    .restart local v18       #left:F
    .restart local v19       #leftViewRect:Landroid/graphics/RectF;
    .restart local v24       #right:F
    .restart local v25       #rightViewRect:Landroid/graphics/RectF;
    .restart local v26       #saveCount:I
    .restart local v28       #top:F
    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 2289
    .restart local v8       #bounceViewHeight:I
    .restart local v10       #draggingCoef:F
    .restart local v14       #flags:I
    .restart local v20       #maxFadeHeight:F
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 2330
    .end local v8           #bounceViewHeight:I
    .end local v10           #draggingCoef:F
    .end local v14           #flags:I
    .end local v20           #maxFadeHeight:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpg-float v30, v30, v31

    if-gez v30, :cond_7

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    goto/16 :goto_4
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 521
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 523
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 528
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 530
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 559
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 536
    :cond_2
    const/4 v1, 0x0

    .line 537
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 559
    goto :goto_0

    .line 540
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 541
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 543
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 545
    goto :goto_1

    .line 547
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 548
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 550
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 552
    goto :goto_1

    .line 554
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 538
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .parameter "velocityX"

    .prologue
    .line 2028
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2029
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 2030
    .local v16, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 2032
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 2035
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 2037
    .local v13, movingRight:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 2038
    .local v12, currentFocused:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 2041
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_0

    .line 2042
    move-object/from16 v14, p0

    .line 2045
    :cond_0
    if-eq v14, v12, :cond_1

    .line 2046
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2049
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2051
    .end local v12           #currentFocused:Landroid/view/View;
    .end local v13           #movingRight:Z
    .end local v14           #newFocused:Landroid/view/View;
    .end local v15           #right:I
    .end local v16           #width:I
    :cond_2
    return-void

    .line 2035
    .restart local v15       #right:I
    .restart local v16       #width:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 2046
    .restart local v12       #currentFocused:Landroid/view/View;
    .restart local v13       #movingRight:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1450
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1451
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1453
    .local v3, width:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1454
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1456
    if-eqz v1, :cond_0

    .line 1457
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1458
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1459
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1460
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1461
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1465
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1450
    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    return v0
.end method

.method public getEnableEndEffect()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const/4 v1, 0x0

    .line 296
    :goto_0
    return v1

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 292
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 293
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 296
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 320
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 302
    const/4 v3, 0x0

    .line 312
    :goto_0
    return v3

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 306
    .local v0, length:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 307
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 308
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 309
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 312
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1705
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1710
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1713
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1715
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1716
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1723
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1725
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1728
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1729
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1190
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1164
    :pswitch_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1167
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 1171
    .local v1, hscroll:F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 1172
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1173
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 1174
    .local v4, range:I
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1175
    .local v3, oldScrollX:I
    add-int v2, v3, v0

    .line 1176
    .local v2, newScrollX:I
    if-gez v2, :cond_3

    .line 1177
    const/4 v2, 0x0

    .line 1181
    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    .line 1182
    iget v5, p0, Landroid/view/View;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/view/View;->scrollTo(II)V

    .line 1183
    const/4 v5, 0x1

    goto :goto_0

    .line 1169
    .end local v0           #delta:I
    .end local v1           #hscroll:F
    .end local v2           #newScrollX:I
    .end local v3           #oldScrollX:I
    .end local v4           #range:I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 1178
    .restart local v0       #delta:I
    .restart local v2       #newScrollX:I
    .restart local v3       #oldScrollX:I
    .restart local v4       #range:I
    :cond_3
    if-le v2, v4, :cond_1

    .line 1179
    move v2, v4

    goto :goto_2

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2417
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 2420
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2424
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1259
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1260
    const-class v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1261
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 1262
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 1263
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 1264
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 1265
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 1266
    return-void

    .line 1261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1244
    const-class v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1245
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1246
    .local v0, scrollRange:I
    if-lez v0, :cond_1

    .line 1247
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1248
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-lez v1, :cond_0

    .line 1249
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1251
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 1252
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1255
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 615
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 619
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 710
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 631
    :pswitch_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 632
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 638
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 642
    .local v10, pointerIndex:I
    if-ltz v10, :cond_0

    .line 645
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 646
    .local v11, x:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v12, v1

    .line 647
    .local v12, xDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 648
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 649
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 650
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 651
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 652
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    .line 653
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 659
    .end local v8           #activePointerId:I
    .end local v10           #pointerIndex:I
    .end local v11           #x:F
    .end local v12           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 660
    .restart local v11       #x:F
    float-to-int v1, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 661
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 662
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 670
    :cond_3
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 671
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 673
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initOrResetVelocityTracker()V

    .line 674
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 681
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 688
    .end local v11           #x:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 689
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 690
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 695
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 696
    .local v9, index:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 697
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 701
    .end local v9           #index:I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 702
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    goto/16 :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1973
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1976
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1979
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1982
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollTo(II)V

    .line 1984
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-eqz v0, :cond_1

    .line 1985
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->layoutBounceViews(IIII)V

    .line 1987
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 463
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 465
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-eqz v9, :cond_0

    .line 470
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 471
    .local v6, parentHeightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v9, v10

    .line 473
    .local v5, parentHeightSize:I
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 477
    .local v4, parentHeightMeasureSpec:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9, v4, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->measureBounceViews(II)V

    .line 480
    .end local v4           #parentHeightMeasureSpec:I
    .end local v5           #parentHeightSize:I
    .end local v6           #parentHeightSpecMode:I
    :cond_0
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    if-nez v9, :cond_2

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 485
    .local v8, widthMode:I
    if-eqz v8, :cond_1

    .line 489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 490
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 492
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v7, :cond_1

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 495
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v9, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 497
    .local v1, childHeightMeasureSpec:I
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v7, v9

    .line 498
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v9

    .line 499
    const/high16 v9, 0x4000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 501
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 1196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1197
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 1198
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 1199
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 1200
    if-eqz p3, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 1206
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1207
    return-void

    .line 1204
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1936
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1937
    const/16 p1, 0x42

    .line 1942
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1946
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1954
    :cond_1
    :goto_2
    return v1

    .line 1938
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1939
    const/16 p1, 0x11

    goto :goto_0

    .line 1942
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1950
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1954
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1991
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1993
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1994
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 1997
    :cond_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 1999
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2000
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2001
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2002
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2003
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .parameter "ev"

    .prologue
    .line 903
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 908
    .local v16, action:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v0, v3, :cond_1

    .line 913
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 915
    const/4 v3, 0x1

    .line 1140
    :goto_0
    return v3

    .line 918
    :cond_1
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1140
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 920
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 921
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 922
    const/4 v3, 0x0

    goto :goto_0

    .line 920
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 929
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 934
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 935
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 940
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_2

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    goto :goto_1

    .line 953
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 955
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 956
    .local v17, activePointerIndex:I
    if-gez v17, :cond_6

    .line 957
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 960
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_11

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 967
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 968
    .local v31, x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v31

    float-to-int v4, v3

    .line 969
    .local v4, deltaX:I
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    .line 972
    .local v23, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    .line 973
    .local v24, oldY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    .line 976
    .local v26, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v29

    .line 977
    .local v29, scrollX:I
    const/16 v21, 0x0

    .line 978
    .local v21, delta:I
    const/16 v28, 0x0

    .line 980
    .local v28, scroll:I
    move/from16 v21, v4

    .line 981
    move/from16 v28, v29

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_8

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 988
    const/16 v21, 0x0

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 990
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 992
    :cond_8
    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v21, v0

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 998
    :cond_9
    if-gez v21, :cond_a

    .line 999
    if-lez v28, :cond_e

    .line 1000
    add-int v3, v28, v21

    if-gez v3, :cond_d

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    add-int v5, v28, v21

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1003
    move/from16 v0, v28

    neg-int v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->scrollBy(II)V

    .line 1013
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->updatePullState()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 1020
    :cond_a
    if-lez v21, :cond_b

    .line 1021
    const/16 v19, 0x0

    .line 1022
    .local v19, bottomEdge:I
    const/16 v18, 0x0

    .line 1024
    .local v18, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v19, v3, v5

    .line 1025
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v3, v28

    sub-int v18, v3, v19

    .line 1027
    if-lez v18, :cond_10

    .line 1029
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 1031
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->scrollBy(II)V

    .line 1044
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->updatePullState()V

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 1050
    .end local v18           #availableToScroll:I
    .end local v19           #bottomEdge:I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_c

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1052
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v3, v3, v26

    if-eqz v3, :cond_2

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1006
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_3

    .line 1009
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 1034
    .restart local v18       #availableToScroll:I
    .restart local v19       #bottomEdge:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    sub-int v5, v21, v18

    int-to-float v5, v5

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1036
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->scrollBy(II)V

    goto :goto_4

    .line 1040
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    .line 1055
    .end local v4           #deltaX:I
    .end local v18           #availableToScroll:I
    .end local v19           #bottomEdge:I
    .end local v21           #delta:I
    .end local v23           #oldX:I
    .end local v24           #oldY:I
    .end local v26           #prevBounceExtent:F
    .end local v28           #scroll:I
    .end local v29           #scrollX:I
    .end local v31           #x:F
    :cond_11
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 1056
    .restart local v31       #x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v31

    float-to-int v4, v3

    .line 1057
    .restart local v4       #deltaX:I
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    .line 1060
    .restart local v23       #oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    .line 1061
    .restart local v24       #oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 1062
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v25

    .line 1063
    .local v25, overscrollMode:I
    if-eqz v25, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_16

    if-lez v8, :cond_16

    :cond_12
    const/16 v20, 0x1

    .line 1066
    .local v20, canOverscroll:Z
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1071
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1073
    if-eqz v20, :cond_2

    .line 1074
    add-int v27, v23, v4

    .line 1075
    .local v27, pulledToX:I
    if-gez v27, :cond_17

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1086
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1088
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 1063
    .end local v20           #canOverscroll:Z
    .end local v27           #pulledToX:I
    :cond_16
    const/16 v20, 0x0

    goto :goto_5

    .line 1080
    .restart local v20       #canOverscroll:Z
    .restart local v27       #pulledToX:I
    :cond_17
    move/from16 v0, v27

    if-le v0, v8, :cond_14

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_6

    .line 1095
    .end local v4           #deltaX:I
    .end local v8           #range:I
    .end local v17           #activePointerIndex:I
    .end local v20           #canOverscroll:Z
    .end local v23           #oldX:I
    .end local v24           #oldY:I
    .end local v25           #overscrollMode:I
    .end local v27           #pulledToX:I
    .end local v31           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 1098
    .local v30, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1099
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v22, v0

    .line 1101
    .local v22, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_18

    .line 1102
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_19

    .line 1103
    move/from16 v0, v22

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fling(I)V

    .line 1111
    :cond_18
    :goto_7
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 1112
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 1113
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_2

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto/16 :goto_1

    .line 1105
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_7

    .line 1122
    .end local v22           #initialVelocity:I
    .end local v30           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1123
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1126
    :cond_1a
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 1127
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 1128
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_2

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto/16 :goto_1

    .line 1137
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1413
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1414
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1416
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 1417
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1418
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1419
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1420
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1421
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1422
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1431
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1433
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1413
    goto :goto_0

    .line 1426
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1427
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 1428
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1211
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1238
    :goto_0
    return v2

    .line 1214
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1238
    goto :goto_0

    .line 1216
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1217
    goto :goto_0

    .line 1219
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1220
    .local v1, viewportWidth:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1221
    .local v0, targetScrollX:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, v4, :cond_2

    .line 1222
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1225
    goto :goto_0

    .line 1227
    .end local v0           #targetScrollX:I
    .end local v1           #viewportWidth:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1228
    goto :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1231
    .restart local v1       #viewportWidth:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1232
    .restart local v0       #targetScrollX:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, v4, :cond_4

    .line 1233
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1236
    goto :goto_0

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1915
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1916
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1922
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1923
    return-void

    .line 1920
    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1960
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1962
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 596
    if-eqz p1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 599
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 600
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1968
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 1969
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2061
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2062
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2063
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 2064
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 2065
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2066
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 2069
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setBounceViewBgAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 2153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-nez v0, :cond_0

    .line 2157
    :goto_0
    return-void

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViewBgAlpha(I)V

    .line 2156
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initBounceView()V

    goto :goto_0
.end method

.method public setBounceViewMargin(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 2160
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-nez v0, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViewMargin(I)V

    goto :goto_0
.end method

.method public setCustomBounceView(I)Z
    .locals 4
    .parameter "resourceId"

    .prologue
    const/4 v3, 0x0

    .line 2104
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2109
    :goto_0
    return v2

    .line 2106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2107
    .local v1, childViewTop:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2109
    .local v0, childViewBottom:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public setCustomBounceView(II)Z
    .locals 4
    .parameter "topResourceId"
    .parameter "bottomResourceId"

    .prologue
    const/4 v3, 0x0

    .line 2122
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2127
    :goto_0
    return v2

    .line 2124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2125
    .local v1, childViewTop:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2127
    .local v0, childViewBottom:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .parameter "topBounceView"
    .parameter "bottomBounceView"

    .prologue
    .line 2139
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2144
    :cond_0
    :goto_0
    return v0

    .line 2141
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 2143
    .local v0, success:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->requestLayout()V

    goto :goto_0
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 358
    :cond_0
    return-void
.end method

.method public setEnableEndEffect(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 200
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 439
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->requestLayout()V

    .line 442
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 732
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 733
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 714
    if-eqz p1, :cond_0

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 725
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 726
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 2073
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2074
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 2075
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2076
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2077
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2078
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2079
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2082
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setEnableBounce(Z)V

    .line 2089
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2090
    return-void

    .line 2084
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2085
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2087
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 459
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1632
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1616
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1617
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1618
    .local v5, width:I
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1619
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1620
    .local v2, maxX:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1621
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1623
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1624
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1631
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1626
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1627
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1629
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1641
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    .line 1642
    return-void
.end method
