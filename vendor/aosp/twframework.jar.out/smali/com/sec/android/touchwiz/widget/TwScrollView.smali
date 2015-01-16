.class public Lcom/sec/android/touchwiz/widget/TwScrollView;
.super Landroid/widget/FrameLayout;
.source "TwScrollView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;,
        Lcom/sec/android/touchwiz/widget/TwScrollView$CheckForDoubleFling;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field static final DOUBLE_FLING_DURATION:I = 0x320

.field static final FLING_DOUBLE:I = 0x66

.field static final FLING_NONE:I = 0x64

.field static final FLING_SINGLE:I = 0x65

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TwScrollView"

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

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field protected mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

.field protected mEndEffectEnabled:Z

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mFlingMode:I

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverBottomAreaHeight_DP:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaHeight:I

.field private mHoverTopAreaHeight_DP:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field mLastFlingSpeed:I

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPendingCheckForDoubleFling:Ljava/lang/Runnable;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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

    .line 85
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_BOUNCE:Z

    .line 87
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_SCROLL:Z

    .line 89
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 286
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 118
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 125
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 149
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 168
    const/16 v2, 0x64

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingMode:I

    .line 170
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastFlingSpeed:I

    .line 178
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 185
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 187
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 203
    const/16 v2, 0xf

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight_DP:I

    .line 205
    const/16 v2, 0x19

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight_DP:I

    .line 207
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    .line 209
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    .line 215
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    .line 217
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    .line 219
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 221
    const/16 v2, 0x12c

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I

    .line 223
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 225
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 230
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    .line 235
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    .line 240
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 245
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    .line 250
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    .line 255
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    .line 260
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    .line 2590
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    .line 291
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initScrollView()V

    .line 293
    sget-object v2, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 296
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFillViewport(Z)V

    .line 299
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    .line 308
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    return-void

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    const-string v2, "TwScrollView"

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

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 440
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 443
    .local v1, childHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 445
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2550
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 2558
    :cond_0
    const/4 p1, 0x0

    .line 2567
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 2560
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 2565
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1663
    if-eqz p1, :cond_0

    .line 1664
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1665
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawBounceView(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 2315
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->areBounceViewsReady()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    const v9, 0x3e99999a

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    mul-float v0, v9, v10

    .line 2318
    .local v0, bounceExtent:F
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewMargin()I

    move-result v2

    .line 2322
    .local v2, bounceViewMargin:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_8

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2324
    .local v5, scrollViewChildHeight:I
    :goto_1
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    if-gtz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    if-gtz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    if-gtz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    if-lez v9, :cond_9

    :cond_2
    move v4, v8

    .line 2325
    .local v4, needToClip:Z
    :goto_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2326
    .local v3, clippedRect:Landroid/graphics/RectF;
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v9, v9

    iput v9, v3, Landroid/graphics/RectF;->left:F

    .line 2327
    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v9, v9

    iput v9, v3, Landroid/graphics/RectF;->top:F

    .line 2328
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v3, Landroid/graphics/RectF;->right:F

    .line 2329
    iget v9, v3, Landroid/graphics/RectF;->top:F

    int-to-float v10, v5

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->bottom:F

    .line 2331
    cmpl-float v9, v0, v11

    if-lez v9, :cond_5

    .line 2332
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9, v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v1

    .line 2334
    .local v1, bounceViewHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2337
    if-eqz v4, :cond_3

    .line 2338
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 2341
    :cond_3
    int-to-float v9, v1

    sub-float v6, v0, v9

    .line 2342
    .local v6, translateY:F
    cmpl-float v9, v6, v11

    if-lez v9, :cond_4

    .line 2343
    const/4 v6, 0x0

    .line 2347
    :cond_4
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v9

    sub-float/2addr v6, v9

    .line 2349
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v9, v2

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2350
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9, p1, v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->draw(Landroid/graphics/Canvas;Z)V

    .line 2351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2353
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2357
    .end local v1           #bounceViewHeight:I
    .end local v6           #translateY:F
    :cond_5
    cmpg-float v8, v0, v11

    if-gez v8, :cond_0

    .line 2358
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v1

    .line 2359
    .restart local v1       #bounceViewHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2362
    if-eqz v4, :cond_6

    .line 2363
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 2366
    :cond_6
    int-to-float v8, v5

    add-float v6, v8, v0

    .line 2367
    .restart local v6       #translateY:F
    sub-int v8, v5, v1

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_7

    .line 2368
    sub-int v8, v5, v1

    int-to-float v6, v8

    .line 2371
    :cond_7
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v8

    add-float/2addr v6, v8

    .line 2373
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2374
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8, p1, v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->draw(Landroid/graphics/Canvas;Z)V

    .line 2375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2377
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .end local v1           #bounceViewHeight:I
    .end local v3           #clippedRect:Landroid/graphics/RectF;
    .end local v4           #needToClip:Z
    .end local v5           #scrollViewChildHeight:I
    .end local v6           #translateY:F
    :cond_8
    move v5, v7

    .line 2322
    goto/16 :goto_1

    .restart local v5       #scrollViewChildHeight:I
    :cond_9
    move v4, v7

    .line 2324
    goto/16 :goto_2
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 2187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 2189
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 2191
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-nez v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 2193
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2197
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2200
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1402
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1403
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1412
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1414
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1415
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1416
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1417
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1418
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1420
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1426
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1428
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1430
    move-object v1, v5

    .line 1431
    move v3, v8

    .line 1415
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1426
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1433
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1437
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1438
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1444
    move-object v1, v5

    goto :goto_2

    .line 1433
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1447
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1452
    move-object v1, v5

    .line 1453
    const/4 v3, 0x1

    goto :goto_2

    .line 1454
    :cond_7
    if-eqz v7, :cond_0

    .line 1459
    move-object v1, v5

    goto :goto_2

    .line 1466
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 1373
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 1374
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 1375
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 1377
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 1382
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1341
    const/4 v1, 0x0

    .line 1342
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1343
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1344
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1347
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

    .line 590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 591
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 592
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 596
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initBounceView()V
    .locals 2

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->initBounceView(Landroid/content/Context;)V

    .line 2243
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 601
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 356
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 357
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 358
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 359
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    .line 360
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    .line 362
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    .line 363
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    .line 365
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 366
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 367
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 370
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableEndEffect(Z)V

    .line 371
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    .line 373
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initBounceView()V

    .line 375
    :cond_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 611
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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

    .line 2153
    if-ne p1, p2, :cond_1

    .line 2158
    :cond_0
    :goto_0
    return v1

    .line 2157
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2158
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1651
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

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
    .line 1212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1213
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1214
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1218
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1219
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1220
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 1221
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1222
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1225
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 618
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1553
    const/4 v3, 0x1

    .line 1555
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1556
    .local v4, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1557
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1558
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1560
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1561
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1562
    move-object v5, p0

    .line 1565
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1566
    const/4 v3, 0x0

    .line 1572
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    .line 1573
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1575
    :cond_1
    return v3

    .line 1558
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1568
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1569
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1568
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1937
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1940
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1942
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1944
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1945
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 1947
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1958
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1959
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1960
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1961
    if-eqz p2, :cond_2

    .line 1962
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->scrollBy(II)V

    .line 1967
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1959
    goto :goto_0

    .line 1964
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 407
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 416
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1587
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1588
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1589
    const/4 v0, 0x0

    .line 1591
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1593
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1595
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1596
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1597
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1598
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1599
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    .line 1600
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1622
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1629
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 1630
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1631
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1632
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1634
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1603
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1605
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1606
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 1616
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1619
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1607
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1609
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1610
    .local v1, daBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1611
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1612
    sub-int v6, v1, v5

    goto :goto_1

    .line 1619
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 21

    .prologue
    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1874
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollX:I

    .line 1875
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    .line 1876
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v19

    .line 1877
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v20

    .line 1879
    .local v20, y:I
    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    move/from16 v0, v20

    if-eq v7, v0, :cond_2

    .line 1880
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    .line 1881
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v15

    .line 1882
    .local v15, overscrollMode:I
    if-eqz v15, :cond_1

    const/4 v3, 0x1

    if-ne v15, v3, :cond_4

    if-lez v9, :cond_4

    :cond_1
    const/4 v13, 0x1

    .line 1885
    .local v13, canOverscroll:Z
    :goto_0
    sub-int v4, v19, v6

    sub-int v5, v20, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 1886
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1888
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_6

    if-eqz v13, :cond_6

    .line 1889
    if-gez v20, :cond_5

    if-ltz v7, :cond_5

    .line 1890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1919
    .end local v9           #range:I
    .end local v13           #canOverscroll:Z
    .end local v15           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1929
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_3
    :goto_2
    return-void

    .line 1882
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v9       #range:I
    .restart local v15       #overscrollMode:I
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 1891
    .restart local v13       #canOverscroll:Z
    :cond_5
    move/from16 v0, v20

    if-le v0, v9, :cond_2

    if-gt v7, v9, :cond_2

    .line 1892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1894
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1895
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1896
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

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result v16

    .line 1898
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

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result v17

    .line 1903
    .local v17, tempY:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1905
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity(Z)F

    move-result v18

    .line 1908
    .local v18, velocity:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1909
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    .line 1911
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_BOUNCE:Z

    if-eqz v3, :cond_8

    .line 1912
    const-string v3, "TwScrollView"

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

    .line 1914
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_1

    .line 1924
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v9           #range:I
    .end local v13           #canOverscroll:Z
    .end local v14           #child:Landroid/view/View;
    .end local v15           #overscrollMode:I
    .end local v16           #tempX:I
    .end local v17           #tempY:I
    .end local v18           #velocity:F
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    .line 1925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 1926
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1979
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 2036
    :cond_0
    :goto_0
    return v6

    .line 1982
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1983
    .local v3, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 1984
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1986
    .local v4, screenBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1989
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1990
    add-int/2addr v5, v2

    .line 1995
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1996
    sub-int/2addr v4, v2

    .line 1999
    :cond_3
    const/4 v6, 0x0

    .line 2001
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 2006
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 2008
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 2015
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2016
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 2017
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2019
    goto :goto_0

    .line 2011
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 2019
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 2024
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 2026
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 2034
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 2029
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1791
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    .line 1801
    .local v0, extent:I
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 1807
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1820
    .local v0, offset:I
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1772
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1773
    .local v1, count:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1774
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 1787
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .line 1778
    .restart local v0       #contentHeight:I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1779
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1780
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1781
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1782
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1787
    goto :goto_0

    .line 1783
    :cond_2
    if-le v4, v2, :cond_1

    .line 1784
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 765
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "pen_hovering"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v4, 0x1

    .line 766
    .local v4, isHoveringOn:Z
    :goto_0
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "pen_hovering_list_scroll"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v3, 0x1

    .line 768
    .local v3, isHoverListScrollOn:Z
    :goto_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    if-nez v9, :cond_0

    .line 769
    new-instance v9, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwScrollView;Lcom/sec/android/touchwiz/widget/TwScrollView$1;)V

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    .line 771
    :cond_0
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_4

    .line 772
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 928
    :goto_2
    return v9

    .line 765
    .end local v3           #isHoverListScrollOn:Z
    .end local v4           #isHoveringOn:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 766
    .restart local v4       #isHoveringOn:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 775
    .restart local v3       #isHoverListScrollOn:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 776
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 777
    .local v8, y:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 778
    .local v0, childCount:I
    const/4 v1, 0x0

    .line 779
    .local v1, contentBottom:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    .line 781
    .local v6, range:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-lez v9, :cond_5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    if-gtz v9, :cond_6

    .line 782
    :cond_5
    const/4 v9, 0x1

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight_DP:I

    int-to-float v10, v10

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    .line 786
    const/4 v9, 0x1

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight_DP:I

    int-to-float v10, v10

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    .line 791
    :cond_6
    if-eqz v0, :cond_7

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v9, v10

    .line 795
    :cond_7
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-le v8, v9, :cond_8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v1, v9

    if-lt v8, v9, :cond_9

    :cond_8
    if-lez v7, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v9

    if-gt v7, v9, :cond_9

    if-lez v6, :cond_9

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 798
    :cond_9
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 799
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    const/4 v9, 0x1

    const/4 v10, -0x1

    :try_start_0
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_a
    :goto_3
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    if-eqz v9, :cond_c

    .line 808
    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    .line 810
    const/4 v9, 0x1

    const/4 v10, -0x1

    :try_start_1
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    :cond_c
    :goto_4
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 817
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 818
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 820
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 802
    :catch_0
    move-exception v2

    .line 803
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 811
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 812
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 823
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_d
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-nez v9, :cond_e

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 826
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 928
    :cond_f
    :goto_5
    :pswitch_0
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 828
    :pswitch_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 830
    if-ltz v8, :cond_10

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v9, :cond_10

    .line 832
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 835
    const/16 v9, 0xb

    const/4 v10, -0x1

    :try_start_2
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 839
    :goto_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 840
    .local v5, msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v5, Landroid/os/Message;->what:I

    .line 841
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 842
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 836
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 837
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 844
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_10
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v1, v9

    if-lt v8, v9, :cond_f

    if-gt v8, v1, :cond_f

    .line 846
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 849
    const/16 v9, 0xf

    const/4 v10, -0x1

    :try_start_3
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 853
    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 854
    .restart local v5       #msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v5, Landroid/os/Message;->what:I

    .line 855
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 856
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 850
    .end local v5           #msg:Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 851
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 863
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-nez v9, :cond_11

    .line 864
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 865
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 866
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 869
    :cond_11
    if-ltz v8, :cond_13

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v9, :cond_13

    .line 871
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 874
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_12

    .line 876
    const/16 v9, 0xb

    const/4 v10, -0x1

    :try_start_4
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 882
    :cond_12
    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 883
    .restart local v5       #msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v5, Landroid/os/Message;->what:I

    .line 884
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 885
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 877
    .end local v5           #msg:Landroid/os/Message;
    :catch_4
    move-exception v2

    .line 878
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 887
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_13
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v1, v9

    if-lt v8, v9, :cond_f

    if-gt v8, v1, :cond_f

    .line 889
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 892
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_14

    .line 894
    const/16 v9, 0xf

    const/4 v10, -0x1

    :try_start_5
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 900
    :cond_14
    :goto_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 901
    .restart local v5       #msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v5, Landroid/os/Message;->what:I

    .line 902
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 903
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 895
    .end local v5           #msg:Landroid/os/Message;
    :catch_5
    move-exception v2

    .line 896
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 909
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 910
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    :cond_15
    const/4 v9, 0x1

    const/4 v10, -0x1

    :try_start_6
    invoke-static {v9, v10}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 919
    :goto_a
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 920
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 921
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    .line 922
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 923
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 915
    :catch_6
    move-exception v2

    .line 916
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v10, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 826
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 2384
    const v30, 0x3e99999a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v31, v0

    mul-float v8, v30, v31

    .line 2385
    .local v8, bounceExtent:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2389
    .local v4, absBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    if-lez v30, :cond_11

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v25

    .line 2393
    .local v25, scrollViewChildHeight:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v20

    .line 2394
    .local v20, overscrollMode:I
    if-eqz v20, :cond_0

    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v30

    if-lez v30, :cond_12

    :cond_0
    const/4 v12, 0x1

    .line 2398
    .local v12, drawBounceView:Z
    :goto_1
    const/16 v30, 0x0

    cmpl-float v30, v8, v30

    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->cancelTextShakeAnimation()V

    .line 2403
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v24

    .line 2404
    .local v24, saveCount:I
    const/high16 v13, 0x3f80

    .line 2405
    .local v13, fadeStrength:F
    const/16 v17, 0x0

    .line 2406
    .local v17, initialFadeHeight:F
    const/4 v5, 0x0

    .line 2408
    .local v5, actualFadeHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v18, v0

    .line 2409
    .local v18, left:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 2410
    .local v27, top:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v23, v0

    .line 2411
    .local v23, right:F
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v6, v27, v30

    .line 2412
    .local v6, bottom:F
    const/4 v14, 0x0

    .line 2414
    .local v14, fadingEdgeOffset:F
    new-instance v28, Landroid/graphics/RectF;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/RectF;-><init>()V

    .line 2415
    .local v28, topViewRect:Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 2417
    .local v7, bottomViewRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    if-eqz v12, :cond_5

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewFadingEdgeLength()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    cmpl-float v30, v8, v30

    if-lez v30, :cond_13

    const/16 v30, 0x1

    :goto_2
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v9

    .line 2422
    .local v9, bounceViewHeight:I
    const/4 v15, 0x4

    .line 2424
    .local v15, flags:I
    int-to-float v0, v9

    move/from16 v30, v0

    const v31, 0x3eaa7efa

    mul-float v19, v30, v31

    .line 2425
    .local v19, maxFadeHeight:F
    cmpg-float v30, v4, v19

    if-gez v30, :cond_2

    .line 2426
    div-float v30, v4, v19

    mul-float v13, v13, v30

    .line 2429
    :cond_2
    mul-float v5, v17, v13

    .line 2431
    move v14, v4

    .line 2432
    int-to-float v0, v9

    move/from16 v30, v0

    cmpl-float v30, v4, v30

    if-lez v30, :cond_3

    .line 2433
    int-to-float v14, v9

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v11, v30, v31

    .line 2436
    .local v11, draggingCoef:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    const v30, 0x3e99999a

    cmpl-float v30, v11, v30

    if-lez v30, :cond_3

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    cmpl-float v30, v8, v30

    if-lez v30, :cond_14

    const/16 v30, 0x1

    :goto_3
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->startTextShakingAnimation(Z)V

    .line 2441
    .end local v11           #draggingCoef:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v10

    .line 2443
    .local v10, currentAnimValue:F
    const/16 v30, 0x0

    cmpl-float v30, v8, v30

    if-lez v30, :cond_4

    .line 2444
    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 2445
    add-float v30, v27, v14

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 2446
    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 2447
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    add-float v30, v30, v5

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 2450
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    sub-float v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 2451
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    sub-float v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 2453
    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2455
    :cond_4
    const/16 v30, 0x0

    cmpg-float v30, v8, v30

    if-gez v30, :cond_5

    .line 2456
    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 2457
    sub-float v30, v6, v14

    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 2458
    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 2459
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    sub-float v30, v30, v5

    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 2462
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    add-float v30, v30, v10

    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 2463
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    add-float v30, v30, v10

    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 2465
    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2469
    .end local v9           #bounceViewHeight:I
    .end local v10           #currentAnimValue:F
    .end local v15           #flags:I
    .end local v19           #maxFadeHeight:F
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwBounceController;->adjustBounceExtent()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2474
    if-eqz v20, :cond_6

    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v30

    if-lez v30, :cond_7

    .line 2476
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_15

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    .line 2484
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    if-eqz v12, :cond_a

    .line 2487
    const/16 v30, 0x0

    cmpl-float v30, v8, v30

    if-lez v30, :cond_8

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getFadingEdgePaint(FFFF)Landroid/graphics/Paint;

    move-result-object v21

    .line 2491
    .local v21, paintForFading:Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2493
    .end local v21           #paintForFading:Landroid/graphics/Paint;
    :cond_8
    const/16 v30, 0x0

    cmpg-float v30, v8, v30

    if-gez v30, :cond_9

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v30, v0

    const/high16 v31, 0x4334

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getFadingEdgePaint(FFFF)Landroid/graphics/Paint;

    move-result-object v21

    .line 2497
    .restart local v21       #paintForFading:Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2500
    .end local v21           #paintForFading:Landroid/graphics/Paint;
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2502
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->drawBounceView(Landroid/graphics/Canvas;)V

    .line 2505
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    if-eqz v30, :cond_10

    .line 2506
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    .line 2507
    .local v26, scrollY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v30

    if-nez v30, :cond_d

    .line 2508
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v22

    .line 2509
    .local v22, restoreCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 2512
    .local v29, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 2516
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 2520
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2522
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2524
    .end local v22           #restoreCount:I
    .end local v29           #width:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v30

    if-nez v30, :cond_10

    .line 2525
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v22

    .line 2526
    .restart local v22       #restoreCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 2527
    .restart local v29       #width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 2532
    .local v16, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    .line 2536
    :cond_e
    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    add-int v31, v31, v16

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2539
    const/high16 v30, 0x4334

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 2542
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2544
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2547
    .end local v16           #height:I
    .end local v22           #restoreCount:I
    .end local v26           #scrollY:I
    .end local v29           #width:I
    :cond_10
    return-void

    .line 2389
    .end local v5           #actualFadeHeight:F
    .end local v6           #bottom:F
    .end local v7           #bottomViewRect:Landroid/graphics/RectF;
    .end local v12           #drawBounceView:Z
    .end local v13           #fadeStrength:F
    .end local v14           #fadingEdgeOffset:F
    .end local v17           #initialFadeHeight:F
    .end local v18           #left:F
    .end local v20           #overscrollMode:I
    .end local v23           #right:F
    .end local v24           #saveCount:I
    .end local v25           #scrollViewChildHeight:I
    .end local v27           #top:F
    .end local v28           #topViewRect:Landroid/graphics/RectF;
    :cond_11
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 2394
    .restart local v20       #overscrollMode:I
    .restart local v25       #scrollViewChildHeight:I
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2420
    .restart local v5       #actualFadeHeight:F
    .restart local v6       #bottom:F
    .restart local v7       #bottomViewRect:Landroid/graphics/RectF;
    .restart local v12       #drawBounceView:Z
    .restart local v13       #fadeStrength:F
    .restart local v14       #fadingEdgeOffset:F
    .restart local v17       #initialFadeHeight:F
    .restart local v18       #left:F
    .restart local v23       #right:F
    .restart local v24       #saveCount:I
    .restart local v27       #top:F
    .restart local v28       #topViewRect:Landroid/graphics/RectF;
    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 2437
    .restart local v9       #bounceViewHeight:I
    .restart local v11       #draggingCoef:F
    .restart local v15       #flags:I
    .restart local v19       #maxFadeHeight:F
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 2478
    .end local v9           #bounceViewHeight:I
    .end local v11           #draggingCoef:F
    .end local v15           #flags:I
    .end local v19           #maxFadeHeight:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpg-float v30, v30, v31

    if-gez v30, :cond_7

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

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

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 548
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 550
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 552
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 555
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 586
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 563
    :cond_2
    const/4 v1, 0x0

    .line 564
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 565
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 586
    goto :goto_0

    .line 567
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 568
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 570
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 572
    goto :goto_1

    .line 574
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 575
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 577
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 579
    goto :goto_1

    .line 581
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 565
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 2169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2170
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2171
    .local v12, height:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2173
    .local v11, bottom:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 2176
    if-lez p1, :cond_2

    const/4 v13, 0x1

    .line 2178
    .local v13, movingDown:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2179
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2182
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2184
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    :cond_1
    return-void

    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_2
    move v13, v3

    .line 2176
    goto :goto_0
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1520
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1521
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1523
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1524
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1526
    if-eqz v1, :cond_0

    .line 1527
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1528
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1529
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1530
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1531
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1535
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1520
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 333
    const/4 v3, 0x0

    .line 343
    :goto_0
    return v3

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 337
    .local v1, length:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 338
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 339
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 340
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 343
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    return v0
.end method

