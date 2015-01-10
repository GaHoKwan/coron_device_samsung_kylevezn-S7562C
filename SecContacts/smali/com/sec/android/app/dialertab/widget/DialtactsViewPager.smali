.class public Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;
.super Landroid/view/ViewGroup;
.source "DialtactsViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SimpleOnPageChangeListener;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mKeyCode:I

.field public static mPointerY:I


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 225
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 92
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 93
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 108
    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 123
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 143
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->initViewPager()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 92
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 93
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 108
    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 123
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 143
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->initViewPager()V

    .line 232
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 947
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 948
    .local v2, needPopulate:Z
    if-eqz v2, :cond_2

    .line 950
    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 951
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 952
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 953
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 954
    .local v4, oldY:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 955
    .local v5, x:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 956
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 957
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 959
    :cond_1
    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 961
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 962
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 963
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 964
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 965
    .local v1, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 966
    const/4 v2, 0x1

    .line 967
    iput-boolean v8, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    .line 963
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    .end local v1           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 971
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 973
    :cond_5
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    const/4 v2, 0x0

    .line 864
    add-int v10, p1, p3

    .line 865
    .local v10, widthWithMargin:I
    if-lez p2, :cond_1

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 867
    .local v7, oldScrollPos:I
    add-int v8, p2, p4

    .line 868
    .local v8, oldwwm:I
    div-int v6, v7, v8

    .line 869
    .local v6, oldScrollItem:I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 870
    .local v9, scrollOffset:F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 871
    .local v1, scrollPos:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 875
    .local v5, newDuration:I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 884
    .end local v5           #newDuration:I
    .end local v6           #oldScrollItem:I
    .end local v7           #oldScrollPos:I
    .end local v8           #oldwwm:I
    .end local v9           #scrollOffset:F
    :cond_0
    :goto_0
    return-void

    .line 878
    .end local v1           #scrollPos:I
    :cond_1
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 879
    .restart local v1       #scrollPos:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 249
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iput p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1461
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollingCacheEnabled:Z

    .line 1472
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1617
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1619
    .local v2, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1621
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 1622
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1623
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1624
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1625
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v4

    .line 1626
    .local v4, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1627
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1622
    .end local v4           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1637
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1643
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1654
    :cond_3
    :goto_1
    return-void

    .line 1646
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1650
    :cond_5
    if-eqz p1, :cond_3

    .line 1651
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 533
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;-><init>()V

    .line 534
    .local v0, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iput p1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 536
    if-gez p2, :cond_0

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1664
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1665
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1666
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1667
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v2

    .line 1668
    .local v2, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1669
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1664
    .end local v2           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1673
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 779
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 791
    :goto_0
    return-void

    .line 781
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1559
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1561
    :cond_0
    const/4 v1, 0x0

    .line 1563
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1565
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1566
    if-ne p1, v4, :cond_4

    .line 1569
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageLeft()Z

    move-result v1

    .line 1590
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1591
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1593
    :cond_2
    return v1

    .line 1572
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1574
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1577
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1578
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1580
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1583
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1585
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1586
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1588
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 916
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 917
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 919
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 920
    .local v2, oldX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 921
    .local v3, oldY:I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 922
    .local v6, x:I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 924
    .local v7, y:I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 925
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->scrollTo(II)V

    .line 928
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 929
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 930
    .local v5, widthWithMargin:I
    div-int v4, v6, v5

    .line 931
    .local v4, position:I
    rem-int v1, v6, v5

    .line 932
    .local v1, offsetPixels:I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 933
    .local v0, offset:F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 937
    .end local v0           #offset:F
    .end local v1           #offsetPixels:I
    .end local v4           #position:I
    .end local v5           #widthWithMargin:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 944
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :goto_0
    return-void

    .line 943
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    goto :goto_0
.end method

