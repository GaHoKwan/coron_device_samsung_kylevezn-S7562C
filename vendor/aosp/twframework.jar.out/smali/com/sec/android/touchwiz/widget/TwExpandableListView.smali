.class public Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field static COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F = 0.0f

.field static final DEBUG_GROUP:Z = false

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field static final ITEM_ANIMATION_OFFSET:F = 0.5f

.field public static IndicatorTransDurationMax:F = 0.0f

.field static final MAX_SCROLL_DURATION:I = 0x4

.field static final OFFSET_FOR_SLIDE:F = 0.5f

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field static final ROTATION_AXIS:I = 0x2

.field static final ROTATION_DEPTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TWExpandableList"

.field public static final TIME_DIFF_BETWEEN_ITEM_ANIMATION:I = 0x258

.field static final TIME_ONE_ITEM_FRAME_ANIMATION:I = 0x32

.field static collapseAllChildBaseSpeedFactor:F

.field public static groupIndicatorRotateAngle:I

.field public static mGroupIncrement:I

.field public static mGroupStartOffset:I

.field public static mGroupStartPrev:I


# instance fields
.field final COLLAPSEALL_BASE_SPEED:F

.field private DEBUG_TW_EXP_LIST:Z

.field EXPAND_COLLAPSE_TOTAL_TIME:F

.field EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mBufferExpandAllAnimation:I

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field mFooterGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field mGroupFlatPos:I

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field mGroupPos:I

.field mHeaderViewHeight:I

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field mLastDividerAlpha:I

.field private mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

.field private mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

.field private mheightofChildItem:I

.field private mheightofGroupItem:I

.field mposMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

.field rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;

.field private rotateAnimationFlag:Z

.field shudCorrectHeightAfterAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    const/high16 v0, 0x4316

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 275
    const/high16 v0, 0x3f00

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    .line 285
    const/16 v0, 0xb4

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    .line 287
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->IndicatorTransDurationMax:F

    .line 289
    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 291
    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIncrement:I

    .line 293
    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartPrev:I

    .line 345
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    .line 355
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v3, [I

    aput v3, v1, v2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput v5, v1, v2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    aput v4, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    .line 372
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 389
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 390
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, 0x4316

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 246
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 251
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    .line 253
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 255
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 259
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 261
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    .line 277
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSEALL_BASE_SPEED:F

    .line 382
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    .line 1407
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    .line 1585
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    .line 2812
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mLastDividerAlpha:I

    .line 2867
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;

    .line 3535
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    .line 3537
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    .line 395
    sget-object v1, Landroid/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 398
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 399
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 400
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 402
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 404
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 406
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 409
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 411
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 412
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    .line 413
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkAnimationBuffer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->animateFooterAfterCollapseAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    return-object v0
.end method

.method private adjustListSize(I)Z
    .locals 3
    .parameter "bottom"

    .prologue
    .line 1740
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1741
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFrame(IIII)Z

    move-result v0

    .line 1743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private animateFooterAfterCollapseAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1928
    const/4 v0, 0x0

    .line 1929
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1942
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void

    .line 1932
    .restart local v0       #animation:Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1933
    .local v1, footer:Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, v5, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1934
    .restart local v0       #animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1935
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1936
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1937
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1938
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1939
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1940
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1927
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private animateFooterAfterExpandAll()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1895
    const/4 v1, 0x0

    .line 1896
    .local v1, footerCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v7

    sub-int v4, v6, v7

    .local v4, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1897
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v4

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1917
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1918
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1920
    :cond_1
    return-void

    .line 1900
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1901
    .local v0, footer:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1905
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1906
    .local v2, footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    int-to-float v6, v6

    iget v7, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    int-to-float v7, v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1909
    .local v5, transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v3

    .line 1910
    .local v3, grpAnimDuration:F
    float-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1911
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1912
    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1913
    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1914
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1915
    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1896
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkAnimationBuffer()Z
    .locals 1

    .prologue
    .line 2646
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    if-lez v0, :cond_0

    .line 2647
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    .line 2648
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandAll()Z

    .line 2649
    const/4 v0, 0x1

    .line 2651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillAnimationDataForGroups(Z)V
    .locals 25
    .parameter "isExpansionAllAnimation"

    .prologue
    .line 1411
    const/16 v19, -0x1

    .line 1412
    .local v19, longestAnimationTime:I
    const/16 v16, 0x0

    .line 1413
    .local v16, grpHavingLastAnimation:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/16 v20, 0x0

    .line 1415
    .local v20, numOfAnimatingItems:I
    const/4 v15, 0x0

    .line 1416
    .local v15, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/4 v6, 0x0

    .line 1417
    .local v6, flapPosition:I
    const/4 v3, 0x0

    .line 1419
    .local v3, childHeight:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1422
    .restart local v15       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-eqz v15, :cond_3

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v6

    .line 1424
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_3

    .line 1425
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1426
    .local v4, childView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1427
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1434
    .end local v4           #childView:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1436
    .local v5, firstGroupView:Landroid/view/View;
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1437
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 1439
    :cond_1
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1443
    .restart local v15       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v15, :cond_4

    .line 1439
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1419
    .end local v5           #firstGroupView:Landroid/view/View;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1450
    .restart local v5       #firstGroupView:Landroid/view/View;
    :cond_4
    if-nez v5, :cond_6

    .line 1583
    :cond_5
    :goto_3
    return-void

    .line 1453
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    .line 1458
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v7

    .line 1460
    .local v7, flatPos:I
    const/16 v21, 0x0

    .line 1461
    .local v21, posHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1462
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    sub-int v23, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v21, v22, v23

    .line 1468
    :goto_4
    add-int/lit8 v22, v7, -0x1

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v2, v21, v22

    .line 1470
    .local v2, actualPos:I
    if-eqz p1, :cond_a

    .line 1472
    mul-int v22, v20, v3

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v23, v23, v20

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v2, v0, :cond_9

    .line 1475
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    sub-int v22, v22, v2

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    .line 1483
    :goto_5
    if-eqz v17, :cond_7

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V

    .line 1491
    .end local v2           #actualPos:I
    .end local v7           #flatPos:I
    .end local v21           #posHeight:I
    :cond_7
    :goto_6
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1492
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v22, v0

    add-int v20, v20, v22

    goto/16 :goto_2

    .line 1465
    .restart local v7       #flatPos:I
    .restart local v21       #posHeight:I
    :cond_8
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    sub-int v23, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v21, v22, v23

    goto :goto_4

    .line 1477
    .restart local v2       #actualPos:I
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_5

    .line 1480
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1481
    mul-int v22, v20, v3

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v23, v23, v20

    add-int v22, v22, v23

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_5

    .line 1487
    .end local v2           #actualPos:I
    .end local v7           #flatPos:I
    .end local v21           #posHeight:I
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1488
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_6

    .line 1495
    :cond_c
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    .line 1497
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    .line 1501
    :goto_7
    const/4 v10, 0x0

    .line 1502
    .local v10, footerCount:I
    const/4 v14, -0x1

    .line 1503
    .local v14, footerPosHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v23

    sub-int v17, v22, v23

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 1504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v22

    if-nez v22, :cond_10

    .line 1549
    .end local v10           #footerCount:I
    .end local v14           #footerPosHeight:I
    :cond_d
    const/16 v17, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1551
    .restart local v15       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v15, :cond_16

    .line 1549
    :cond_e
    :goto_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1499
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 1507
    .restart local v10       #footerCount:I
    .restart local v14       #footerPosHeight:I
    :cond_10
    const/16 v18, 0x0

    .line 1508
    .local v18, lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v10, :cond_13

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1513
    .restart local v18       #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :goto_b
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v22, v0

    add-int/lit8 v13, v22, 0x1

    .line 1514
    .local v13, footerGroupID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v12

    .line 1515
    .local v12, footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v11

    .line 1516
    .local v11, footerFlatPos:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_11

    .line 1517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    mul-int v22, v22, v13

    sub-int v23, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v14, v22, v23

    .line 1524
    :cond_11
    :goto_c
    add-int/lit8 v22, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v23

    mul-int v22, v22, v23

    add-int v9, v14, v22

    .line 1527
    .local v9, footerActualPos:I
    mul-int v22, v20, v3

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v23, v23, v20

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1529
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_15

    .line 1530
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    sub-int v22, v22, v9

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    .line 1533
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    .line 1535
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    .line 1536
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1540
    .local v8, footer:Landroid/view/View;
    if-eqz v8, :cond_12

    .line 1541
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v14, v14, v22

    .line 1503
    :cond_12
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 1512
    .end local v8           #footer:Landroid/view/View;
    .end local v9           #footerActualPos:I
    .end local v11           #footerFlatPos:I
    .end local v12           #footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v13           #footerGroupID:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .restart local v18       #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    goto/16 :goto_b

    .line 1521
    .restart local v11       #footerFlatPos:I
    .restart local v12       #footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v13       #footerGroupID:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    mul-int v22, v22, v13

    sub-int v23, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v14, v22, v23

    goto/16 :goto_c

    .line 1532
    .restart local v9       #footerActualPos:I
    :cond_15
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_d

    .line 1554
    .end local v9           #footerActualPos:I
    .end local v10           #footerCount:I
    .end local v11           #footerFlatPos:I
    .end local v12           #footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v13           #footerGroupID:I
    .end local v14           #footerPosHeight:I
    .end local v18           #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_16
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 1559
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V

    .line 1565
    :cond_17
    :goto_e
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_e

    .line 1566
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1567
    move-object/from16 v16, v15

    goto/16 :goto_a

    .line 1561
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V

    goto :goto_e

    .line 1571
    :cond_19
    if-eqz v16, :cond_5

    .line 1572
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    goto/16 :goto_3
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1215
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1218
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 479
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 480
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 482
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 488
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 491
    .local v1, isEmpty:Z
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 493
    .local v3, stateSetIndex:I
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 507
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 488
    goto :goto_0

    .restart local v1       #isEmpty:Z
    :cond_4
    move v5, v4

    .line 491
    goto :goto_1

    .line 496
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 498
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 501
    iget-object v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 503
    .local v2, stateSet:[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 501
    .end local v2           #stateSet:[I
    :cond_6
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 1140
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return v0

    .line 1144
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1147
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1167
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1181
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 1120
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1121
    const/4 v0, -0x1

    .line 1123
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 1101
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1102
    const/4 v0, 0x2

    .line 1105
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCollapseAllAnimation()Z
    .locals 69

    .prologue
    .line 2123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v68, v0

    .line 2125
    .local v68, visibleGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    invoke-virtual/range {v68 .. v68}, Ljava/util/ArrayList;->size()I

    move-result v55

    .line 2126
    .local v55, nParents:I
    move/from16 v0, v55

    new-array v0, v0, [I

    move-object/from16 v54, v0

    .line 2127
    .local v54, nChildren:[I
    move/from16 v0, v55

    new-array v0, v0, [[Landroid/view/View;

    move-object/from16 v67, v0

    .line 2128
    .local v67, views:[[Landroid/view/View;
    move/from16 v0, v55

    new-array v0, v0, [[Z

    move-object/from16 v61, v0

    .line 2129
    .local v61, skip:[[Z
    move/from16 v0, v55

    new-array v0, v0, [[Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    move-object/from16 v57, v0

    .line 2130
    .local v57, offsetableAnimationSets:[[Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v62, 0x0

    .line 2131
    .local v62, totalAnimatingChildren:I
    const/16 v65, 0x0

    .line 2133
    .local v65, totalVisibleViews:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2134
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2135
    const-string v4, "TWExpandableList"

    const-string v5, "returning from handleCollapseAllAnimation 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_0
    const/4 v4, 0x0

    .line 2349
    :goto_0
    return v4

    .line 2139
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v4, :cond_3

    .line 2140
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v4, :cond_2

    .line 2142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 2143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 2151
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_3

    .line 2152
    const-string v4, "TWExpandableList"

    const-string v5, "fling/scroll is happening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    move/from16 v66, v0

    .line 2156
    .local v66, viewHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v5, 0x1

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2157
    const/4 v4, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v47, v0

    .line 2158
    .local v47, dividerHeight:I
    const/16 v60, 0x0

    .local v60, parentNo:I
    :goto_2
    move/from16 v0, v60

    move/from16 v1, v55

    if-ge v0, v1, :cond_a

    .line 2159
    move-object/from16 v0, v68

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2160
    .local v48, group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v48, :cond_6

    .line 2158
    :cond_4
    add-int/lit8 v60, v60, 0x1

    goto :goto_2

    .line 2145
    .end local v47           #dividerHeight:I
    .end local v48           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v60           #parentNo:I
    .end local v66           #viewHeight:I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v4, :cond_2

    .line 2147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 2148
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_1

    .line 2163
    .restart local v47       #dividerHeight:I
    .restart local v48       #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v60       #parentNo:I
    .restart local v66       #viewHeight:I
    :cond_6
    move-object/from16 v0, v48

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v49, v0

    .line 2166
    .local v49, iChildren:I
    aput v49, v54, v60

    .line 2167
    add-int v62, v62, v49

    .line 2168
    add-int/lit8 v4, v49, 0x1

    add-int v65, v65, v4

    .line 2169
    add-int/lit8 v4, v49, 0x1

    new-array v4, v4, [Landroid/view/View;

    aput-object v4, v67, v60

    .line 2170
    add-int/lit8 v4, v49, 0x1

    new-array v4, v4, [Z

    aput-object v4, v61, v60

    .line 2171
    aget v4, v54, v60

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    aput-object v4, v57, v60

    .line 2174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, v48

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v58

    .line 2175
    .local v58, parentFlatPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v59, v58, v4

    .line 2177
    .local v59, parentIndex:I
    aget-object v4, v67, v60

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2178
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_7

    .line 2179
    const-string v4, "DEBUG_COLLAPSE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "views["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][0] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v67, v60

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parentIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :cond_7
    new-instance v56, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ZZZ)V

    .line 2183
    .local v56, oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    aget-object v4, v57, v60

    const/4 v5, 0x0

    aput-object v56, v4, v5

    .line 2184
    aget-object v4, v61, v60

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 2187
    const/16 v42, 0x1

    .local v42, childNo:I
    :goto_3
    aget v4, v54, v60

    move/from16 v0, v42

    if-gt v0, v4, :cond_4

    .line 2188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, v48

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    add-int/lit8 v6, v42, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v40

    .line 2191
    .local v40, childFlatPos:I
    const/4 v4, -0x1

    move/from16 v0, v40

    if-eq v0, v4, :cond_9

    .line 2192
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v41, v40, v4

    .line 2193
    .local v41, childIndex:I
    aget-object v4, v67, v60

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v42

    .line 2194
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_8

    .line 2195
    const-string v4, "DEBUG_COLLAPSE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "views["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v67, v60

    aget-object v6, v6, v42

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " childIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_8
    aget-object v4, v57, v60

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ZZZ)V

    aput-object v5, v4, v42

    .line 2200
    aget-object v4, v61, v60

    const/4 v5, 0x0

    aput-boolean v5, v4, v42

    .line 2187
    .end local v41           #childIndex:I
    :goto_4
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_3

    .line 2202
    :cond_9
    aget-object v4, v67, v60

    const/4 v5, 0x0

    aput-object v5, v4, v42

    .line 2203
    aget-object v4, v57, v60

    const/4 v5, 0x0

    aput-object v5, v4, v42

    .line 2204
    aget-object v4, v61, v60

    const/4 v5, 0x1

    aput-boolean v5, v4, v42

    goto :goto_4

    .line 2209
    .end local v40           #childFlatPos:I
    .end local v42           #childNo:I
    .end local v48           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v49           #iChildren:I
    .end local v56           #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    .end local v58           #parentFlatPos:I
    .end local v59           #parentIndex:I
    :cond_a
    const-wide/16 v63, 0x0

    .line 2210
    .local v63, totalAnimationDurationBeforeAddingChildren:J
    const-wide/16 v28, 0x0

    .line 2211
    .local v28, totalAnimationDuration:J
    const-wide/16 v7, 0x0

    .line 2212
    .local v7, parentOffset:J
    const-wide/16 v12, 0x0

    .line 2213
    .local v12, childOffset:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingLeft()I

    move-result v53

    .line 2214
    .local v53, listLeft:I
    const/16 v27, 0x0

    .line 2215
    .local v27, childTransDistance:F
    sget v44, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    .line 2216
    .local v44, childTransBaseSpeed:F
    if-lez v55, :cond_b

    .line 2217
    sget v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    const/high16 v5, 0x3f80

    move/from16 v0, v62

    int-to-float v6, v0

    move/from16 v0, v55

    int-to-float v9, v0

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    mul-float v44, v4, v5

    .line 2219
    :cond_b
    const/16 v45, 0x0

    .line 2220
    .local v45, childTransSpeed:F
    const/high16 v46, 0x3f80

    .line 2221
    .local v46, childTransSpeedFactor:F
    const-wide/16 v30, 0x0

    .line 2222
    .local v30, childTransDuration:J
    const/16 v22, 0x0

    .line 2224
    .local v22, childTransAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    const/high16 v43, 0x3f80

    .line 2225
    .local v43, childStartAlpha:F
    const/16 v39, 0x0

    .line 2226
    .local v39, childEndAlpha:F
    const-wide/16 v20, 0x0

    .line 2227
    .local v20, childAlphaDuration:J
    const/4 v14, 0x0

    .line 2229
    .local v14, childAlphaAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    const/16 v34, 0x0

    .line 2230
    .local v34, lastView:Landroid/view/View;
    const/16 v51, 0x0

    .line 2231
    .local v51, lastAnimationSet:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v52, 0x0

    .line 2232
    .local v52, lastChildAnimationSet:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v50, 0x0

    .line 2234
    .local v50, lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 2236
    const-wide/16 v28, 0x0

    .line 2237
    const-wide/16 v63, 0x0

    .line 2238
    const/16 v60, 0x0

    :goto_5
    move/from16 v0, v60

    move/from16 v1, v55

    if-ge v0, v1, :cond_15

    .line 2239
    aget-object v4, v61, v60

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_d

    .line 2238
    :cond_c
    :goto_6
    add-int/lit8 v60, v60, 0x1

    goto :goto_5

    .line 2242
    :cond_d
    move-object/from16 v0, v68

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2243
    .restart local v48       #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    aget v4, v54, v60

    if-nez v4, :cond_f

    .line 2244
    mul-int/lit8 v4, v60, 0x3

    int-to-long v7, v4

    .line 2249
    :goto_7
    if-eqz v60, :cond_e

    .line 2250
    aget-object v10, v57, v60

    const/4 v11, 0x0

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    add-int/lit8 v5, v60, -0x1

    aget-object v5, v57, v5

    add-int/lit8 v6, v60, -0x1

    aget v6, v54, v6

    aget-object v6, v5, v6

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;JZ)V

    aput-object v4, v10, v11

    .line 2253
    :cond_e
    add-long v28, v28, v7

    .line 2255
    aget v4, v54, v60

    if-nez v4, :cond_10

    .line 2256
    const-wide/16 v63, 0x0

    .line 2260
    :goto_8
    const/16 v42, 0x1

    .restart local v42       #childNo:I
    :goto_9
    aget v4, v54, v60

    move/from16 v0, v42

    if-gt v0, v4, :cond_14

    .line 2261
    aget-object v4, v61, v60

    aget-boolean v4, v4, v42

    if-eqz v4, :cond_11

    .line 2260
    :goto_a
    add-int/lit8 v42, v42, 0x1

    goto :goto_9

    .line 2246
    .end local v42           #childNo:I
    :cond_f
    const-wide/16 v7, 0x0

    goto :goto_7

    .line 2258
    :cond_10
    move-wide/from16 v63, v28

    goto :goto_8

    .line 2265
    .restart local v42       #childNo:I
    :cond_11
    aget-object v4, v57, v60

    new-instance v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    aget-object v5, v57, v60

    add-int/lit8 v6, v42, -0x1

    aget-object v11, v5, v6

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;JZ)V

    .end local v14           #childAlphaAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    aput-object v9, v4, v42

    .line 2268
    aget-object v4, v67, v60

    aget-object v4, v4, v42

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v66

    .line 2269
    move/from16 v0, v66

    neg-int v4, v0

    sub-int v4, v4, v47

    int-to-float v0, v4

    move/from16 v27, v0

    .line 2270
    mul-float v45, v44, v46

    .line 2271
    const/4 v4, 0x0

    cmpl-float v4, v45, v4

    if-nez v4, :cond_12

    .line 2272
    const v45, 0x3dcccccd

    .line 2273
    :cond_12
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v4, v4, v45

    float-to-long v0, v4

    move-wide/from16 v30, v0

    .line 2275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2276
    const-wide/16 v30, 0x0

    .line 2277
    :cond_13
    move-wide/from16 v20, v30

    .line 2280
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    const-wide/16 v4, 0x2

    div-long v4, v20, v4

    sub-long v18, v28, v4

    new-instance v22, Landroid/view/animation/DecelerateInterpolator;

    .end local v22           #childTransAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    invoke-direct/range {v22 .. v22}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFJJLandroid/view/animation/Interpolator;ZZZ)V

    .line 2285
    .restart local v14       #childAlphaAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    aget-object v4, v57, v60

    aget-object v4, v4, v42

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v14, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->add(Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)Z

    .line 2288
    new-instance v22, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    new-instance v32, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v32 .. v32}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v35}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFJJLandroid/view/animation/Interpolator;ZZZ)V

    .line 2293
    .end local v34           #lastView:Landroid/view/View;
    .restart local v22       #childTransAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    aget-object v4, v57, v60

    aget-object v4, v4, v42

    const-wide/16 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->add(Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)Z

    .line 2296
    add-long v4, v30, v7

    add-long v28, v28, v4

    .line 2298
    aget-object v4, v67, v60

    aget-object v34, v4, v42

    .line 2299
    .restart local v34       #lastView:Landroid/view/View;
    aget-object v4, v57, v60

    aget-object v52, v4, v42

    goto/16 :goto_a

    .line 2301
    :cond_14
    aget-object v4, v57, v60

    const/4 v5, 0x0

    aget-object v51, v4, v5

    .line 2305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-eqz v4, :cond_c

    aget v4, v54, v60

    if-eqz v4, :cond_c

    .line 2306
    sub-long v4, v28, v63

    long-to-float v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-wide/from16 v2, v63

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z

    goto/16 :goto_6

    .line 2313
    .end local v42           #childNo:I
    .end local v48           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_15
    if-eqz v34, :cond_1d

    .line 2314
    new-instance v32, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x2

    move-object/from16 v33, p0

    invoke-direct/range {v32 .. v37}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2317
    .end local v50           #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .local v32, lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :goto_b
    const/16 v60, 0x0

    :goto_c
    move/from16 v0, v60

    move/from16 v1, v55

    if-ge v0, v1, :cond_1c

    .line 2318
    const/16 v42, 0x0

    .restart local v42       #childNo:I
    :goto_d
    aget v4, v54, v60

    move/from16 v0, v42

    if-gt v0, v4, :cond_1a

    .line 2319
    aget-object v4, v61, v60

    aget-boolean v4, v4, v42

    if-nez v4, :cond_17

    aget-object v4, v67, v60

    aget-object v4, v4, v42

    if-eqz v4, :cond_17

    .line 2320
    aget-object v4, v57, v60

    aget-object v56, v4, v42

    .line 2321
    .restart local v56       #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v38, 0x0

    .line 2323
    .local v38, as:Landroid/view/animation/AnimationSet;
    if-nez v42, :cond_18

    add-int/lit8 v4, v55, -0x1

    move/from16 v0, v60

    if-eq v0, v4, :cond_18

    .line 2324
    invoke-virtual/range {v56 .. v56}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->makeAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v38

    .line 2325
    if-eqz v51, :cond_16

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 2326
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2342
    :cond_16
    :goto_e
    aget-object v4, v67, v60

    aget-object v4, v4, v42

    if-eqz v4, :cond_17

    .line 2343
    aget-object v4, v67, v60

    aget-object v4, v4, v42

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2318
    .end local v38           #as:Landroid/view/animation/AnimationSet;
    .end local v56           #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    :cond_17
    add-int/lit8 v42, v42, 0x1

    goto :goto_d

    .line 2328
    .restart local v38       #as:Landroid/view/animation/AnimationSet;
    .restart local v56       #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    :cond_18
    invoke-virtual/range {v56 .. v56}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->makeAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v38

    .line 2330
    add-int/lit8 v4, v55, -0x1

    move/from16 v0, v60

    if-ne v0, v4, :cond_19

    add-int/lit8 v4, v55, -0x1

    aget v4, v54, v4

    if-eqz v4, :cond_19

    .line 2331
    if-eqz v51, :cond_16

    move-object/from16 v0, v52

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 2332
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_e

    .line 2334
    :cond_19
    if-eqz v51, :cond_16

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 2338
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_e

    .line 2346
    .end local v38           #as:Landroid/view/animation/AnimationSet;
    .end local v56           #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    :cond_1a
    aget-object v4, v67, v60

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v4, :cond_1b

    .line 2347
    aget-object v4, v67, v60

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 2317
    :cond_1b
    add-int/lit8 v60, v60, 0x1

    goto/16 :goto_c

    .line 2349
    .end local v42           #childNo:I
    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v32           #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v50       #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :cond_1d
    move-object/from16 v32, v50

    .end local v50           #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v32       #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    goto/16 :goto_b
.end method

.method private handleCollapseAnimationWithAllItemsAdded()Z
    .locals 11

    .prologue
    .line 2712
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    sub-int/2addr v9, v10

    sub-int v5, v8, v9

    .line 2714
    .local v5, lastExpandedAnimatingItemIndex:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2715
    .local v6, numberOfNewItemsAnimating:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v5, v8

    .line 2716
    add-int/lit8 v8, v6, -0x1

    sub-int v2, v5, v8

    .line 2719
    .local v2, firstExpandItemIndex:I
    const/4 v0, 0x0

    .line 2721
    .local v0, childHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-nez v8, :cond_3

    .line 2723
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 2724
    move v4, v5

    .local v4, i:I
    :goto_0
    if-lt v4, v2, :cond_2

    .line 2726
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2727
    .local v7, toBeExpandedView:Landroid/view/View;
    if-nez v7, :cond_1

    .line 2728
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_0

    .line 2729
    const-string v8, "TWExpandableList"

    const-string v9, " View is null: View number calculation is not-correct or someother: check"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2733
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2735
    if-eqz v7, :cond_0

    .line 2736
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v8, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getGroupPos(I)I

    move-result v3

    .line 2737
    .local v3, groupPos:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildWithinGroupPos(I)I

    move-result v1

    .line 2739
    .local v1, childWithinGroup:I
    sub-int v8, v5, v4

    invoke-virtual {p0, v7, v3, v1, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemFadeInOutAnimation(Landroid/view/View;III)Z

    goto :goto_1

    .line 2743
    .end local v1           #childWithinGroup:I
    .end local v3           #groupPos:I
    .end local v7           #toBeExpandedView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2, v5, v6, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemTranslateAnimation(IIII)V

    .line 2745
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v9, 0x1

    iput v9, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2747
    .end local v4           #i:I
    :cond_3
    const/4 v8, 0x0

    return v8
.end method

.method private handleExpandAllAnimation()Z
    .locals 23

    .prologue
    .line 1774
    const/16 v22, 0x0

    .line 1777
    .local v22, viewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v22, Ljava/util/ArrayList;

    .end local v22           #viewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .restart local v22       #viewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1780
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1781
    const-string v2, "TWExpandableList"

    const-string v5, "returning from handleExpandAllAnimation"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_0
    const/4 v2, 0x0

    .line 1877
    :goto_0
    return v2

    .line 1785
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v2, :cond_3

    .line 1786
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v2, :cond_2

    .line 1788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 1789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 1797
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v2, :cond_3

    .line 1798
    const-string v2, "TWExpandableList"

    const-string v5, "fling/scroll is happening"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_3
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 1802
    const/4 v7, 0x0

    .line 1804
    .local v7, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1806
    .local v20, mNoOfVisibleGroups:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1809
    .local v4, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v16

    .line 1810
    .local v16, gflatPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v16, v2

    add-int/lit8 v15, v2, 0x1

    .line 1811
    .local v15, gfirstExpandItemIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v16, v2

    iget v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int v17, v2, v5

    .line 1814
    .local v17, glastExpandedItemIndex:I
    const/4 v6, 0x0

    .line 1816
    .local v6, parentTop:I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v16, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1822
    .local v9, currGrpView:Landroid/view/View;
    if-eqz v9, :cond_4

    .line 1823
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1826
    :cond_4
    move/from16 v19, v15

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_8

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v19, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1829
    .local v3, currView:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 1830
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1832
    :cond_5
    if-eqz v3, :cond_6

    .line 1833
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    sub-int v5, v19, v15

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAll(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;III)Z

    .line 1826
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1791
    .end local v3           #currView:Landroid/view/View;
    .end local v4           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v6           #parentTop:I
    .end local v7           #childHeight:I
    .end local v9           #currGrpView:Landroid/view/View;
    .end local v15           #gfirstExpandItemIndex:I
    .end local v16           #gflatPos:I
    .end local v17           #glastExpandedItemIndex:I
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v20           #mNoOfVisibleGroups:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v2, :cond_2

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 1794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto/16 :goto_1

    .line 1843
    .restart local v4       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v6       #parentTop:I
    .restart local v7       #childHeight:I
    .restart local v9       #currGrpView:Landroid/view/View;
    .restart local v15       #gfirstExpandItemIndex:I
    .restart local v16       #gflatPos:I
    .restart local v17       #glastExpandedItemIndex:I
    .restart local v18       #i:I
    .restart local v19       #j:I
    .restart local v20       #mNoOfVisibleGroups:I
    :cond_8
    if-eqz v9, :cond_9

    .line 1844
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object v10, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAll(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;III)Z

    .line 1806
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 1850
    .end local v4           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v6           #parentTop:I
    .end local v9           #currGrpView:Landroid/view/View;
    .end local v15           #gfirstExpandItemIndex:I
    .end local v16           #gflatPos:I
    .end local v17           #glastExpandedItemIndex:I
    .end local v19           #j:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->animateFooterAfterExpandAll()V

    .line 1851
    const/4 v14, 0x0

    .line 1853
    .local v14, duration:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1854
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 1855
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1857
    .restart local v4       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/16 v21, 0x0

    .line 1858
    .local v21, nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v14, :cond_c

    .line 1859
    add-int/lit8 v2, v18, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_b

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v21, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1863
    .restart local v21       #nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_b
    if-eqz v21, :cond_e

    .line 1864
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v2

    float-to-int v14, v2

    .line 1869
    :cond_c
    :goto_5
    sget v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    sget v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIncrement:I

    add-int/2addr v2, v5

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 1870
    iget v2, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isAlreadyExpandedDuringExpandAll(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1872
    int-to-float v2, v14

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v10, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z

    .line 1855
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1866
    :cond_e
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v2

    float-to-int v14, v2

    goto :goto_5

    .line 1877
    .end local v4           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v21           #nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private handleExpandAnimationWithAllItemsAdded()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2660
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v5, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    .line 2661
    .local v5, lastExpandedAnimatingItemIndex:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v6, v9, v10

    .line 2663
    .local v6, lastExpandedItemIndex:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v7, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2664
    .local v7, numberOfNewItemsAnimating:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v5, v9

    .line 2665
    add-int/lit8 v9, v7, -0x1

    sub-int v2, v5, v9

    .line 2668
    .local v2, firstExpandItemIndex:I
    const/4 v1, 0x0

    .line 2670
    .local v1, childheight:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-nez v9, :cond_3

    .line 2672
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v11, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2673
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 2675
    move v4, v2

    .local v4, i:I
    :goto_0
    if-gt v4, v5, :cond_2

    .line 2677
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2679
    .local v8, toBeExpandedView:Landroid/view/View;
    if-nez v8, :cond_1

    .line 2680
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v9, :cond_0

    .line 2681
    const-string v9, "TWExpandableList"

    const-string v10, " View is null: View number calculation is not-correct or someother: check"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2686
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2688
    if-eqz v8, :cond_0

    .line 2689
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getGroupPos(I)I

    move-result v3

    .line 2690
    .local v3, groupPos:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildWithinGroupPos(I)I

    move-result v0

    .line 2693
    .local v0, childWithinGroup:I
    sub-int v9, v4, v2

    invoke-virtual {p0, v8, v3, v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemFadeInOutAnimation(Landroid/view/View;III)Z

    goto :goto_1

    .line 2698
    .end local v0           #childWithinGroup:I
    .end local v3           #groupPos:I
    .end local v8           #toBeExpandedView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2, v6, v7, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemTranslateAnimation(IIII)V

    .line 2700
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v11, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2703
    .end local v4           #i:I
    :cond_3
    return v11
.end method

.method private handleExpandCollapseAllAnimation()Z
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v0, :cond_0

    .line 1766
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandAllAnimation()Z

    move-result v0

    .line 1770
    :goto_0
    return v0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1768
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z

    move-result v0

    goto :goto_0

    .line 1770
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleExpandCollapseAnimationWithAllItemsAdded()Z
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eqz v0, :cond_0

    .line 1749
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandCollapseAllAnimation()Z

    move-result v0

    .line 1759
    :goto_0
    return v0

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    packed-switch v0, :pswitch_data_0

    .line 1759
    const/4 v0, 0x0

    goto :goto_0

    .line 1754
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandAnimationWithAllItemsAdded()Z

    move-result v0

    goto :goto_0

    .line 1757
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAnimationWithAllItemsAdded()Z

    move-result v0

    goto :goto_0

    .line 1751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAlreadyExpandedDuringExpandAll(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 1881
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1882
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1884
    .local v0, allreadyExpNumber:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1885
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    if-eqz v2, :cond_0

    .line 1887
    const/4 v2, 0x1

    .line 1891
    .end local v0           #allreadyExpNumber:I
    .end local v1           #j:I
    :goto_1
    return v2

    .line 1884
    .restart local v0       #allreadyExpNumber:I
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1891
    .end local v0           #allreadyExpNumber:I
    .end local v1           #j:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 662
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lastAnimatingFooterIndex()I
    .locals 4

    .prologue
    .line 2870
    const/4 v1, -0x1

    .line 2871
    .local v1, lastAnimatingFooterIndex:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2872
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2877
    :cond_0
    return v1

    .line 2875
    :cond_1
    move v1, v0

    .line 2871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollToHeaderAtTheTop(Z)V
    .locals 13
    .parameter "expand"

    .prologue
    .line 4619
    const/4 v5, 0x0

    .line 4620
    .local v5, offset:I
    const/4 v8, 0x0

    .line 4621
    .local v8, totalHeight:I
    const/4 v2, 0x0

    .line 4622
    .local v2, grpPos:I
    const/4 v4, 0x0

    .line 4623
    .local v4, numOfGroups:I
    const/4 v3, 0x0

    .line 4625
    .local v3, numOfChildren:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v10

    if-lt v9, v10, :cond_3

    .line 4626
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4627
    .local v6, pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v6, :cond_0

    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    if-eqz v9, :cond_0

    .line 4628
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    mul-int v7, v9, v10

    .line 4630
    .local v7, totalHeadersHeight:I
    move v8, v7

    .line 4631
    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v2, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 4632
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v4, v2, v9

    .line 4633
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, v9, v2

    .line 4634
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 4635
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v10, v3

    add-int v8, v9, v10

    .line 4648
    .end local v6           #pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v7           #totalHeadersHeight:I
    :cond_0
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v1, v9, v10

    .line 4649
    .local v1, error:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int v5, v9, v10

    .line 4650
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    div-int v0, v5, v9

    .line 4651
    .local v0, duration:I
    add-int/lit8 v0, v0, 0x1

    .line 4653
    if-eqz p1, :cond_5

    .line 4654
    if-lez v5, :cond_4

    .line 4655
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v10, 0x2

    const/4 v11, 0x0

    mul-int/lit8 v12, v0, 0x1

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    .line 4668
    :goto_1
    return-void

    .line 4637
    .end local v0           #duration:I
    .end local v1           #error:I
    .restart local v6       #pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v7       #totalHeadersHeight:I
    :cond_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 4638
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v10, v3

    add-int v8, v9, v10

    goto :goto_0

    .line 4640
    :cond_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 4641
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    mul-int/2addr v10, v3

    add-int v8, v9, v10

    goto :goto_0

    .line 4645
    .end local v6           #pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v7           #totalHeadersHeight:I
    :cond_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 4646
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    goto :goto_0

    .line 4658
    .restart local v0       #duration:I
    .restart local v1       #error:I
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_1

    .line 4661
    :cond_5
    if-lez v5, :cond_6

    .line 4662
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v10, 0x3

    const/4 v11, 0x0

    mul-int/lit8 v12, v0, 0x1

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_1

    .line 4665
    :cond_6
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_1
.end method

.method private setAnimationForExpandAll(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;III)Z
    .locals 25
    .parameter "view"
    .parameter "grp"
    .parameter "childIndex"
    .parameter "parentTop"
    .parameter "childrenHeight"

    .prologue
    .line 2354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v7, 0x1

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2355
    if-nez p1, :cond_0

    .line 2356
    const/4 v4, 0x0

    .line 2471
    :goto_0
    return v4

    .line 2357
    :cond_0
    const/16 v23, 0x0

    .local v23, startAlpha:F
    const/16 v21, 0x0

    .line 2358
    .local v21, endAlpha:F
    const/4 v5, 0x0

    .local v5, startRot:F
    const/4 v6, 0x0

    .line 2359
    .local v6, endRot:F
    const/4 v11, 0x0

    .line 2360
    .local v11, isExpand:Z
    const/16 v18, 0x0

    .line 2361
    .local v18, alphaAnim:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .line 2362
    .local v3, rotAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/16 v24, 0x0

    .line 2363
    .local v24, transAnim:Landroid/view/animation/TranslateAnimation;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2364
    .local v19, animationSet:Landroid/view/animation/AnimationSet;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingLeft()I

    move-result v20

    .line 2366
    .local v20, childLeft:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_c

    .line 2367
    const/16 v23, 0x0

    .line 2368
    const/high16 v21, 0x3f80

    .line 2369
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v4, :cond_1

    .line 2370
    const/high16 v5, -0x3d4c

    .line 2371
    const/4 v6, 0x0

    .line 2373
    :cond_1
    const/4 v11, 0x1

    .line 2380
    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v4, v0, :cond_3

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-eqz v4, :cond_3

    .line 2381
    new-instance v18, Landroid/view/animation/AlphaAnimation;

    .end local v18           #alphaAnim:Landroid/view/animation/Animation;
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2382
    .restart local v18       #alphaAnim:Landroid/view/animation/Animation;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2383
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationOffsetForChild(I)F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2384
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_2

    .line 2385
    const-string v4, "EXPAND_ALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "group_id: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " duration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " offset: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_2
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    .end local v3           #rotAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x4000

    div-float v7, v4, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x4000

    div-float v8, v4, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 2390
    .restart local v3       #rotAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v4

    float-to-long v9, v4

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2391
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationOffsetForChild(I)F

    move-result v4

    float-to-long v9, v4

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2393
    if-eqz v11, :cond_e

    .line 2394
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2395
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2402
    :cond_3
    :goto_1
    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v4, v0, :cond_4

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-eqz v4, :cond_4

    .line 2403
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24           #transAnim:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v7, v0

    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationStartPositionForChild(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationEndPositionForChild(I)I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2406
    .restart local v24       #transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDurationForChild(I)F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2407
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationOffsetForChild(I)F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2408
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2409
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2412
    :cond_4
    const/4 v4, -0x1

    move/from16 v0, p3

    if-ne v4, v0, :cond_5

    .line 2415
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24           #transAnim:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v7, v0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    int-to-float v9, v9

    move-object/from16 v0, p2

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    int-to-float v10, v10

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2417
    .restart local v24       #transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v22

    .line 2418
    .local v22, grpAnimDuration:F
    move/from16 v0, v22

    float-to-long v9, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2419
    const-wide/16 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2420
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2421
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2424
    .end local v22           #grpAnimDuration:F
    :cond_5
    const/4 v8, 0x0

    .line 2425
    .local v8, animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    const/4 v12, 0x0

    .line 2428
    .local v12, animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_f

    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_f

    .line 2429
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    .end local v8           #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2436
    .end local v12           #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v8       #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :goto_2
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_10

    const/4 v4, -0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    .line 2437
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v11

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2443
    .restart local v12       #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :goto_3
    if-eqz v18, :cond_7

    .line 2444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2445
    const-wide/16 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2447
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2448
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2452
    :cond_7
    if-eqz v3, :cond_9

    .line 2453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2454
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2457
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2460
    :cond_9
    if-eqz v24, :cond_b

    .line 2461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2462
    const-wide/16 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2464
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2466
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2469
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2471
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2375
    .end local v8           #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .end local v12           #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_d

    .line 2376
    const-string v4, "TWExpandableList"

    const-string v7, "triggerListItemFadeInOutAnimation:: UNKNOWN ANIMATION ATTACHED"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2397
    :cond_e
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2398
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_1

    .line 2432
    .restart local v8       #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v12       #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :cond_f
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    .end local v8           #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .end local v12           #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v8       #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    goto/16 :goto_2

    .line 2440
    :cond_10
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v11

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .restart local v12       #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    goto/16 :goto_3
.end method

.method private setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z
    .locals 24
    .parameter "grp"
    .parameter "indDuration"
    .parameter "StartOffset"

    .prologue
    .line 2478
    if-nez p1, :cond_0

    .line 2479
    const/4 v3, 0x0

    .line 2588
    :goto_0
    return v3

    .line 2481
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v21

    .line 2484
    .local v21, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2485
    const/16 v18, 0x0

    .line 2486
    .local v18, linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    const/16 v22, 0x0

    .line 2487
    .local v22, subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    const/16 v20, 0x0

    .line 2489
    .local v20, originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    const/16 v16, 0x0

    .line 2490
    .local v16, imgViewInsideSubLinearLayout:Landroid/view/View;
    const/4 v2, 0x0

    .line 2491
    .local v2, animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/4 v4, 0x0

    .line 2492
    .local v4, rotSt:F
    const/4 v5, 0x0

    .line 2493
    .local v5, rotEnd:F
    const/16 v17, 0x0

    .line 2494
    .local v17, isExpand:Z
    const/4 v13, -0x1

    .line 2495
    .local v13, expandingGroupNumber:I
    const/4 v12, -0x1

    .line 2497
    .local v12, collapsingItemNumber:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v13

    .line 2498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v12

    .line 2500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v3, :cond_7

    .line 2501
    const/16 v17, 0x1

    .line 2505
    :goto_1
    if-eqz v17, :cond_9

    .line 2506
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2508
    .local v14, frameLayoutView:Landroid/view/View;
    if-eqz v14, :cond_8

    instance-of v3, v14, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    move-object/from16 v18, v14

    .line 2509
    check-cast v18, Landroid/widget/FrameLayout;

    .line 2524
    :goto_2
    if-eqz v18, :cond_1

    .line 2525
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2526
    .local v19, linearLayoutView:Landroid/view/View;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    move-object/from16 v22, v19

    .line 2527
    check-cast v22, Landroid/widget/LinearLayout;

    .line 2532
    .end local v19           #linearLayoutView:Landroid/view/View;
    :cond_1
    if-eqz v22, :cond_2

    .line 2533
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2538
    :cond_2
    const/4 v15, 0x0

    .line 2539
    .local v15, imgView:Landroid/widget/ImageView;
    if-eqz v20, :cond_3

    .line 2540
    const/high16 v3, 0x900

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #imgView:Landroid/widget/ImageView;
    check-cast v15, Landroid/widget/ImageView;

    .line 2543
    .restart local v15       #imgView:Landroid/widget/ImageView;
    :cond_3
    if-eqz v15, :cond_c

    .line 2544
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v3, :cond_4

    .line 2545
    const-string v3, "TWExpandableList"

    const-string v7, "setIndicatorAnimation...imageView supplied by application.."

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_4
    move-object/from16 v16, v15

    .line 2561
    :cond_5
    :goto_3
    if-eqz v17, :cond_f

    .line 2562
    sget v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v5, v3

    .line 2567
    :goto_4
    if-eqz v16, :cond_6

    .line 2568
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    .end local v2           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x4000

    div-float v6, v3, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x4000

    div-float v7, v3, v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 2574
    .restart local v2       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    move/from16 v0, p2

    float-to-long v7, v0

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2575
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2577
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2578
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2581
    .local v6, rotateListener1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2582
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2583
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2585
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2588
    .end local v2           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .end local v4           #rotSt:F
    .end local v5           #rotEnd:F
    .end local v6           #rotateListener1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .end local v12           #collapsingItemNumber:I
    .end local v13           #expandingGroupNumber:I
    .end local v14           #frameLayoutView:Landroid/view/View;
    .end local v15           #imgView:Landroid/widget/ImageView;
    .end local v16           #imgViewInsideSubLinearLayout:Landroid/view/View;
    .end local v17           #isExpand:Z
    .end local v18           #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .end local v20           #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .end local v22           #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2503
    .restart local v2       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v4       #rotSt:F
    .restart local v5       #rotEnd:F
    .restart local v12       #collapsingItemNumber:I
    .restart local v13       #expandingGroupNumber:I
    .restart local v16       #imgViewInsideSubLinearLayout:Landroid/view/View;
    .restart local v17       #isExpand:Z
    .restart local v18       #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .restart local v20       #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .restart local v22       #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2511
    .restart local v14       #frameLayoutView:Landroid/view/View;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2514
    .end local v14           #frameLayoutView:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2516
    .restart local v14       #frameLayoutView:Landroid/view/View;
    if-eqz v14, :cond_a

    instance-of v3, v14, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a

    move-object/from16 v18, v14

    .line 2517
    check-cast v18, Landroid/widget/FrameLayout;

    goto/16 :goto_2

    .line 2519
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2529
    .restart local v19       #linearLayoutView:Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2548
    .end local v19           #linearLayoutView:Landroid/view/View;
    .restart local v15       #imgView:Landroid/widget/ImageView;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v3, :cond_d

    .line 2549
    const-string v3, "TWExpandableList"

    const-string v7, "setIndicatorAnimation...imageView not supplied by application.."

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_d
    if-eqz v18, :cond_e

    .line 2551
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 2552
    .local v23, subLinearLayoutView:Landroid/view/View;
    if-eqz v23, :cond_e

    move-object/from16 v0, v23

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_e

    move-object/from16 v22, v23

    .line 2553
    check-cast v22, Landroid/widget/LinearLayout;

    .line 2556
    .end local v23           #subLinearLayoutView:Landroid/view/View;
    :cond_e
    if-eqz v22, :cond_5

    .line 2557
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_3

    .line 2564
    :cond_f
    sget v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v3, v3

    neg-float v5, v3

    goto/16 :goto_4
.end method

.method private triggerCorrectTooHighAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3564
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3565
    .local v1, childCount:I
    if-gtz v1, :cond_1

    .line 3598
    :cond_0
    :goto_0
    return-void

    .line 3568
    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    add-int/lit8 v8, v10, -0x1

    .line 3569
    .local v8, lastPosition:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_0

    if-lez v1, :cond_0

    .line 3570
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3572
    .local v7, lastChild:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 3575
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3577
    .local v6, lastBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 3578
    .local v9, widthSpec:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3579
    .local v5, heightSpec:I
    invoke-virtual {p0, v9, v5}, Landroid/view/View;->measure(II)V

    .line 3580
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v10, v11

    .line 3581
    .local v2, end:I
    sub-int v0, v2, v6

    .line 3582
    .local v0, bottomOffset:I
    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3584
    .local v3, firstChild:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 3586
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3587
    .local v4, firstTop:I
    if-lez v0, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_0

    .line 3588
    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_3

    .line 3590
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3592
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    if-nez v10, :cond_4

    .line 3593
    new-instance v10, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    .line 3594
    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v10, v13, v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0
.end method


# virtual methods
.method checkIfGroupCanAddChild(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "groupIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 4213
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 4215
    .local v1, pData:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    const/4 v0, -0x1

    .line 4216
    .local v0, lastExpandingItemIndex:I
    if-eqz v1, :cond_1

    .line 4219
    iget v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v0, v5, v6

    .line 4230
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4232
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_2

    .line 4240
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 4222
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v6, 0x2

    invoke-static {v6, p1, v7, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 4224
    .local v2, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v5, :cond_0

    .line 4225
    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    goto :goto_0

    .line 4235
    .end local v2           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v3       #view:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTotalChildrenAdded(ILjava/util/ArrayList;)I

    move-result v6

    add-int/2addr v6, v0

    mul-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 4237
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public collapseAll()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4685
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v10

    sub-int v1, v9, v10

    .line 4686
    .local v1, childCount:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getCount()I

    move-result v0

    .line 4690
    .local v0, actualChildCountInAdapter:I
    if-gtz v0, :cond_1

    .line 4790
    :cond_0
    :goto_0
    return v7

    .line 4696
    :cond_1
    if-gtz v1, :cond_3

    .line 4698
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v5

    .line 4699
    .local v5, oldFlag:Z
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 4700
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 4701
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    .line 4700
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4703
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    move v7, v8

    .line 4704
    goto :goto_0

    .line 4706
    .end local v3           #i:I
    .end local v5           #oldFlag:Z
    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eq v9, v8, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v9, v8, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 4714
    :cond_4
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-ne v9, v8, :cond_0

    .line 4715
    const-string v8, "TWExpandableList"

    const-string v9, "collapseAll returned false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4720
    :cond_5
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v9, :cond_7

    .line 4721
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v8, :cond_9

    .line 4722
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v9, :cond_6

    .line 4723
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 4724
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 4732
    :cond_6
    :goto_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v9, :cond_7

    .line 4733
    const-string v9, "TWExpandableList"

    const-string v10, "fling/scroll is happening"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findCollapsingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 4739
    .local v4, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 4740
    :cond_8
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_0

    .line 4741
    const-string v8, "TWExpandableList"

    const-string v9, "Nothing to expand/collapse"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4726
    .end local v4           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_9
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v12, :cond_6

    .line 4727
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v9, :cond_6

    .line 4728
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4729
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_2

    .line 4745
    .restart local v4       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_a
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v9, :cond_b

    .line 4746
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Call setAdapter(ExpandableListAdapter) before expandAll/collapseAll"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4750
    :cond_b
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v9

    if-nez v9, :cond_d

    .line 4751
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_c

    .line 4752
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    .line 4751
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    move v7, v8

    .line 4753
    goto/16 :goto_0

    .line 4757
    .end local v3           #i:I
    :cond_d
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    if-ne v9, v11, :cond_e

    .line 4758
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_e

    .line 4759
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4760
    .local v6, pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v9, v12, :cond_10

    .line 4761
    const/4 v2, 0x0

    .line 4762
    .local v2, childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4763
    if-eqz v2, :cond_10

    .line 4764
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 4771
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_e
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    if-ne v9, v11, :cond_f

    .line 4772
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_f

    .line 4773
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4774
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v9, v8, :cond_11

    .line 4775
    const/4 v2, 0x0

    .line 4776
    .restart local v2       #childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4777
    if-eqz v2, :cond_11

    .line 4778
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 4785
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_f
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v9, :cond_12

    .line 4786
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollToHeaderAtTheTop(Z)V

    :goto_6
    move v7, v8

    .line 4790
    goto/16 :goto_0

    .line 4758
    .restart local v3       #i:I
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4772
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4788
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_12
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_6
.end method

.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 836
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 840
    :cond_0
    return v0
.end method

.method correctAnimatingItems()V
    .locals 14

    .prologue
    .line 4114
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4115
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4116
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4153
    :cond_0
    return-void

    .line 4119
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4120
    .local v2, groupHeight:I
    const/4 v7, 0x0

    .line 4122
    .local v7, numberOfVisibleItems:I
    move v9, v4

    .line 4124
    .local v9, remainingHeight:I
    const/4 v5, 0x0

    .line 4125
    .local v5, i:I
    :goto_0
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    if-lez v9, :cond_0

    .line 4126
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 4128
    .local v3, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isGroupExpanded(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4129
    const/4 v11, 0x0

    .line 4130
    .local v11, visibleChildren:I
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v13, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v1

    .line 4132
    .local v1, gflatPos:I
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v12, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    .line 4133
    .local v8, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v12

    iget v13, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-interface {v12, v13}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 4135
    .local v6, numberOfChildren:I
    sub-int/2addr v9, v2

    .line 4136
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v12, v6

    sub-int v10, v9, v12

    .line 4138
    .local v10, tempHeight:I
    if-gez v10, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    if-eqz v12, :cond_3

    .line 4139
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    div-int v11, v9, v12

    .line 4143
    :goto_1
    move v9, v10

    .line 4144
    add-int/2addr v7, v11

    .line 4146
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v12

    if-nez v12, :cond_2

    .line 4147
    iget v12, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-ge v12, v11, :cond_2

    .line 4148
    iput v11, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 4125
    .end local v1           #gflatPos:I
    .end local v6           #numberOfChildren:I
    .end local v8           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v10           #tempHeight:I
    .end local v11           #visibleChildren:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4141
    .restart local v1       #gflatPos:I
    .restart local v6       #numberOfChildren:I
    .restart local v8       #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v10       #tempHeight:I
    .restart local v11       #visibleChildren:I
    :cond_3
    move v11, v6

    goto :goto_1
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 1186
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1203
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1192
    .local v6, adjustedPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1193
    .local v7, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v7, :cond_1

    .line 1194
    iget-object v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 1195
    .local v8, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 1196
    if-eqz v8, :cond_1

    .line 1197
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 1198
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1199
    .local v2, packedPosition:J
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1200
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0

    .line 1203
    .end local v2           #packedPosition:J
    .end local v8           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "TWExpandableList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDraw State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 452
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 453
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 466
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 527
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 529
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 532
    :cond_0
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 9
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    const/4 v8, 0x1

    .line 2816
    const/16 v1, 0xff

    .line 2817
    .local v1, alpha:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-ne v6, v8, :cond_2

    .line 2823
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, p3

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v6

    if-ne v6, v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v6

    if-lt p3, v6, :cond_2

    .line 2824
    :cond_1
    const/4 v1, 0x0

    .line 2827
    :cond_2
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, p3, v6

    .line 2831
    .local v4, flatListPosition:I
    if-ltz v4, :cond_7

    .line 2832
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 2833
    .local v0, adjustedPosition:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 2836
    .local v5, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-eq v6, v8, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v7, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v6, v7, :cond_6

    .line 2839
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 2840
    .local v3, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2841
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mClipChildDivider:Z

    .line 2842
    .local v2, clip:Z
    if-nez v2, :cond_5

    .line 2843
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2848
    :goto_0
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2849
    if-eqz v2, :cond_4

    .line 2850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2852
    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2865
    .end local v0           #adjustedPosition:I
    .end local v2           #clip:Z
    .end local v3           #divider:Landroid/graphics/drawable/Drawable;
    .end local v5           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :goto_1
    return-void

    .line 2845
    .restart local v0       #adjustedPosition:I
    .restart local v2       #clip:Z
    .restart local v3       #divider:Landroid/graphics/drawable/Drawable;
    .restart local v5       #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2846
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 2855
    .end local v2           #clip:Z
    .end local v3           #divider:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2857
    .end local v0           #adjustedPosition:I
    .end local v5           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_7
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mLastDividerAlpha:I

    if-eq v6, v1, :cond_8

    .line 2858
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mLastDividerAlpha:I

    .line 2859
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2860
    .restart local v3       #divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2861
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2864
    .end local v3           #divider:Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-super {p0, p1, p2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1
.end method

.method protected drawRemainingDivider(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 2751
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2752
    .local v6, count:I
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 2753
    .local v17, tempRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 2754
    .local v5, clipSaved:Z
    const/4 v15, 0x0

    .line 2755
    .local v15, saveClip:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 2756
    .local v13, listHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    if-lez v18, :cond_0

    .line 2757
    const/4 v5, 0x1

    .line 2758
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2759
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2760
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2761
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2762
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v15

    .line 2763
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2766
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v9, v0

    .line 2767
    .local v9, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    div-float v19, v19, v9

    invoke-interface/range {v18 .. v19}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2769
    .local v16, shift:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1

    .line 2770
    mul-int/lit8 v16, v16, -0x1

    .line 2773
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 2774
    .local v14, save1:I
    const/16 v18, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v7

    .line 2777
    .local v7, dividerHeight:I
    if-lez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_2

    const/4 v8, 0x1

    .line 2778
    .local v8, drawDividers:Z
    :goto_0
    if-eqz v8, :cond_4

    .line 2779
    const/4 v4, 0x0

    .line 2780
    .local v4, child:Landroid/view/View;
    const/4 v10, 0x0

    .line 2781
    .local v10, i:I
    add-int/lit8 v10, v6, -0x1

    :goto_1
    if-ltz v10, :cond_4

    .line 2782
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2783
    if-eqz v4, :cond_3

    .line 2784
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 2786
    .local v12, lastbottom:I
    move-object/from16 v3, v17

    .line 2787
    .local v3, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 2788
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 2789
    if-ge v12, v13, :cond_4

    .line 2790
    const/4 v11, 0x0

    .line 2791
    .local v11, lastChildBottom:I
    :goto_2
    if-ge v11, v13, :cond_4

    .line 2792
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v18

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    add-int v11, v12, v18

    .line 2793
    iput v12, v3, Landroid/graphics/Rect;->top:I

    .line 2794
    add-int v18, v12, v7

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 2795
    move v12, v11

    .line 2796
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 2777
    .end local v3           #bounds:Landroid/graphics/Rect;
    .end local v4           #child:Landroid/view/View;
    .end local v8           #drawDividers:Z
    .end local v10           #i:I
    .end local v11           #lastChildBottom:I
    .end local v12           #lastbottom:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 2781
    .restart local v4       #child:Landroid/view/View;
    .restart local v8       #drawDividers:Z
    .restart local v10       #i:I
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 2805
    .end local v4           #child:Landroid/view/View;
    .end local v10           #i:I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2807
    if-eqz v5, :cond_5

    .line 2808
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2810
    :cond_5
    return-void
.end method

.method public enableRotateAnimationForChildViews(Z)V
    .locals 0
    .parameter "animFlag"

    .prologue
    .line 1289
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    .line 1290
    return-void
.end method

.method public expandAll()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4501
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v10

    sub-int v1, v9, v10

    .line 4502
    .local v1, childCount:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getCount()I

    move-result v0

    .line 4506
    .local v0, actualChildCountInAdapter:I
    if-gtz v0, :cond_0

    .line 4608
    :goto_0
    return v7

    .line 4512
    :cond_0
    if-gtz v1, :cond_2

    .line 4514
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v5

    .line 4515
    .local v5, oldFlag:Z
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 4516
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 4517
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 4516
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4519
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    move v7, v8

    .line 4520
    goto :goto_0

    .line 4522
    .end local v3           #i:I
    .end local v5           #oldFlag:Z
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eq v9, v8, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v9, v8, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 4531
    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_4

    .line 4532
    const-string v8, "TWExpandableList"

    const-string v9, "Expand All returned false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    goto :goto_0

    .line 4537
    :cond_5
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v9, :cond_7

    .line 4538
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v8, :cond_a

    .line 4539
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v9, :cond_6

    .line 4540
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 4541
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 4549
    :cond_6
    :goto_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v9, :cond_7

    .line 4550
    const-string v9, "TWExpandableList"

    const-string v10, "fling/scroll is happening"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findExpandingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 4555
    .local v4, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 4556
    :cond_8
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_9

    .line 4557
    const-string v8, "TWExpandableList"

    const-string v9, "Nothing to expand/collapse"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4558
    const-string v8, "TWExpandableList"

    const-string v9, "***********expandAll anim state set to INVALID************"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_9
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto/16 :goto_0

    .line 4543
    .end local v4           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_a
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v12, :cond_6

    .line 4544
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v9, :cond_6

    .line 4545
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4546
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_2

    .line 4563
    .restart local v4       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_b
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v7, :cond_c

    .line 4564
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Call setAdapter(ExpandableListAdapter) before expandAll/collapseAll"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4569
    :cond_c
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v7

    if-nez v7, :cond_e

    .line 4570
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 4571
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 4570
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    move v7, v8

    .line 4572
    goto/16 :goto_0

    .line 4576
    .end local v3           #i:I
    :cond_e
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    if-ne v7, v11, :cond_f

    if-lez v1, :cond_f

    .line 4577
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_f

    .line 4578
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4579
    .local v6, pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v12, :cond_11

    .line 4580
    const/4 v2, 0x0

    .line 4581
    .local v2, childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4582
    if-eqz v2, :cond_11

    .line 4583
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 4590
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_f
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    if-ne v7, v11, :cond_10

    if-lez v1, :cond_10

    .line 4591
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_10

    .line 4592
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4593
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v8, :cond_12

    .line 4594
    const/4 v2, 0x0

    .line 4595
    .restart local v2       #childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4596
    if-eqz v2, :cond_12

    .line 4597
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 4603
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_10
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v7, :cond_13

    if-lez v1, :cond_13

    .line 4604
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollToHeaderAtTheTop(Z)V

    :goto_6
    move v7, v8

    .line 4608
    goto/16 :goto_0

    .line 4577
    .restart local v3       #i:I
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4591
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4606
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_13
    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_6
.end method

.method public expandGroup(I)Z
    .locals 6
    .parameter "groupPos"

    .prologue
    .line 806
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v1

    .line 807
    .local v1, flatPos:I
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v0, v4, v5

    .line 811
    .local v0, actualPos:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 812
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v2

    .line 813
    .local v2, oldFalg:Z
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 814
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    move-result v3

    .line 815
    .local v3, retValue:Z
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 819
    .end local v2           #oldFalg:Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v4, :cond_1

    .line 820
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    invoke-interface {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 823
    :cond_1
    return v3

    .line 817
    .end local v3           #retValue:Z
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    move-result v3

    .restart local v3       #retValue:Z
    goto :goto_0
.end method

.method fillGapExpandableList(Z)V
    .locals 7
    .parameter "down"

    .prologue
    .line 4397
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4399
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 4433
    :cond_0
    :goto_0
    return-void

    .line 4401
    :cond_1
    const/4 v1, 0x0

    .line 4402
    .local v1, child:Landroid/view/View;
    if-eqz p1, :cond_3

    .line 4403
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4404
    if-eqz v1, :cond_0

    .line 4406
    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v4, v5, v6

    .line 4408
    .local v4, startOffset:I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 4406
    .end local v4           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingTop()I

    move-result v4

    goto :goto_1

    .line 4411
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4412
    if-eqz v1, :cond_0

    .line 4414
    if-lez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v4, v5, v6

    .line 4416
    .restart local v4       #startOffset:I
    :goto_2
    const/4 v0, 0x1

    .line 4417
    .local v0, bFillUp:Z
    :goto_3
    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 4420
    :try_start_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4422
    const/4 v0, 0x0

    goto :goto_3

    .line 4414
    .end local v0           #bFillUp:Z
    .end local v4           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingBottom()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    .line 4423
    .restart local v0       #bFillUp:Z
    .restart local v4       #startOffset:I
    :catch_0
    move-exception v3

    .line 4424
    .local v3, e:Ljava/lang/Exception;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4425
    const/4 v0, 0x1

    .line 4428
    goto :goto_3

    .line 4430
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method fillGroup(ILjava/util/ArrayList;)V
    .locals 1
    .parameter "lastVisibileGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4174
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v0, 0x0

    .line 4175
    .local v0, nextVisibleGroup:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4176
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findLastGroupToAddChild(ILjava/util/ArrayList;)I

    move-result v0

    .line 4177
    move p1, v0

    goto :goto_0

    .line 4180
    :cond_0
    return-void
.end method

.method findAnimatingItems(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4047
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 4049
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v1, :cond_1

    .line 4050
    const-string v1, "TWExpandableList"

    const-string v2, "findAnimatingItems nothing to expand/collapse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    :cond_1
    :goto_0
    return-void

    .line 4054
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 4078
    .local v0, lastVisibileGroup:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findFirstExpandingGroup(Ljava/util/ArrayList;)V

    .line 4093
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillGroup(ILjava/util/ArrayList;)V

    .line 4102
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->correctAnimatingItems()V

    goto :goto_0
.end method

.method findAnimatingItemsToCollapse(Ljava/util/ArrayList;)I
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3957
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v7, 0x0

    .line 3958
    .local v7, isSomeGroupCollapsing:Z
    const/4 v11, 0x0

    .line 3959
    .local v11, numberOfAnimatingChilren:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_5

    .line 3960
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 3962
    .local v5, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v4

    .line 3963
    .local v4, gflatPos:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v15, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v13

    .line 3964
    .local v13, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v13, :cond_0

    .line 3959
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3967
    :cond_0
    if-eqz v7, :cond_1

    .line 3968
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 3969
    :cond_1
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v15

    if-nez v15, :cond_3

    .line 3970
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 3994
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dump()V

    goto :goto_1

    .line 3972
    :cond_3
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 3973
    const/4 v7, 0x1

    .line 3974
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v15

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    .line 3975
    .local v2, childCount:I
    const/4 v15, 0x0

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 3976
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    if-ge v8, v2, :cond_4

    .line 3977
    add-int v15, v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3979
    .local v3, currView:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 3980
    iget v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 3976
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3985
    .end local v3           #currView:Landroid/view/View;
    :cond_4
    iget v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/2addr v11, v15

    .line 3986
    iget v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-nez v15, :cond_2

    .line 3991
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    goto :goto_2

    .line 4007
    .end local v2           #childCount:I
    .end local v4           #gflatPos:I
    .end local v5           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v8           #j:I
    .end local v13           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 4008
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int v1, v11, v15

    .line 4009
    .local v1, animChildrenTotalHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    div-int v12, v1, v15

    .line 4012
    .local v12, numberOfAnimatingGroups:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4013
    .local v14, upcomingGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 4015
    .local v10, lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v15, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    add-int/lit8 v9, v15, 0x1

    .line 4016
    .local v9, k:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v15}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v15

    if-ge v9, v15, :cond_7

    if-lez v12, :cond_7

    .line 4017
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v5

    .line 4018
    .restart local v5       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/4 v15, 0x0

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 4019
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 4020
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 4021
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4022
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4023
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v15, :cond_6

    .line 4024
    const-string v15, "DEBUG_COLLAPSE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Step 1: findAnimatingItemsToCollapse: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " getCount() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " childCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    :cond_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 4027
    .end local v5           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v15, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->addUpcomingCollpaseGroup(Ljava/util/ArrayList;)V

    .line 4029
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 4031
    .restart local v10       #lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v15, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    add-int/lit8 v9, v15, 0x1

    .line 4032
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v15

    if-ge v6, v15, :cond_9

    .line 4033
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v5

    .line 4034
    .restart local v5       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/4 v15, 0x0

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 4035
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 4036
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 4037
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v15, :cond_8

    .line 4039
    const-string v15, "DEBUG_COLLAPSE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Step 1.1: Adding footer to CollapseALL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " getCount() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " childCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    :cond_8
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 4043
    .end local v1           #animChildrenTotalHeight:I
    .end local v5           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v9           #k:I
    .end local v10           #lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v12           #numberOfAnimatingGroups:I
    .end local v14           #upcomingGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    :cond_9
    return v11
.end method

.method findFirstExpandingGroup(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4157
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4159
    .local v0, firstItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4160
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4161
    .local v1, groupItemHeight:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findFirstExpandingGroup(Ljava/util/ArrayList;III)V

    .line 4164
    .end local v1           #groupItemHeight:I
    :cond_0
    return-void
.end method

.method findLastGroupToAddChild(ILjava/util/ArrayList;)I
    .locals 5
    .parameter "lastVisibleGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4183
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4184
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4185
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 4186
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkIfGroupCanAddChild(ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4187
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->updateVisibleGroups(ILjava/util/ArrayList;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4196
    .end local v1           #i:I
    :goto_1
    return v1

    .line 4191
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4185
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4196
    .end local v1           #i:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method findNumberOfCollapseAnimatingItems(II)I
    .locals 7
    .parameter "groupFlatPos"
    .parameter "numOfItems"

    .prologue
    .line 4462
    const/4 v4, 0x0

    .line 4463
    .local v4, retVal:I
    const/4 v0, 0x0

    .line 4464
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .line 4465
    .local v3, remainingSpace:I
    const/4 v1, 0x0

    .line 4466
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, p1, v5

    .line 4467
    .local v2, posInList:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 4468
    const/4 v5, 0x0

    .line 4483
    :goto_0
    return v5

    .line 4469
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4470
    if-eqz v0, :cond_1

    .line 4471
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v3, v5, v6

    .line 4473
    :cond_1
    const/4 v0, 0x0

    .line 4475
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4476
    if-eqz v0, :cond_2

    .line 4477
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4478
    if-eqz v1, :cond_2

    .line 4479
    int-to-float v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 4481
    :cond_2
    if-le v4, p2, :cond_3

    .line 4482
    move v4, p2

    :cond_3
    move v5, v4

    .line 4483
    goto :goto_0
.end method

.method findNumberOfExpandAnimatingItems(I)I
    .locals 7
    .parameter "numOfItems"

    .prologue
    .line 4440
    const/4 v1, 0x0

    .line 4442
    .local v1, retVal:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4443
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    move v2, v1

    .line 4454
    .end local v1           #retVal:I
    .local v2, retVal:I
    :goto_0
    return v2

    .line 4446
    .end local v2           #retVal:I
    .restart local v1       #retVal:I
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v4, p1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v6

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 4448
    .local v3, totSpaceOccupiedByExpansion:I
    move v1, p1

    .line 4449
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 4450
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    sub-int v3, v4, v5

    .line 4451
    int-to-float v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    :cond_1
    move v2, v1

    .line 4454
    .end local v1           #retVal:I
    .restart local v2       #retVal:I
    goto :goto_0
.end method

.method findVisibleGroups(I)V
    .locals 15
    .parameter "type"

    .prologue
    .line 3828
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 3829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v12

    sub-int v0, v11, v12

    .line 3831
    .local v0, childCount:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    if-lez v0, :cond_0

    .line 3832
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 3833
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 3834
    .local v6, pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v6, :cond_3

    iget-object v11, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 3835
    const/4 v1, 0x0

    .line 3836
    .local v1, childViewTemp:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3837
    if-eqz v1, :cond_3

    .line 3838
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 3846
    .end local v1           #childViewTemp:Landroid/view/View;
    .end local v2           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_0
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    if-lez v0, :cond_1

    .line 3847
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_1

    .line 3848
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 3849
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v6, :cond_4

    iget-object v11, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 3850
    const/4 v1, 0x0

    .line 3851
    .restart local v1       #childViewTemp:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3852
    if-eqz v1, :cond_4

    .line 3853
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 3859
    .end local v1           #childViewTemp:Landroid/view/View;
    .end local v2           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    const/4 v3, -0x1

    .line 3861
    .local v3, lastGroupAdded:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 3862
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    .line 3863
    .local v8, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v8, :cond_2

    iget-object v11, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 3864
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v13, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v13, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3866
    iget-object v11, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 3861
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3832
    .end local v3           #lastGroupAdded:I
    .end local v8           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3847
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3871
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v3       #lastGroupAdded:I
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 3952
    :cond_6
    :goto_3
    return-void

    .line 3874
    :pswitch_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findExpandingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 3876
    .local v4, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_9

    .line 3877
    :cond_7
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v11, :cond_8

    .line 3878
    const-string v11, "TWExpandableList"

    const-string v12, "Nothing to expand/collapse"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    :cond_8
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v12, -0x1

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_3

    .line 3896
    :cond_9
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_b

    .line 3897
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 3898
    .local v7, posMetaData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v11, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 3899
    .local v9, position:I
    add-int/lit8 v11, v3, 0x1

    if-ne v9, v11, :cond_a

    .line 3900
    add-int/lit8 v3, v3, 0x1

    .line 3901
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3896
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3907
    .end local v7           #posMetaData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v9           #position:I
    :cond_b
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findAnimatingItems(Ljava/util/ArrayList;)V

    .line 3909
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 3910
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startExpansionAll(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3914
    .end local v4           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :pswitch_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findCollapsingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 3916
    .restart local v4       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_d

    .line 3917
    :cond_c
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v12, -0x1

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3918
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v11, :cond_6

    .line 3919
    const-string v11, "TWExpandableList"

    const-string v12, "Nothing to expand/collapse"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3923
    :cond_d
    const/4 v10, 0x0

    .line 3924
    .local v10, totalAnimatingChildren:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findAnimatingItemsToCollapse(Ljava/util/ArrayList;)I

    move-result v10

    .line 3933
    if-gtz v10, :cond_f

    .line 3934
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v5

    .line 3935
    .local v5, oldFalg:Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 3936
    const/4 v2, 0x0

    :goto_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v11

    if-ge v2, v11, :cond_e

    .line 3937
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    .line 3936
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3939
    :cond_e
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 3940
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v12, 0x2

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3942
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v11, :cond_6

    .line 3943
    const-string v11, "TWExpandableList"

    const-string v12, "findVisibleGroups current anim state is ANIMATION_FINISHED"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3945
    .end local v5           #oldFalg:Z
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 3946
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startCollapsingAll(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 3871
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .parameter "flatListPosition"

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 946
    const-wide v1, 0xffffffffL

    .line 953
    :goto_0
    return-wide v1

    .line 949
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 950
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 951
    .local v3, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 952
    .local v1, packedPos:J
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 968
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 970
    .local v1, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 971
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 972
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 1001
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 1002
    const-wide/16 v3, -0x1

    .line 1011
    :goto_0
    return-wide v3

    .line 1004
    :cond_0
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 1006
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 1008
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 1011
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 989
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method getTotalChildrenAdded(ILjava/util/ArrayList;)I
    .locals 5
    .parameter "groupIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4200
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v0, 0x0

    .line 4201
    .local v0, childrenAdded:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_1

    .line 4202
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 4203
    .local v1, groupObj:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v4, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4205
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/2addr v0, v3

    .line 4206
    :cond_0
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-lt p1, v3, :cond_2

    .line 4209
    .end local v1           #groupObj:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_1
    return v0

    .line 4201
    .restart local v1       #groupObj:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 716
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 722
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v0, :cond_1

    .line 723
    const-string v0, "TWExpandableList"

    const-string v1, "Expand All returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_1
    :goto_0
    return v10

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 729
    .local v9, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupPos:I

    .line 730
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupFlatPos:I

    .line 731
    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mposMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 733
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 736
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 739
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v8

    .line 740
    .local v8, lpos:I
    if-eqz v8, :cond_1

    .line 747
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwarpViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    move v10, v6

    .line 751
    goto :goto_0

    .line 755
    :cond_3
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 760
    invoke-virtual {p0, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_4

    .line 763
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 780
    :cond_4
    :goto_1
    const/4 v10, 0x1

    .line 792
    .end local v8           #lpos:I
    .local v10, returnValue:Z
    :goto_2
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 766
    .end local v10           #returnValue:Z
    .restart local v8       #lpos:I
    :cond_5
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 769
    .local v7, groupPos:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v7, v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v0

    if-nez v0, :cond_6

    move v10, v6

    .line 770
    goto :goto_0

    .line 772
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 773
    invoke-virtual {p0, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_4

    .line 776
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    goto :goto_1

    .line 783
    .end local v7           #groupPos:I
    .end local v8           #lpos:I
    :cond_7
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_8

    .line 784
    invoke-virtual {p0, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwarpViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move-object v1, p0

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;->onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z

    move-result v10

    goto/16 :goto_0

    .line 789
    :cond_8
    const/4 v10, 0x0

    .restart local v10       #returnValue:Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .locals 20

    .prologue
    .line 1594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1595
    const-string v17, "TWExpandableList"

    const-string v18, "layoutChildren Item Count and Adapter Count is not equal"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1602
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1605
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v17

    if-lez v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    if-lez v17, :cond_2

    .line 1606
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1607
    .local v10, headerView:Landroid/view/View;
    if-eqz v10, :cond_2

    instance-of v0, v10, Landroid/widget/FrameLayout;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 1608
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    .line 1612
    .end local v10           #headerView:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1614
    .local v6, firstGroupView:Landroid/view/View;
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1615
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 1619
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_11

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1623
    .local v9, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v7

    .line 1624
    .local v7, flatPos:I
    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int/lit8 v12, v17, 0x1

    .line 1626
    .local v12, maxPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1627
    const/4 v8, 0x0

    .line 1628
    .local v8, flatPosition:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1630
    .restart local v9       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v8

    .line 1632
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    .line 1633
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1634
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 1635
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 1645
    .end local v3           #childView:Landroid/view/View;
    .end local v8           #flatPosition:I
    .end local v11           #i:I
    :cond_4
    const/16 v16, 0x0

    .line 1647
    .local v16, totalHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1649
    .local v13, numberOfGroups:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v17, v0

    mul-int v17, v17, v13

    sub-int v18, v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v16, v17, v18

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v17

    mul-int v17, v17, v12

    add-int v2, v16, v17

    .line 1654
    .local v2, bottom:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    .line 1655
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v2, v2, v17

    .line 1654
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1628
    .end local v2           #bottom:I
    .end local v13           #numberOfGroups:I
    .end local v16           #totalHeight:I
    .restart local v8       #flatPosition:I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1657
    .end local v8           #flatPosition:I
    .restart local v2       #bottom:I
    .restart local v13       #numberOfGroups:I
    .restart local v16       #totalHeight:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v18

    sub-int v11, v17, v18

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    .line 1658
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v2, v2, v17

    .line 1657
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1660
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1661
    const-string v17, "DEBUG_COLLAPSE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Step 2: bottom: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "orig_bottom: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    if-le v2, v0, :cond_9

    .line 1664
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->adjustListSize(I)Z

    .line 1666
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1667
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 1669
    const-string v17, "DEBUG_COLLAPSE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Step 3: Before Layout height of: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1673
    :cond_a
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1675
    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    .line 1676
    const-string v17, "DEBUG_COLLAPSE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Step 4: After Layout height of: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1681
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 1683
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillAnimationDataForGroups(Z)V

    .line 1724
    .end local v2           #bottom:I
    .end local v6           #firstGroupView:Landroid/view/View;
    .end local v7           #flatPos:I
    .end local v9           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v11           #i:I
    .end local v12           #maxPos:I
    .end local v13           #numberOfGroups:I
    .end local v16           #totalHeight:I
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1726
    :cond_d
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1729
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 1730
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandCollapseAnimationWithAllItemsAdded()Z

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 1732
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1733
    const-string v17, "TWExpandableList"

    const-string v18, "layoutChildren current anim state is ANIMATION_ADDED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_f
    return-void

    .line 1685
    .restart local v2       #bottom:I
    .restart local v6       #firstGroupView:Landroid/view/View;
    .restart local v7       #flatPos:I
    .restart local v9       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v11       #i:I
    .restart local v12       #maxPos:I
    .restart local v13       #numberOfGroups:I
    .restart local v16       #totalHeight:I
    :cond_10
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillAnimationDataForGroups(Z)V

    goto :goto_5

    .line 1694
    .end local v2           #bottom:I
    .end local v7           #flatPos:I
    .end local v9           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v11           #i:I
    .end local v12           #maxPos:I
    .end local v13           #numberOfGroups:I
    .end local v16           #totalHeight:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 1696
    .local v14, numberOfNewAnimationItems:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1699
    .local v5, expGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1700
    .local v4, expGroupSize:I
    const/4 v3, 0x0

    .line 1701
    .restart local v3       #childView:Landroid/view/View;
    if-lez v4, :cond_12

    .line 1703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupFlatPos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1709
    :cond_12
    if-eqz v3, :cond_13

    .line 1710
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 1713
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #expGroupSize:I
    .end local v5           #expGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1714
    .restart local v2       #bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    mul-int v17, v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v18

    mul-int v18, v18, v14

    add-int v15, v17, v18

    .line 1716
    .local v15, offset:I
    add-int/2addr v2, v15

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    if-le v2, v0, :cond_14

    .line 1718
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->adjustListSize(I)Z

    .line 1720
    :cond_14
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    goto/16 :goto_5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 431
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 201
    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1393
    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1394
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1404
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1398
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    .line 1399
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1401
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1386
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1387
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 136
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-ne v1, v0, :cond_1

    .line 137
    const-string v1, "TWExpandableList"

    const-string v2, "Animation in progress,Scroll/fling blocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 144
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v1, :cond_3

    .line 145
    const-string v1, "TWExpandableList"

    const-string v2, "before bounce start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v1, v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 154
    :cond_4
    :goto_0
    return v0

    .line 152
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-ne v1, v0, :cond_6

    .line 153
    const-string v0, "TWExpandableList"

    const-string v1, "Animation NOT in progress,Scroll/fling Allow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_6
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 690
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwarpViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-super {p0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 697
    :goto_0
    return v1

    .line 696
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 697
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method readDataFromFile(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    .locals 10
    .parameter "fileName"

    .prologue
    .line 3399
    const/4 v4, 0x0

    .line 3400
    .local v4, rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/"

    invoke-direct {v7, v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    .local v7, userdataSrc:Ljava/io/File;
    const/4 v2, 0x0

    .line 3404
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 3406
    .local v0, buf:Ljava/io/BufferedReader;
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;

    .end local v4           #rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    invoke-direct {v4, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 3407
    .restart local v4       #rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 3410
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3412
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 3414
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3415
    .local v6, tmp:Ljava/lang/String;
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3416
    .local v5, ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mFromDegrees:F

    .line 3418
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3419
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3420
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mToDegrees:F

    .line 3422
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3423
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3424
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mDepthZ:F

    .line 3426
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3427
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3428
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->duration:I

    .line 3430
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3431
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3432
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->axisOfRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 3438
    if-eqz v1, :cond_0

    .line 3440
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3446
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 3448
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 3456
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #ss:Ljava/lang/Float;
    .end local v6           #tmp:Ljava/lang/String;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 3449
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ss:Ljava/lang/Float;
    .restart local v6       #tmp:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 3451
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 3434
    .end local v5           #ss:Ljava/lang/Float;
    .end local v6           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3438
    :goto_2
    if-eqz v0, :cond_2

    .line 3440
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3446
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 3448
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 3449
    :catch_2
    move-exception v8

    goto :goto_1

    .line 3438
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_3

    .line 3440
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3446
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 3448
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 3451
    :cond_4
    :goto_6
    throw v8

    .line 3441
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ss:Ljava/lang/Float;
    .restart local v6       #tmp:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #ss:Ljava/lang/Float;
    .end local v6           #tmp:Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_5

    .line 3449
    :catch_6
    move-exception v9

    goto :goto_6

    .line 3438
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 3434
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ss:Ljava/lang/Float;
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method scrollExpandableList(I)Z
    .locals 28
    .parameter "incrementalDeltaY"

    .prologue
    .line 4256
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4257
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 4258
    const/16 v26, 0x1

    .line 4389
    :goto_0
    return v26

    .line 4260
    :cond_0
    const/4 v8, 0x0

    .line 4261
    .local v8, childView:Landroid/view/View;
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4262
    if-nez v8, :cond_1

    .line 4263
    const/16 v26, 0x1

    goto :goto_0

    .line 4264
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    .line 4266
    .local v13, firstTop:I
    const/4 v8, 0x0

    .line 4267
    add-int/lit8 v26, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4268
    if-nez v8, :cond_2

    .line 4269
    const/16 v26, 0x1

    goto :goto_0

    .line 4270
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v19

    .line 4271
    .local v19, lastBottom:I
    const/4 v8, 0x0

    .line 4273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 4276
    .local v20, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v22, v26, v13

    .line 4277
    .local v22, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v11, v26, v27

    .line 4278
    .local v11, end:I
    sub-int v23, v19, v11

    .line 4280
    .local v23, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    sub-int v16, v26, v27

    .line 4282
    .local v16, height:I
    if-gez p1, :cond_4

    .line 4283
    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4288
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4290
    .local v12, firstPosition:I
    if-gez p1, :cond_5

    const/4 v10, 0x1

    .line 4292
    .local v10, down:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v15

    .line 4293
    .local v15, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v27

    sub-int v14, v26, v27

    .line 4295
    .local v14, footerViewsStart:I
    const/16 v24, 0x0

    .line 4296
    .local v24, start:I
    const/4 v9, 0x0

    .line 4299
    .local v9, count:I
    if-eqz v10, :cond_e

    .line 4300
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v26, p1

    .line 4301
    .local v25, top:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    .line 4302
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4303
    if-nez v8, :cond_6

    .line 4301
    :cond_3
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 4285
    .end local v9           #count:I
    .end local v10           #down:Z
    .end local v12           #firstPosition:I
    .end local v14           #footerViewsStart:I
    .end local v15           #headerViewsCount:I
    .end local v17           #i:I
    .end local v24           #start:I
    .end local v25           #top:I
    :cond_4
    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 4290
    .restart local v12       #firstPosition:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 4305
    .restart local v9       #count:I
    .restart local v10       #down:Z
    .restart local v14       #footerViewsStart:I
    .restart local v15       #headerViewsCount:I
    .restart local v17       #i:I
    .restart local v24       #start:I
    .restart local v25       #top:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4306
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    .line 4348
    .end local v5           #child:Landroid/view/View;
    .end local v25           #top:I
    :cond_7
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 4350
    if-lez v9, :cond_8

    .line 4352
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 4355
    :cond_8
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 4357
    if-eqz v10, :cond_9

    .line 4358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4361
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v18

    .line 4363
    .local v18, inTouchMode:Z
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4364
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v22

    if-lt v0, v3, :cond_a

    move/from16 v0, v23

    if-ge v0, v3, :cond_b

    .line 4366
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillGapExpandableList(Z)V

    .line 4368
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 4370
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 4371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    .line 4372
    .local v7, childIndex:I
    if-ltz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 4373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4385
    .end local v7           #childIndex:I
    :cond_c
    :goto_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 4387
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 4389
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 4309
    .end local v3           #absIncrementalDeltaY:I
    .end local v18           #inTouchMode:Z
    .restart local v5       #child:Landroid/view/View;
    .restart local v25       #top:I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 4310
    add-int v21, v12, v17

    .line 4311
    .local v21, position:I
    move/from16 v0, v21

    if-lt v0, v15, :cond_3

    move/from16 v0, v21

    if-ge v0, v14, :cond_3

    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 4323
    .end local v5           #child:Landroid/view/View;
    .end local v17           #i:I
    .end local v21           #position:I
    .end local v25           #top:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    sub-int v4, v26, p1

    .line 4324
    .local v4, bottom:I
    add-int/lit8 v17, v6, -0x1

    .restart local v17       #i:I
    :goto_6
    if-ltz v17, :cond_7

    .line 4325
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4326
    if-nez v8, :cond_10

    .line 4324
    :cond_f
    :goto_7
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 4328
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4329
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v4, :cond_7

    .line 4332
    move/from16 v24, v17

    .line 4333
    add-int/lit8 v9, v9, 0x1

    .line 4334
    add-int v21, v12, v17

    .line 4335
    .restart local v21       #position:I
    move/from16 v0, v21

    if-lt v0, v15, :cond_f

    move/from16 v0, v21

    if-ge v0, v14, :cond_f

    .line 4336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_7

    .line 4375
    .end local v4           #bottom:I
    .end local v5           #child:Landroid/view/View;
    .end local v21           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    .restart local v18       #inTouchMode:Z
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    .line 4376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    .line 4377
    .restart local v7       #childIndex:I
    if-ltz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 4378
    const/16 v26, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 4381
    .end local v7           #childIndex:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5
.end method

.method public scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z
    .locals 9
    .parameter "v"
    .parameter "groupPos"
    .parameter "expandingChildCount"
    .parameter "pos"

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3601
    if-nez p1, :cond_0

    .line 3623
    :goto_0
    return v4

    .line 3603
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 3604
    .local v3, vHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3605
    .local v0, listHeight:I
    mul-int v1, p3, v3

    .line 3607
    .local v1, offset:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v2, v0, v6

    .line 3610
    .local v2, remainingSpace:I
    if-ge v2, v1, :cond_3

    .line 3611
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    if-nez v6, :cond_1

    .line 3612
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v6, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    .line 3613
    :cond_1
    if-le v1, v0, :cond_2

    .line 3614
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 3615
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-virtual {v6, v5, v1, p4, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    .line 3618
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    sub-int v7, v2, v1

    invoke-virtual {v6, v5, v7, p4, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 3623
    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 581
    if-eqz p1, :cond_0

    .line 583
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    .line 584
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 542
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "childDivider"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 520
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mClipChildDivider:Z

    .line 521
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childIndicator"

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1231
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1249
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 1250
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 1251
    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .locals 1
    .parameter "collapseAllSpeedFactor"

    .prologue
    .line 646
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 647
    const p1, 0x3dcccccd

    .line 649
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 650
    const/high16 p1, 0x40a0

    .line 652
    :cond_1
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    .line 653
    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .locals 1
    .parameter "collapseSpeedFactor"

    .prologue
    .line 623
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 624
    const p1, 0x3dcccccd

    .line 626
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 627
    const/high16 p1, 0x40a0

    .line 629
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    div-float/2addr v0, p1

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 630
    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .locals 4
    .parameter "expandAllSpeedFactor"

    .prologue
    .line 633
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 634
    const p1, 0x3dcccccd

    .line 635
    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x4014

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 636
    const/high16 p1, 0x40a0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setspeedFactor(F)V

    .line 639
    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .locals 1
    .parameter "expandSpeedFactor"

    .prologue
    .line 608
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 609
    const p1, 0x3dcccccd

    .line 611
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 612
    const/high16 p1, 0x40a0

    .line 614
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 615
    return-void
.end method

.method public setExpandableListAnimationEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4794
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setChildItemAnimationFlag(Z)V

    .line 4795
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "groupIndicator"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1264
    if-eqz p1, :cond_1

    .line 1265
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1266
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1284
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    return-void

    .line 1268
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1270
    .local v0, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v1, 0x10100a8

    .line 1271
    .local v1, stateExpanded:I
    const v2, 0x10100a9

    .line 1273
    .local v2, stateNormal:I
    new-array v3, v5, [I

    aput v1, v3, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1276
    new-array v3, v5, [I

    aput v2, v3, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1279
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1282
    .end local v0           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #stateExpanded:I
    .end local v2           #stateNormal:I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .locals 2
    .parameter "angle"

    .prologue
    const/16 v1, 0xb4

    .line 416
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, -0xb4

    if-ne p1, v0, :cond_1

    .line 417
    :cond_0
    sput p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_1
    sput v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    goto :goto_0
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1304
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 1305
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 1306
    return-void
.end method

.method public setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 927
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    .line 928
    return-void
.end method

.method public setOnGroupClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    .line 902
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    .line 864
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    .line 879
    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 571
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 572
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    const/4 v3, 0x0

    .line 1046
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 1048
    .local v1, elChildPos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-nez v1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return v3

    .line 1051
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1053
    .local v2, flatChildPos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_2

    .line 1058
    if-eqz p3, :cond_0

    .line 1061
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 1063
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1066
    if-nez v2, :cond_2

    .line 1067
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1071
    :cond_2
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1072
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1074
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1075
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 1077
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1021
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 1023
    .local v1, elGroupPos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-eqz v1, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1025
    .local v2, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v2, :cond_0

    .line 1026
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1027
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1028
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1029
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 1032
    .end local v0           #absoluteFlatPosition:I
    .end local v2           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_0
    return-void
.end method

.method protected shouldCorrectTooHigh()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3540
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    .line 3558
    :pswitch_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    move v0, v1

    .line 3559
    :goto_0
    return v0

    .line 3542
    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    goto :goto_0

    .line 3548
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    if-eqz v0, :cond_0

    .line 3549
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    .line 3550
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerCorrectTooHighAnimation()V

    :cond_0
    move v0, v1

    .line 3552
    goto :goto_0

    .line 3540
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method triggerListItemFadeInOutAnimation(Landroid/view/View;III)Z
    .locals 23
    .parameter "view"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "offset"

    .prologue
    .line 3161
    if-nez p1, :cond_0

    .line 3162
    const/4 v3, 0x0

    .line 3242
    :goto_0
    return v3

    .line 3163
    :cond_0
    const/16 v20, 0x0

    .local v20, startAlpha:F
    const/16 v19, 0x0

    .line 3164
    .local v19, endAlpha:F
    const/16 v21, 0x0

    .local v21, startRot:F
    const/4 v9, 0x0

    .line 3165
    .local v9, endRot:F
    const/4 v5, 0x0

    .line 3166
    .local v5, isExpand:Z
    const/4 v15, 0x0

    .line 3167
    .local v15, alphaAnim:Landroid/view/animation/Animation;
    const/16 v16, 0x0

    .line 3168
    .local v16, animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3169
    .local v18, animationSet:Landroid/view/animation/AnimationSet;
    const/16 v17, 0x0

    .line 3171
    .local v17, animationOffset:F
    const/16 v22, 0x0

    .line 3173
    .local v22, totalAnimationTime:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v3, :cond_6

    .line 3174
    const/16 v20, 0x0

    .line 3175
    const/high16 v19, 0x3f80

    .line 3176
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_1

    .line 3177
    const/high16 v21, -0x3d38

    .line 3178
    const/4 v9, 0x0

    .line 3180
    :cond_1
    const/4 v5, 0x1

    .line 3181
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    const/high16 v4, 0x3f00

    mul-float v17, v3, v4

    .line 3182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v22, v0

    .line 3197
    :goto_1
    const/4 v2, 0x0

    .line 3199
    .local v2, rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    .line 3200
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    .end local v2           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .line 3204
    .restart local v2       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    :goto_2
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    .end local v15           #alphaAnim:Landroid/view/animation/Animation;
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3205
    .restart local v15       #alphaAnim:Landroid/view/animation/Animation;
    move/from16 v0, v22

    float-to-long v3, v0

    invoke-virtual {v15, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3207
    move/from16 v0, p4

    int-to-float v3, v0

    mul-float v3, v3, v22

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    add-float v3, v3, v17

    float-to-long v3, v3

    invoke-virtual {v15, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3211
    const-wide/16 v3, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3213
    :cond_2
    invoke-virtual {v15, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3215
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_b

    .line 3216
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v10, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v11, v3, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move/from16 v8, v21

    move v14, v5

    invoke-direct/range {v6 .. v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 3218
    .end local v16           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .local v6, animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    move/from16 v0, v22

    float-to-long v3, v0

    move/from16 v0, v17

    float-to-int v7, v0

    int-to-long v7, v7

    sub-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3219
    move/from16 v0, p4

    int-to-float v3, v0

    mul-float v3, v3, v22

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    add-float v3, v3, v17

    float-to-long v3, v3

    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3222
    const-wide/16 v3, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3224
    :cond_3
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3227
    :goto_3
    if-eqz v5, :cond_a

    .line 3228
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3229
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_4

    .line 3230
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3237
    :cond_4
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3238
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_5

    .line 3239
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3241
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3242
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 3183
    .end local v2           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    .end local v6           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v16       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 3184
    const/high16 v20, 0x3f80

    .line 3185
    const/16 v19, 0x0

    .line 3186
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_7

    .line 3187
    const/16 v21, 0x0

    .line 3188
    const/high16 v9, -0x3d4c

    .line 3190
    :cond_7
    const/4 v5, 0x0

    .line 3191
    const/16 v17, 0x0

    .line 3192
    sget v22, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    goto/16 :goto_1

    .line 3194
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3202
    .restart local v2       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    :cond_9
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    .end local v2           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .restart local v2       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    goto/16 :goto_2

    .line 3232
    .end local v16           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v6       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    :cond_a
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3233
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_4

    .line 3234
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_4

    .end local v6           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v16       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    :cond_b
    move-object/from16 v6, v16

    .end local v16           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v6       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    goto :goto_3
.end method

.method protected triggerListItemTranslateAnimation(IIII)V
    .locals 45
    .parameter "firstselectedItemIndex"
    .parameter "selectedItemIndex"
    .parameter "numberOfSlotsToMove"
    .parameter "childItemHeight"

    .prologue
    .line 2882
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v19, v4, v8

    .line 2883
    .local v19, count:I
    if-gtz v19, :cond_1

    .line 3158
    :cond_0
    :goto_0
    return-void

    .line 2885
    :cond_1
    const/16 v31, 0x0

    .line 2886
    .local v31, isExpand:Z
    const/16 v35, 0x0

    .line 2887
    .local v35, numOfTranslationAnimations:I
    const/16 v23, 0x0

    .line 2888
    .local v23, durationOfTranslation:F
    const/16 v17, 0x0

    .line 2889
    .local v17, animationOffset:F
    const/16 v43, 0x0

    .line 2890
    .local v43, totalAnimationTime:F
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->lastAnimatingFooterIndex()I

    move-result v32

    .line 2892
    .local v32, lastAnimatingFooterIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_2

    .line 2893
    const/16 v31, 0x1

    .line 2899
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2900
    const/16 v16, 0x0

    .line 2901
    .local v16, animation:Landroid/view/animation/TranslateAnimation;
    const/4 v5, 0x0

    .line 2903
    .local v5, child:Landroid/view/View;
    add-int/lit8 v25, p2, 0x1

    .local v25, i:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2905
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2906
    const/16 v22, 0x0

    .line 2907
    .local v22, dividerHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v22

    .line 2909
    if-nez v5, :cond_3

    .line 2903
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 2894
    .end local v5           #child:Landroid/view/View;
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v22           #dividerHeight:I
    .end local v25           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 2895
    const/16 v31, 0x0

    goto :goto_1

    .line 2911
    .restart local v5       #child:Landroid/view/View;
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    .restart local v22       #dividerHeight:I
    .restart local v25       #i:I
    :cond_3
    move/from16 v24, p4

    .line 2913
    .local v24, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingLeft()I

    move-result v18

    .line 2915
    .local v18, childLeft:I
    add-int/lit8 v35, v35, 0x1

    .line 2916
    if-eqz v31, :cond_7

    .line 2917
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v8, v0

    mul-int v11, p3, v24

    mul-int v12, p3, v22

    add-int/2addr v11, v12

    neg-int v11, v11

    int-to-float v11, v11

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2919
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v43, v0

    .line 2930
    :goto_4
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    mul-float v4, v4, v43

    add-float v23, v4, v43

    .line 2933
    if-eqz v31, :cond_8

    .line 2934
    const v4, 0x3f666666

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2939
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2940
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2943
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2945
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2947
    move/from16 v0, v17

    float-to-long v11, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2949
    add-int/lit8 v4, p2, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_6

    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_6

    .line 2950
    const/4 v6, 0x0

    .line 2951
    .local v6, isExpanding:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_5

    .line 2952
    const/4 v6, 0x1

    .line 2954
    :cond_5
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .line 2956
    .local v3, rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2958
    .end local v3           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    .end local v6           #isExpanding:Z
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 2923
    :cond_7
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v8, v0

    const/4 v11, 0x0

    mul-int v12, p3, v24

    mul-int v13, p3, v22

    add-int/2addr v12, v13

    neg-int v12, v12

    int-to-float v12, v12

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2925
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2927
    sget v43, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    goto/16 :goto_4

    .line 2937
    :cond_8
    const/high16 v4, 0x3f80

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_5

    .line 2963
    .end local v5           #child:Landroid/view/View;
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v18           #childLeft:I
    .end local v22           #dividerHeight:I
    .end local v24           #h:I
    .end local v25           #i:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v8

    sub-int v25, v4, v8

    .restart local v25       #i:I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_a

    .line 2964
    const/16 v16, 0x0

    .line 2965
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, v4, v25

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 3017
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_a
    const/16 v33, 0x0

    .line 3018
    .local v33, linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    const/16 v40, 0x0

    .line 3019
    .local v40, subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    const/16 v38, 0x0

    .line 3021
    .local v38, originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    const/16 v29, 0x0

    .line 3023
    .local v29, imgViewInsideSubLinearLayout:Landroid/view/View;
    if-eqz v31, :cond_19

    .line 3024
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    add-float v23, v4, v8

    .line 3043
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    move/from16 v37, v0

    .line 3044
    .local v37, originalExpandGrpNumber:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v21, v4, v8

    .line 3046
    .local v21, currentExpandGroupNumber:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    move/from16 v36, v0

    .line 3047
    .local v36, originalCollaspeGrpNumber:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v20, v4, v8

    .line 3049
    .local v20, currentCollapseGroupNumber:I
    const/16 v39, 0x0

    .line 3050
    .local v39, position:I
    if-eqz v31, :cond_1a

    .line 3051
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v39

    .line 3055
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v4

    add-int v4, v4, v39

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3056
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 3057
    .local v34, linearLayoutView:Landroid/view/View;
    if-eqz v34, :cond_b

    move-object/from16 v0, v34

    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_b

    move-object/from16 v33, v34

    .line 3058
    check-cast v33, Landroid/widget/FrameLayout;

    .line 3062
    .end local v34           #linearLayoutView:Landroid/view/View;
    :cond_b
    if-eqz v33, :cond_c

    .line 3063
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 3064
    .local v41, subLinearLayoutView:Landroid/view/View;
    if-eqz v41, :cond_c

    move-object/from16 v0, v41

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    move-object/from16 v40, v41

    .line 3065
    check-cast v40, Landroid/widget/LinearLayout;

    .line 3070
    .end local v41           #subLinearLayoutView:Landroid/view/View;
    :cond_c
    if-eqz v33, :cond_d

    .line 3071
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 3072
    .local v42, subLinearView:Landroid/view/View;
    if-eqz v42, :cond_d

    move-object/from16 v0, v42

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_d

    move-object/from16 v40, v42

    .line 3073
    check-cast v40, Landroid/widget/LinearLayout;

    .line 3076
    .end local v42           #subLinearView:Landroid/view/View;
    :cond_d
    if-eqz v40, :cond_e

    .line 3077
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 3081
    :cond_e
    const/16 v28, 0x0

    .line 3082
    .local v28, imgView:Landroid/widget/ImageView;
    if-eqz v38, :cond_f

    .line 3083
    const/high16 v4, 0x900

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .end local v28           #imgView:Landroid/widget/ImageView;
    check-cast v28, Landroid/widget/ImageView;

    .line 3086
    .restart local v28       #imgView:Landroid/widget/ImageView;
    :cond_f
    if-eqz v28, :cond_1b

    .line 3087
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_10

    .line 3088
    const-string v4, "TWExpandableList"

    const-string v8, "setIndicatorAnimation...imageView supplied by application.."

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    :cond_10
    move-object/from16 v29, v28

    .line 3104
    :cond_11
    :goto_9
    const/4 v7, 0x0

    .line 3105
    .local v7, animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/4 v9, 0x0

    .line 3106
    .local v9, rotSt:F
    const/4 v10, 0x0

    .line 3108
    .local v10, rotEnd:F
    if-eqz v31, :cond_1e

    .line 3109
    sget v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v4, v4

    neg-float v9, v4

    .line 3110
    const/4 v10, 0x0

    .line 3117
    :goto_a
    if-eqz v29, :cond_12

    .line 3118
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v26, v0

    .line 3119
    .local v26, imageHeight:F
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v27, v0

    .line 3120
    .local v27, imageWidth:F
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    .end local v7           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/high16 v4, 0x4000

    div-float v11, v26, v4

    const/high16 v4, 0x4000

    div-float v12, v27, v4

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 3128
    .restart local v7       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    if-eqz v31, :cond_1f

    .line 3129
    const v4, 0x3f4ccccd

    mul-float v4, v4, v23

    float-to-long v11, v4

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3133
    :goto_b
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 3134
    if-nez v31, :cond_20

    .line 3135
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3136
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 3141
    :goto_c
    move/from16 v0, v17

    float-to-long v11, v0

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3143
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3145
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3146
    new-instance v30, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    .line 3147
    .local v30, indicatorListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3150
    .end local v26           #imageHeight:F
    .end local v27           #imageWidth:F
    .end local v30           #indicatorListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;
    :cond_12
    if-nez v35, :cond_0

    .line 3155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    goto/16 :goto_0

    .line 2968
    .end local v7           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .end local v9           #rotSt:F
    .end local v10           #rotEnd:F
    .end local v20           #currentCollapseGroupNumber:I
    .end local v21           #currentExpandGroupNumber:I
    .end local v28           #imgView:Landroid/widget/ImageView;
    .end local v29           #imgViewInsideSubLinearLayout:Landroid/view/View;
    .end local v33           #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .end local v36           #originalCollaspeGrpNumber:I
    .end local v37           #originalExpandGrpNumber:I
    .end local v38           #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .end local v39           #position:I
    .end local v40           #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2969
    .restart local v5       #child:Landroid/view/View;
    const/16 v22, 0x0

    .line 2970
    .restart local v22       #dividerHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v22

    .line 2971
    mul-int v4, p3, p4

    mul-int v8, p3, v22

    add-int/2addr v4, v8

    neg-int v0, v4

    move/from16 v44, v0

    .line 2973
    .local v44, transDistance:I
    if-eqz v31, :cond_17

    .line 2974
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v0, v44

    int-to-float v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2975
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v43, v0

    .line 2985
    :goto_d
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    mul-float v4, v4, v43

    add-float v23, v4, v43

    .line 2987
    add-int v4, p1, p3

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_18

    .line 2988
    const v4, 0x3f666666

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2992
    :goto_e
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2993
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 2994
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_14

    .line 2997
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3000
    :cond_14
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 3002
    move/from16 v0, v17

    float-to-long v11, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3003
    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    .line 3004
    const/4 v6, 0x0

    .line 3005
    .restart local v6       #isExpanding:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_15

    .line 3006
    const/4 v6, 0x1

    .line 3008
    :cond_15
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .line 3010
    .restart local v3       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3012
    .end local v3           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    .end local v6           #isExpanding:Z
    :cond_16
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2963
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 2979
    :cond_17
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move/from16 v0, v44

    int-to-float v12, v0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2980
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2982
    sget v43, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    goto/16 :goto_d

    .line 2990
    :cond_18
    const/high16 v4, 0x3f80

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_e

    .line 3027
    .end local v5           #child:Landroid/view/View;
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v22           #dividerHeight:I
    .end local v44           #transDistance:I
    .restart local v29       #imgViewInsideSubLinearLayout:Landroid/view/View;
    .restart local v33       #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .restart local v38       #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .restart local v40       #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    :cond_19
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    sget v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    mul-float/2addr v4, v8

    sget v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    add-float v23, v4, v8

    goto/16 :goto_7

    .line 3053
    .restart local v20       #currentCollapseGroupNumber:I
    .restart local v21       #currentExpandGroupNumber:I
    .restart local v36       #originalCollaspeGrpNumber:I
    .restart local v37       #originalExpandGrpNumber:I
    .restart local v39       #position:I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v39

    goto/16 :goto_8

    .line 3091
    .restart local v28       #imgView:Landroid/widget/ImageView;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_1c

    .line 3092
    const-string v4, "TWExpandableList"

    const-string v8, "setIndicatorAnimation...imageView not supplied by application.."

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_1c
    if-eqz v33, :cond_1d

    .line 3094
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 3095
    .restart local v42       #subLinearView:Landroid/view/View;
    if-eqz v42, :cond_1d

    move-object/from16 v0, v42

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1d

    move-object/from16 v40, v42

    .line 3096
    check-cast v40, Landroid/widget/LinearLayout;

    .line 3099
    .end local v42           #subLinearView:Landroid/view/View;
    :cond_1d
    if-eqz v40, :cond_11

    .line 3100
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_9

    .line 3112
    .restart local v7       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v9       #rotSt:F
    .restart local v10       #rotEnd:F
    :cond_1e
    const/4 v9, 0x0

    .line 3113
    sget v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v4, v4

    neg-float v10, v4

    goto/16 :goto_a

    .line 3131
    .restart local v26       #imageHeight:F
    .restart local v27       #imageWidth:F
    :cond_1f
    const v4, 0x3f666666

    mul-float v4, v4, v23

    float-to-long v11, v4

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_b

    .line 3138
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3139
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    goto/16 :goto_c
.end method

.method triggerPreDraw(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 3249
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 3250
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3251
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3252
    if-eqz p1, :cond_0

    move-object v3, p1

    .line 3253
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3255
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 3251
    .end local v2           #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3259
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 3260
    if-eqz p1, :cond_2

    .line 3261
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->onPreDraw()Z

    .line 3264
    :cond_2
    return-void
.end method