.method public getEnableEndEffect()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 351
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 323
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 324
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 327
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1825
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1830
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1833
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1835
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1836
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
    .line 1841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1843
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1845
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1848
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1849
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2099
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2101
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2103
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2106
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2107
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2109
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1253
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1232
    :pswitch_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1233
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1234
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1235
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1236
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v3

    .line 1237
    .local v3, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1238
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 1239
    .local v1, newScrollY:I
    if-gez v1, :cond_2

    .line 1240
    const/4 v1, 0x0

    .line 1244
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1245
    iget v5, p0, Landroid/view/View;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/view/View;->scrollTo(II)V

    .line 1246
    const/4 v5, 0x1

    goto :goto_0

    .line 1241
    :cond_2
    if-le v1, v3, :cond_1

    .line 1242
    move v1, v3

    goto :goto_1

    .line 1230
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

    .line 2574
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 2576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2580
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1330
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1331
    const-class v1, Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1332
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1333
    .local v0, scrollable:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 1334
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 1335
    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 1336
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 1337
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 1338
    return-void

    .line 1332
    .end local v0           #scrollable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1312
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1313
    const-class v1, Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1314
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1315
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    .line 1316
    .local v0, scrollRange:I
    if-lez v0, :cond_1

    .line 1317
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1318
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-lez v1, :cond_0

    .line 1319
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1321
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1322
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1326
    .end local v0           #scrollRange:I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 641
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 733
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 657
    :pswitch_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 658
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 664
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 668
    .local v9, pointerIndex:I
    if-ltz v9, :cond_0

    .line 671
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 672
    .local v10, y:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 673
    .local v11, yDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_2

    .line 674
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 675
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 676
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 677
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 678
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 679
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 686
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 687
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    float-to-int v2, v10

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 688
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 689
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 697
    :cond_3
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 698
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 700
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initOrResetVelocityTracker()V

    .line 701
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 707
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 708
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 709
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 717
    .end local v10           #y:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 718
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 719
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 720
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 725
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
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
    .line 2113
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 2116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2122
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    .line 2124
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-eqz v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->layoutBounceViews(IIII)V

    .line 2127
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 495
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-eqz v9, :cond_0

    .line 498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 499
    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v9, v10

    .line 501
    .local v1, adjustedWidthSize:I
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 503
    .local v0, adjustedWidthMeasureSpec:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v9, v0, p2}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->measureBounceViews(II)V

    .line 506
    .end local v0           #adjustedWidthMeasureSpec:I
    .end local v1           #adjustedWidthSize:I
    .end local v8           #widthSpecMode:I
    :cond_0
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-nez v9, :cond_2

    .line 531
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 511
    .local v6, heightMode:I
    if-eqz v6, :cond_1

    .line 515
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 516
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 517
    .local v2, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 518
    .local v5, height:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 519
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 521
    .local v7, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v4

    .line 523
    .local v4, childWidthMeasureSpec:I
    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v9

    .line 524
    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v9

    .line 525
    const/high16 v9, 0x4000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 528
    .local v3, childHeightMeasureSpec:I
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

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

    .line 1259
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1260
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 1261
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 1262
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 1263
    if-eqz p4, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 1269
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1270
    return-void

    .line 1267
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

    .line 2062
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2063
    const/16 p1, 0x82

    .line 2068
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2072
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 2080
    :cond_1
    :goto_2
    return v1

    .line 2064
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2065
    const/16 p1, 0x21

    goto :goto_0

    .line 2068
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2076
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2080
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2134
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2146
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2141
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2142
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2143
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2144
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35
    .parameter "ev"

    .prologue
    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 938
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 943
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 945
    const/4 v3, 0x1

    .line 1208
    :goto_0
    return v3

    .line 948
    :cond_1
    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1208
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 950
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 951
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 952
    const/4 v3, 0x0

    goto :goto_0

    .line 950
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 959
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_5

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 963
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 968
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 969
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 974
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_2

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    goto :goto_1

    .line 987
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 989
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 991
    .local v18, activePointerIndex:I
    if-gez v18, :cond_6

    .line 992
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 995
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_11

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 1002
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v34

    .line 1003
    .local v34, y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v3, v3, v34

    float-to-int v5, v3

    .line 1004
    .local v5, deltaY:I
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    .line 1007
    .local v26, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    .line 1008
    .local v27, oldY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v29, v0

    .line 1011
    .local v29, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v32

    .line 1012
    .local v32, scrollY:I
    const/16 v22, 0x0

    .line 1013
    .local v22, delta:I
    const/16 v31, 0x0

    .line 1015
    .local v31, scroll:I
    move/from16 v22, v5

    .line 1016
    move/from16 v31, v32

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v6, v0

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1023
    const/16 v22, 0x0

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1025
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1027
    :cond_8
    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v22, v0

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1033
    :cond_9
    if-gez v22, :cond_a

    .line 1034
    if-lez v31, :cond_e

    .line 1035
    add-int v3, v31, v22

    if-gez v3, :cond_d

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    add-int v4, v31, v22

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1038
    const/4 v3, 0x0

    move/from16 v0, v31

    neg-int v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->scrollBy(II)V

    .line 1049
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->updatePullState()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 1056
    :cond_a
    if-lez v22, :cond_b

    .line 1057
    const/16 v20, 0x0

    .line 1058
    .local v20, bottomEdge:I
    const/16 v19, 0x0

    .line 1059
    .local v19, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v20, v3, v4

    .line 1061
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1065
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v3, v31

    sub-int v19, v3, v20

    .line 1067
    if-lez v19, :cond_10

    .line 1069
    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 1071
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    .line 1084
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->updatePullState()V

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 1089
    .end local v19           #availableToScroll:I
    .end local v20           #bottomEdge:I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_c

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1091
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v3, v3, v29

    if-eqz v3, :cond_2

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1042
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_3

    .line 1045
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v6, v0

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 1074
    .restart local v19       #availableToScroll:I
    .restart local v20       #bottomEdge:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    sub-int v4, v22, v19

    int-to-float v4, v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1076
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_4

    .line 1080
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v6, v0

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1082
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    .line 1094
    .end local v5           #deltaY:I
    .end local v19           #availableToScroll:I
    .end local v20           #bottomEdge:I
    .end local v22           #delta:I
    .end local v26           #oldX:I
    .end local v27           #oldY:I
    .end local v29           #prevBounceExtent:F
    .end local v31           #scroll:I
    .end local v32           #scrollY:I
    .end local v34           #y:F
    :cond_11
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v34

    .line 1095
    .restart local v34       #y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v3, v3, v34

    float-to-int v5, v3

    .line 1096
    .restart local v5       #deltaY:I
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    .line 1099
    .restart local v26       #oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    .line 1100
    .restart local v27       #oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    .line 1101
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v28

    .line 1102
    .local v28, overscrollMode:I
    if-eqz v28, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_16

    if-lez v9, :cond_16

    :cond_12
    const/16 v21, 0x1

    .line 1105
    .local v21, canOverscroll:Z
    :goto_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1110
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1112
    if-eqz v21, :cond_2

    .line 1113
    add-int v30, v27, v5

    .line 1114
    .local v30, pulledToY:I
    if-gez v30, :cond_17

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1125
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1127
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 1102
    .end local v21           #canOverscroll:Z
    .end local v30           #pulledToY:I
    :cond_16
    const/16 v21, 0x0

    goto :goto_5

    .line 1119
    .restart local v21       #canOverscroll:Z
    .restart local v30       #pulledToY:I
    :cond_17
    move/from16 v0, v30

    if-le v0, v9, :cond_14

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_6

    .line 1134
    .end local v5           #deltaY:I
    .end local v9           #range:I
    .end local v18           #activePointerIndex:I
    .end local v21           #canOverscroll:Z
    .end local v26           #oldX:I
    .end local v27           #oldY:I
    .end local v28           #overscrollMode:I
    .end local v30           #pulledToY:I
    .end local v34           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v33, v0

    .line 1138
    .local v33, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    .line 1141
    .local v25, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_18

    .line 1142
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_19

    .line 1143
    const/16 v23, 0x1

    .line 1173
    .local v23, flingNeeded:Z
    if-eqz v23, :cond_18

    .line 1174
    move/from16 v0, v25

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fling(I)V

    .line 1183
    .end local v23           #flingNeeded:Z
    :cond_18
    :goto_7
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_1

    .line 1177
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1178
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_7

    .line 1188
    .end local v25           #initialVelocity:I
    .end local v33           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1189
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1192
    :cond_1a
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 1193
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_1

    .line 1197
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1198
    .local v24, index:I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v34

    .line 1199
    .restart local v34       #y:F
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1200
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 1204
    .end local v24           #index:I
    .end local v34           #y:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1205
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    goto/16 :goto_1

    .line 948
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1483
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1484
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1486
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1487
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1489
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1490
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1491
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1492
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1501
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1503
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1483
    goto :goto_0

    .line 1496
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1497
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1498
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1274
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1298
    :goto_0
    return v2

    .line 1277
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1278
    goto :goto_0

    .line 1280
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1298
    goto :goto_0

    .line 1282
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1283
    .local v1, viewportHeight:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1284
    .local v0, targetScrollY:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, v4, :cond_2

    .line 1285
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1288
    goto :goto_0

    .line 1290
    .end local v0           #targetScrollY:I
    .end local v1           #viewportHeight:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1291
    .restart local v1       #viewportHeight:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1292
    .restart local v0       #targetScrollY:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, v4, :cond_3

    .line 1293
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1296
    goto :goto_0

    .line 1280
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
    .line 2041
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2042
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2048
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2049
    return-void

    .line 2046
    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2086
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

    .line 2088
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 625
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 626
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 2094
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 2095
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2210
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2212
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p1

    .line 2213
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p2

    .line 2214
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2215
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 2218
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setBounceViewBgAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 2302
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-nez v0, :cond_0

    .line 2306
    :goto_0
    return-void

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViewBgAlpha(I)V

    .line 2305
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initBounceView()V

    goto :goto_0