.method directScrollTo(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 514
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 516
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 530
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 520
    .local v2, sx:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 521
    .local v3, sy:I
    sub-int v0, p1, v2

    .line 522
    .local v0, dx:I
    sub-int v1, p2, v3

    .line 523
    .local v1, dy:I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 525
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 528
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 529
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1519
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mKeyCode:I

    .line 1522
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1715
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1716
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1717
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1718
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1719
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v3

    .line 1720
    .local v3, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1722
    const/4 v4, 0x1

    .line 1727
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1716
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1727
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    div-int/lit16 v0, v1, 0xff

    .line 1511
    .local v0, pointerID:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPointerY:I

    .line 1512
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mKeyCode:I

    .line 1513
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 1250
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1251
    const/4 v2, 0x0

    .line 1253
    .local v2, needsInvalidate:Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1254
    .local v3, overScrollMode:I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1257
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1259
    .local v4, restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1261
    .local v0, height:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1262
    neg-int v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1263
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1264
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1265
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1267
    .end local v0           #height:I
    .end local v4           #restoreCount:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1269
    .restart local v4       #restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1270
    .local v5, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1271
    .restart local v0       #height:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v1

    .line 1273
    .local v1, itemCount:I
    :cond_2
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1274
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1276
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1277
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1278
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1285
    .end local v0           #height:I
    .end local v1           #itemCount:I
    .end local v4           #restoreCount:I
    .end local v5           #width:I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1287
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1289
    :cond_4
    return-void

    .line 1281
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1282
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 479
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1534
    const/4 v0, 0x0

    .line 1535
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1536
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1554
    :cond_0
    :goto_0
    return v0

    .line 1546
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1547
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1548
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 805
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 806
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 807
    :cond_0
    const/4 v1, 0x0

    .line 811
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 809
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 794
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 795
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 796
    .local v1, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v3, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    .end local v1           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 794
    .restart local v1       #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    .end local v1           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 3

    .prologue
    .line 235
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 236
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 237
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 239
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 241
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mTouchSlop:I

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMinimumVelocity:I

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMaximumVelocity:I

    .line 244
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 245
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 246
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 816
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 818
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1293
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1296
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1297
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1298
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1299
    .local v3, width:I
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1300
    .local v1, offset:I
    if-eqz v1, :cond_0

    .line 1302
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1303
    .local v0, left:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1304
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1307
    .end local v0           #left:I
    .end local v1           #offset:I
    .end local v2           #scrollX:I
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 888
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 889
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 890
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 892
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 893
    .local v3, count:I
    sub-int v7, p4, p2

    .line 895
    .local v7, width:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 896
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 898
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v5

    .local v5, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 899
    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 900
    .local v6, loff:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 901
    .local v1, childLeft:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 905
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 895
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .end local v6           #loff:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 910
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 911
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 827
    invoke-static {v5, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 831
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildWidthMeasureSpec:I

    .line 833
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildHeightMeasureSpec:I

    .line 837
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 839
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 842
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 843
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 844
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 845
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 848
    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 843
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1684
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1685
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1686
    const/4 v6, 0x0

    .line 1687
    .local v6, index:I
    const/4 v5, 0x1

    .line 1688
    .local v5, increment:I
    move v2, v1

    .line 1694
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1695
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1696
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1697
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v4

    .line 1698
    .local v4, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1699
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1700
    const/4 v7, 0x1

    .line 1705
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1690
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1691
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1692
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 1694
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1705
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 757
    instance-of v1, p1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;

    if-nez v1, :cond_0

    .line 758
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 773
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 762
    check-cast v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;

    .line 763
    .local v0, ss:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 767
    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 769
    :cond_1
    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 770
    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 771
    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 746
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 747
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 748
    .local v0, ss:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    iput v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->position:I

    .line 749
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 752
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 855
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 858
    if-eq p1, p3, :cond_0

    .line 859
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->recomputeScrollPosition(IIII)V

    .line 861
    :cond_0
    return-void
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1597
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1598
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 1601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1605
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1606
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 1609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 595
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-nez v10, :cond_1

    .line 696
    :cond_0
    return-void

    .line 603
    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 615
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 617
    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 618
    .local v8, pageLimit:I
    const/4 v10, 0x0

    iget v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 619
    .local v9, startPos:I
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v0

    .line 620
    .local v0, N:I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 625
    .local v4, endPos:I
    const/4 v7, -0x1

    .line 626
    .local v7, lastPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 627
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 628
    .local v6, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 630
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 631
    add-int/lit8 v5, v5, -0x1

    .line 632
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v13, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 648
    :cond_3
    iget v7, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 626
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 633
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 637
    add-int/lit8 v7, v7, 0x1

    .line 638
    if-ge v7, v9, :cond_5

    .line 639
    move v7, v9

    .line 641
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 643
    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->addNewItem(II)V

    .line 644
    add-int/lit8 v7, v7, 0x1

    .line 645
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 652
    .end local v6           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    iget v7, v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 653
    :goto_2
    if-ge v7, v4, :cond_9

    .line 654
    add-int/lit8 v7, v7, 0x1

    .line 655
    if-le v7, v9, :cond_8

    .line 656
    :goto_3
    if-gt v7, v4, :cond_9

    .line 658
    invoke-virtual {p0, v7, v12}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->addNewItem(II)V

    .line 659
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 652
    goto :goto_2

    :cond_8
    move v7, v9

    .line 655
    goto :goto_3

    .line 670
    :cond_9
    const/4 v2, 0x0

    .line 671
    .local v2, curItem:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 672
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    iget v10, v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 673
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curItem:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    check-cast v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 677
    .restart local v2       #curItem:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 679
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 681
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 683
    .local v3, currentFocused:Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v6

    .line 684
    .restart local v6       #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 685
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 686
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 687
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v6

    .line 688
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 689
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 685
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 671
    .end local v1           #child:Landroid/view/View;
    .end local v3           #currentFocused:Landroid/view/View;
    .end local v6           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 677
    goto :goto_5

    .restart local v3       #currentFocused:Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 683
    goto :goto_6
.end method

.method public setAdapter(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;)V
    .locals 7
    .parameter "adapter"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;)V

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 265
    .local v1, ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v3, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v1           #ii:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 270
    iput v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    .line 271
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 274
    .end local v0           #i:I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 278
    new-instance v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;)V

    .line 281
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 282
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 284
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 285
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 286
    iput-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 287
    iput-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 292
    :cond_3
    :goto_1
    return-void

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v1, 0x0

    .line 318
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 321
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 322
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 323
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 7
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 331
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 338
    :cond_3
    if-gez p1, :cond_6

    .line 339
    const/4 p1, 0x0

    .line 343
    :cond_4
    :goto_1
    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 344
    .local v3, pageLimit:I
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 348
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 349
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 340
    .end local v2           #i:I
    .end local v3           #pageLimit:I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 352
    .restart local v3       #pageLimit:I
    :cond_7
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-eq v4, p1, :cond_9

    .line 353
    .local v1, dispatchSelected:Z
    :goto_3
    iput p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 356
    .local v0, destX:I
    if-eqz p2, :cond_a

    .line 357
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->smoothScrollTo(II)V

    .line 358
    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_8

    .line 359
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 361
    :cond_8
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 363
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_9
    move v1, v5

    .line 352
    goto :goto_3

    .line 366
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_a
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->directScrollTo(II)V

    .line 367
    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_b

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 370
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 371
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setOnPageChangeListener(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    .line 377
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 490
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 494
    .local v2, sx:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 495
    .local v3, sy:I
    sub-int v0, p1, v2

    .line 496
    .local v0, dx:I
    sub-int v1, p2, v3

    .line 497
    .local v1, dy:I
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 498
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 499
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 502
    :cond_2
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 503
    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 505
    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 506
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 507
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
