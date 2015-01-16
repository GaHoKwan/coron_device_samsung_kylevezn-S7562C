.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationEffectForShowHeaderAndViewOfListItem"
.end annotation


# instance fields
.field protected mHeaderViews:[Landroid/view/View;

.field protected mIsShowTransferHeaderView:Z

.field protected mIsShownForShowHeaderAndViewOfListItem:Z

.field protected mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

.field protected mMovingViewLength:I

.field protected mMovingViewResourceIds:[I

.field protected mOffsetMovingView:[I

.field protected mOffsetShowingView:[I

.field protected mOffsetViewLength:I

.field protected mShowingViewResorceIds:[I

.field protected mStepForShowHeaderAndViewOfListItem:I

.field protected mSumsetViewLength:I

.field protected mTimeIntervalForTransferEffect:I

.field protected mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

.field protected mTransferOffsetHeaderView:I

.field protected mTransferPositionHeaderView:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1735
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    .line 1705
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1707
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1709
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1711
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    .line 1713
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    .line 1715
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    .line 1717
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    .line 1719
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    .line 1721
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    .line 1723
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    .line 1725
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    .line 1727
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    .line 1729
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1731
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    .line 1733
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1737
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1738
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userSetOnAnimationListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;)V

    .line 1844
    return-void
.end method


# virtual methods
.method protected userAfterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2052
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 2053
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 2054
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 2055
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    .line 2056
    return-void
.end method

.method public userCancelAnimationEffectForShowHeaderAndViewOfListItem()V
    .locals 0

    .prologue
    .line 1870
    return-void
.end method

.method protected userGetHeadersHeight()I
    .locals 4

    .prologue
    .line 2088
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-nez v3, :cond_1

    .line 2089
    const/4 v0, 0x0

    .line 2098
    :cond_0
    return v0

    .line 2092
    :cond_1
    const/4 v0, 0x0

    .line 2093
    .local v0, height:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    array-length v2, v3

    .line 2094
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2095
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 2094
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I
    .locals 1

    .prologue
    .line 1862
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    return v0
.end method

.method public userHideHeaders()V
    .locals 4

    .prologue
    .line 2075
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2076
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    array-length v1, v2

    .line 2077
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2078
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->removeHeaderView(Landroid/view/View;)Z

    .line 2077
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2081
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2082
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2084
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V
    .locals 3
    .parameter "headerViews"
    .parameter "moveViewResourceIds"
    .parameter "showViewResorceIds"
    .parameter "movingViewLength"

    .prologue
    const/4 v2, 0x0

    .line 1898
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    .line 1899
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    .line 1900
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    .line 1901
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    .line 1903
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    .line 1904
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1905
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aput v2, v1, v0

    .line 1904
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1908
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    .line 1909
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1910
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aput v2, v1, v0

    .line 1909
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1913
    :cond_1
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    .line 1914
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    .line 1916
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1917
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1918
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1919
    return-void
.end method

.method public userIsShownForShowHeaderAndViewOfListItem()Z
    .locals 1

    .prologue
    .line 1858
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    return v0
.end method

.method public userIsThisAnimatingForShowHeaderAndViewOfListItem()Z
    .locals 1

    .prologue
    .line 1854
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    return v0
.end method

.method public userMakeNewListItems()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2111
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2112
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_9

    .line 2113
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2114
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7, v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 2116
    .local v4, position:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 2112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2118
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v7

    sub-int/2addr v7, v4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v9

    if-le v7, v9, :cond_0

    .line 2122
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    if-eqz v7, :cond_6

    .line 2123
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v7, v7

    if-ge v2, v7, :cond_6

    .line 2124
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2125
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 2127
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lez v7, :cond_2

    .line 2128
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aget v7, v7, v2

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aget v7, v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v3, v7, v9

    .line 2130
    .local v3, offset:I
    :goto_2
    if-eqz v3, :cond_2

    .line 2131
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2135
    .end local v3           #offset:I
    :cond_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    if-lez v7, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2123
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v3, v8

    .line 2128
    goto :goto_2

    .line 2135
    :cond_5
    const/4 v7, 0x4

    goto :goto_3

    .line 2141
    .end local v0           #child:Landroid/view/View;
    .end local v2           #j:I
    :cond_6
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    if-eqz v7, :cond_0

    .line 2142
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 2143
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2144
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_7

    .line 2145
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lez v7, :cond_7

    .line 2146
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aget v7, v7, v2

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aget v7, v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v3, v7, v9

    .line 2148
    .restart local v3       #offset:I
    :goto_5
    if-eqz v3, :cond_7

    .line 2149
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2142
    .end local v3           #offset:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v3, v8

    .line 2146
    goto :goto_5

    .line 2156
    .end local v0           #child:Landroid/view/View;
    .end local v2           #j:I
    .end local v4           #position:I
    .end local v6           #view:Landroid/view/View;
    :cond_9
    return-void
.end method

.method protected userOffsetTopAndBottomItem(I)V
    .locals 4
    .parameter "offsetY"

    .prologue
    .line 2102
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2103
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2104
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2105
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2107
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userRelease()V

    .line 1849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1851
    :cond_0
    return-void
.end method

.method public userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x4

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userMakeNewListItems()V

    .line 1874
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1875
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userHideHeaders()V

    .line 1876
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1878
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep1()V

    .line 1879
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_0

    .line 1880
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    if-ne v0, v2, :cond_3

    .line 1881
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep2()V

    .line 1882
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_0

    .line 1883
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    goto :goto_0

    .line 1885
    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 1886
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep1()V

    .line 1887
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_0

    .line 1888
    :cond_5
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1890
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    .line 1891
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    goto :goto_0
.end method

.method public userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V
    .locals 0
    .parameter "timeInterval"

    .prologue
    .line 1866
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    .line 1867
    return-void
.end method

.method protected userShowHeaders()V
    .locals 4

    .prologue
    .line 2060
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2062
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2064
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    array-length v1, v2

    .line 2065
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2066
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;)V

    .line 2065
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2069
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2071
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1958
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_1

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1975
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1977
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1978
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1923
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v1, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-nez v1, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    .line 1940
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1941
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aput v3, v1, v0

    .line 1940
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1944
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    .line 1945
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1946
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aput v3, v1, v0

    .line 1945
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1949
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v2, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1950
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1951
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1952
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1953
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected userStep1()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1983
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v3, :cond_3

    .line 1985
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1987
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1988
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1989
    .local v0, view:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    .line 1991
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    .line 1994
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userShowHeaders()V

    .line 1995
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-nez v1, :cond_0

    .line 1996
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1997
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 2021
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #view:Landroid/view/View;
    :cond_1
    move v1, v2

    .line 1991
    goto :goto_0

    .line 2000
    .end local v0           #view:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 2004
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2005
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 2006
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2007
    .restart local v0       #view:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    .line 2009
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    .line 2012
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2013
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-nez v1, :cond_4

    .line 2014
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 2019
    .end local v0           #view:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation(I)V

    goto :goto_1

    .restart local v0       #view:Landroid/view/View;
    :cond_5
    move v1, v2

    .line 2009
    goto :goto_2
.end method

.method protected userStep2()V
    .locals 3

    .prologue
    .line 2025
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v1, :cond_2

    .line 2027
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2028
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-eqz v1, :cond_1

    .line 2029
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userGetHeadersHeight()I

    move-result v0

    .line 2030
    .local v0, height:I
    mul-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    .line 2036
    .end local v0           #height:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation(I)V

    .line 2049
    :goto_1
    return-void

    .line 2032
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    goto :goto_0

    .line 2039
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-eqz v1, :cond_3

    .line 2040
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userHideHeaders()V

    .line 2041
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    goto :goto_1

    .line 2043
    :cond_3
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 2044
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userHideHeaders()V

    .line 2045
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 2046
    const/16 v1, 0x9

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_1
.end method
