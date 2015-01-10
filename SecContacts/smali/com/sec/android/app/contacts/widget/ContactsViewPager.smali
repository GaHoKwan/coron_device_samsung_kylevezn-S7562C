.class public Lcom/sec/android/app/contacts/widget/ContactsViewPager;
.super Landroid/view/ViewGroup;
.source "ContactsViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SimpleOnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mPointerY:I


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

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
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

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
    .line 78
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 224
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 88
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 90
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 105
    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 120
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    .line 226
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

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 88
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 90
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 105
    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 120
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    .line 231
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 940
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 941
    .local v2, needPopulate:Z
    if-eqz v2, :cond_2

    .line 943
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 944
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 945
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 946
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 947
    .local v4, oldY:I
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 948
    .local v5, x:I
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 949
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 950
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 952
    :cond_1
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 954
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 955
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 956
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 957
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 958
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 959
    const/4 v2, 0x1

    .line 960
    iput-boolean v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    .line 956
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 964
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 966
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

    .line 857
    add-int v10, p1, p3

    .line 858
    .local v10, widthWithMargin:I
    if-lez p2, :cond_1

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 860
    .local v7, oldScrollPos:I
    add-int v8, p2, p4

    .line 861
    .local v8, oldwwm:I
    div-int v6, v7, v8

    .line 862
    .local v6, oldScrollItem:I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 863
    .local v9, scrollOffset:F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 864
    .local v1, scrollPos:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 868
    .local v5, newDuration:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 877
    .end local v5           #newDuration:I
    .end local v6           #oldScrollItem:I
    .end local v7           #oldScrollPos:I
    .end local v8           #oldwwm:I
    .end local v9           #scrollOffset:F
    :cond_0
    :goto_0
    return-void

    .line 871
    .end local v1           #scrollPos:I
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 872
    .restart local v1       #scrollPos:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 874
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 248
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1453
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1454
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    .line 1465
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
    .line 1608
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1610
    .local v2, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1612
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 1613
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1614
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1615
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1616
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    .line 1617
    .local v4, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1618
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1613
    .end local v4           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1628
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1634
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1645
    :cond_3
    :goto_1
    return-void

    .line 1637
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

    .line 1641
    :cond_5
    if-eqz p1, :cond_3

    .line 1642
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 522
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;-><init>()V

    .line 523
    .local v0, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iput p1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 525
    if-gez p2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

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
    .line 1655
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1656
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1657
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1658
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v2

    .line 1659
    .local v2, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1660
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1655
    .end local v2           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1664
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
    .line 766
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 768
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 780
    :goto_0
    return-void

    .line 770
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 909
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 910
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 913
    .local v2, oldX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 914
    .local v3, oldY:I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 915
    .local v6, x:I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 917
    .local v7, y:I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 918
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->scrollTo(II)V

    .line 921
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 922
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 923
    .local v5, widthWithMargin:I
    div-int v4, v6, v5

    .line 924
    .local v4, position:I
    rem-int v1, v6, v5

    .line 925
    .local v1, offsetPixels:I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 926
    .local v0, offset:F
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 930
    .end local v0           #offset:F
    .end local v1           #offsetPixels:I
    .end local v4           #position:I
    .end local v5           #widthWithMargin:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 937
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :goto_0
    return-void

    .line 936
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 535
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 536
    .local v2, needPopulate:Z
    :goto_0
    const/4 v3, -0x1

    .line 538
    .local v3, newCurrItem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 539
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 540
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 542
    .local v4, newPos:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 538
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    .end local v3           #newCurrItem:I
    .end local v4           #newPos:I
    :cond_1
    move v2, v6

    .line 535
    goto :goto_0

    .line 546
    .restart local v0       #i:I
    .restart local v1       #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .restart local v2       #needPopulate:Z
    .restart local v3       #newCurrItem:I
    .restart local v4       #newPos:I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 547
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    add-int/lit8 v0, v0, -0x1

    .line 549
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 550
    const/4 v2, 0x1

    .line 552
    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    .line 554
    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 559
    :cond_3
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    .line 560
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    .line 562
    move v3, v4

    .line 565
    :cond_4
    iput v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 566
    const/4 v2, 0x1

    goto :goto_2

    .line 570
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v4           #newPos:I
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 572
    if-ltz v3, :cond_6

    .line 574
    invoke-virtual {p0, v3, v6, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 575
    const/4 v2, 0x1

    .line 577
    :cond_6
    if-eqz v2, :cond_7

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 581
    :cond_7
    return-void
.end method

.method directScrollTo(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 503
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 505
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 519
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 509
    .local v2, sx:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 510
    .local v3, sy:I
    sub-int v0, p1, v2

    .line 511
    .local v0, dx:I
    sub-int v1, p2, v3

    .line 512
    .local v1, dy:I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 514
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 517
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 518
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1511
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 1706
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1707
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1708
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1709
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1710
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v3

    .line 1711
    .local v3, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1713
    const/4 v4, 0x1

    .line 1718
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1707
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1718
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    div-int/lit16 v0, v1, 0xff

    .line 1504
    .local v0, pointerID:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPointerY:I

    .line 1505
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 1243
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1244
    const/4 v2, 0x0

    .line 1246
    .local v2, needsInvalidate:Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1247
    .local v3, overScrollMode:I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1250
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1252
    .local v4, restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1254
    .local v0, height:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1255
    neg-int v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1256
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1257
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1258
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1260
    .end local v0           #height:I
    .end local v4           #restoreCount:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1262
    .restart local v4       #restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1263
    .local v5, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1264
    .restart local v0       #height:I
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v1

    .line 1266
    .local v1, itemCount:I
    :cond_2
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1267
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1269
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1270
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1271
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1278
    .end local v0           #height:I
    .end local v1           #itemCount:I
    .end local v4           #restoreCount:I
    .end local v5           #width:I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1280
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1282
    :cond_4
    return-void

    .line 1274
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1275
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 466
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 471
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1524
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 794
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 795
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 796
    :cond_0
    const/4 v1, 0x0

    .line 800
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 798
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 783
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 784
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 785
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 783
    .restart local v1       #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 3

    .prologue
    .line 234
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 235
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 236
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 238
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 240
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    .line 241
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMinimumVelocity:I

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMaximumVelocity:I

    .line 243
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 244
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 245
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 805
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 807
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1286
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1289
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1291
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1292
    .local v3, width:I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1293
    .local v1, offset:I
    if-eqz v1, :cond_0

    .line 1295
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1296
    .local v0, left:I
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1297
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1300
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
    .line 881
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 883
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 885
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 886
    .local v3, count:I
    sub-int v7, p4, p2

    .line 888
    .local v7, width:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 889
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 891
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v5

    .local v5, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 892
    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 893
    .local v6, loff:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 894
    .local v1, childLeft:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 898
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 888
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v6           #loff:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 904
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 816
    invoke-static {v6, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-static {v6, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 820
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    .line 822
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    .line 826
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 828
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 832
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 833
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 834
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 838
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #size:I
    :catch_0
    move-exception v1

    .line 842
    .local v1, e:Landroid/database/StaleDataException;
    const-string v4, "ViewPager"

    const-string v5, "StaleDataException : "

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    .end local v1           #e:Landroid/database/StaleDataException;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1676
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1677
    const/4 v6, 0x0

    .line 1678
    .local v6, index:I
    const/4 v5, 0x1

    .line 1679
    .local v5, increment:I
    move v2, v1

    .line 1685
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1686
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1687
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1688
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    .line 1689
    .local v4, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1690
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1691
    const/4 v7, 0x1

    .line 1696
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1681
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1682
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1683
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 1685
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1696
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 746
    instance-of v1, p1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    if-nez v1, :cond_0

    .line 747
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 762
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 751
    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    .line 752
    .local v0, ss:Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 754
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 756
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 758
    :cond_1
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 759
    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 760
    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 735
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 736
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 737
    .local v0, ss:Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iput v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    .line 738
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 741
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
    .line 848
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 851
    if-eq p1, p3, :cond_0

    .line 852
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->recomputeScrollPosition(IIII)V

    .line 854
    :cond_0
    return-void
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 584
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-nez v10, :cond_1

    .line 685
    :cond_0
    return-void

    .line 592
    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 604
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 606
    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 607
    .local v8, pageLimit:I
    const/4 v10, 0x0

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 608
    .local v9, startPos:I
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v0

    .line 609
    .local v0, N:I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 614
    .local v4, endPos:I
    const/4 v7, -0x1

    .line 615
    .local v7, lastPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 616
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 617
    .local v6, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 619
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 620
    add-int/lit8 v5, v5, -0x1

    .line 621
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 637
    :cond_3
    iget v7, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 615
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 622
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 626
    add-int/lit8 v7, v7, 0x1

    .line 627
    if-ge v7, v9, :cond_5

    .line 628
    move v7, v9

    .line 630
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 632
    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    .line 633
    add-int/lit8 v7, v7, 0x1

    .line 634
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 641
    .end local v6           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v7, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 642
    :goto_2
    if-ge v7, v4, :cond_9

    .line 643
    add-int/lit8 v7, v7, 0x1

    .line 644
    if-le v7, v9, :cond_8

    .line 645
    :goto_3
    if-gt v7, v4, :cond_9

    .line 647
    invoke-virtual {p0, v7, v12}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 641
    goto :goto_2

    :cond_8
    move v7, v9

    .line 644
    goto :goto_3

    .line 659
    :cond_9
    const/4 v2, 0x0

    .line 660
    .local v2, curItem:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 661
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v10, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 662
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curItem:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    check-cast v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 666
    .restart local v2       #curItem:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 668
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 671
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 672
    .local v3, currentFocused:Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    .line 673
    .restart local v6       #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 674
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 675
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 676
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    .line 677
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 678
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 674
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 660
    .end local v1           #child:Landroid/view/View;
    .end local v3           #currentFocused:Landroid/view/View;
    .end local v6           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 666
    goto :goto_5

    .restart local v3       #currentFocused:Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 672
    goto :goto_6
.end method

.method public setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V
    .locals 7
    .parameter "adapter"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 264
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 269
    iput v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    .line 270
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 273
    .end local v0           #i:I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 277
    new-instance v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    .line 280
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 281
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 283
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 284
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 285
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 286
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 291
    :cond_3
    :goto_1
    return-void

    .line 288
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 317
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 318
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

    .line 325
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 326
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 365
    :goto_0
    return-void

    .line 329
    :cond_1
    if-nez p3, :cond_2

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 333
    :cond_2
    if-gez p1, :cond_5

    .line 334
    const/4 p1, 0x0

    .line 338
    :cond_3
    :goto_1
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 339
    .local v3, pageLimit:I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_4

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_6

    .line 343
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 344
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 335
    .end local v2           #i:I
    .end local v3           #pageLimit:I
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_3

    .line 336
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 347
    .restart local v3       #pageLimit:I
    :cond_6
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v4, p1, :cond_8

    .line 348
    .local v1, dispatchSelected:Z
    :goto_3
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 351
    .local v0, destX:I
    if-eqz p2, :cond_9

    .line 352
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->directScrollTo(II)V

    .line 353
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_7

    .line 354
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 356
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 357
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_8
    move v1, v5

    .line 347
    goto :goto_3

    .line 359
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_9
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_a

    .line 360
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 362
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 363
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    .line 369
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