.end method

.method public setBounceViewMargin(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 2309
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-nez v0, :cond_0

    .line 2312
    :goto_0
    return-void

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViewMargin(I)V

    goto :goto_0
.end method

.method public setCustomBounceView(I)Z
    .locals 4
    .parameter "resourceId"

    .prologue
    const/4 v3, 0x0

    .line 2253
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2258
    :goto_0
    return v2

    .line 2255
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2256
    .local v1, childViewTop:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2258
    .local v0, childViewBottom:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public setCustomBounceView(II)Z
    .locals 4
    .parameter "topResourceId"
    .parameter "bottomResourceId"

    .prologue
    const/4 v3, 0x0

    .line 2271
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2276
    :goto_0
    return v2

    .line 2273
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2274
    .local v1, childViewTop:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2276
    .local v0, childViewBottom:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .parameter "topBounceView"
    .parameter "bottomBounceView"

    .prologue
    .line 2288
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2293
    :cond_0
    :goto_0
    return v0

    .line 2290
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 2292
    .local v0, success:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestLayout()V

    goto :goto_0
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 398
    :cond_0
    return-void
.end method

.method public setEnableEndEffect(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEndEffectEnabled:Z

    .line 278
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 469
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestLayout()V

    .line 472
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 758
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    .line 759
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 740
    if-eqz p1, :cond_0

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 751
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    .line 752
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 2222
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2223
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 2224
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2225
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2226
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2227
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2228
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2231
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    .line 2238
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2239
    return-void

    .line 2233
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2234
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2236
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 489
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1679
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1704
    :goto_0
    return-void

    .line 1683
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1684
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1685
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1686
    .local v3, height:I
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1687
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1688
    .local v4, maxY:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 1689
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1691
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1692
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1703
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_0

    .line 1694
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1695
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1696
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1697
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1698
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1701
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11
    .parameter "dx"
    .parameter "dy"
    .parameter "scrollDuration"

    .prologue
    const/4 v3, 0x0

    .line 1715
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1719
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v7, v0, v4

    .line 1720
    .local v7, duration:J
    const-wide/16 v0, 0xfa

    cmp-long v0, v7, v0

    if-lez v0, :cond_1

    .line 1721
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v9, v0, v1

    .line 1722
    .local v9, height:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1723
    .local v6, bottom:I
    sub-int v0, v6, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1724
    .local v10, maxY:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1725
    .local v2, scrollY:I
    add-int v0, v2, p2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    .line 1727
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 1728
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1739
    .end local v2           #scrollY:I
    .end local v6           #bottom:I
    .end local v9           #height:I
    .end local v10           #maxY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_0

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1731
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1732
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1737
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1749
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1750
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "scrollDuration"

    .prologue
    .line 1761
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollByWithDuration(III)V

    .line 1762
    return-void
.end method
