.class public Lcom/sec/android/touchwiz/widget/TwListView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListView$1;,
        Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;,
        Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;,
        Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;,
        Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final BITS_PER_LONG:I = 0x40

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String; = "TwListView"

.field private static final XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com/sec_android"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private final mFixedSizeItems:Z

.field private mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field protected mShowAnimationOnDataChange:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 120
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 138
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 140
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    .line 143
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 149
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;-><init>(Lcom/sec/android/touchwiz/widget/TwListView$1;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    .line 175
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 179
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 180
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 185
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 193
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 199
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 200
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 206
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 207
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    .line 210
    :cond_4
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    .line 211
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v6

    if-ge v6, v11, :cond_5

    .line 218
    invoke-virtual {p0, v9}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 219
    invoke-virtual {p0, v10}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 222
    :cond_5
    const-string v6, "http://schemas.android.samsung.com/sec_android"

    const-string v7, "fixed_size_items"

    invoke-interface {p2, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFixedSizeItems:Z

    .line 223
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3067
    add-int/lit8 v2, p2, -0x1

    .line 3068
    .local v2, abovePosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3069
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3071
    .local v3, edgeOfNewChild:I
    if-eqz v1, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3075
    :cond_0
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3079
    add-int/lit8 v2, p2, 0x1

    .line 3080
    .local v2, belowPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3081
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3082
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3083
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 241
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 244
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 247
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 249
    .local v2, delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 252
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 254
    :cond_0
    if-gez v2, :cond_1

    .line 257
    const/4 v2, 0x0

    .line 275
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 276
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 279
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 261
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 264
    .restart local v2       #delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 267
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 270
    :cond_4
    if-lez v2, :cond_1

    .line 271
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2661
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2662
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2664
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 2666
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2667
    add-int/lit8 v3, v7, -0x1

    .line 2668
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2669
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2672
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2673
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2675
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2676
    .local v1, goalBottom:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2677
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2680
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2682
    const/4 v10, 0x0

    .line 2730
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2685
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2689
    const/4 v10, 0x0

    goto :goto_0

    .line 2692
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2694
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2696
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2697
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2700
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2702
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2703
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2704
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2706
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2707
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2708
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2709
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2710
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2712
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2714
    const/4 v10, 0x0

    goto :goto_0

    .line 2717
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2721
    const/4 v10, 0x0

    goto :goto_0

    .line 2724
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2725
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2727
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2728
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2730
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2921
    const/4 v0, 0x0

    .line 2922
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2923
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2924
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2925
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2926
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2927
    if-lez p3, :cond_0

    .line 2928
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2940
    :cond_0
    :goto_0
    return v0

    .line 2932
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2933
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2934
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2935
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 2936
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 2820
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2822
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2823
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2824
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2846
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2847
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2851
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2852
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2853
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2855
    :cond_1
    const/4 v14, 0x0

    .line 2878
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 2826
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2827
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2828
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2830
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2833
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2843
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 2827
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2828
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 2830
    goto :goto_4

    .line 2835
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2836
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2838
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2841
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2835
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2836
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 2838
    goto :goto_8

    .line 2859
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2861
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v6

    .line 2862
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 2864
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2865
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->populate(II)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2867
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 2873
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2874
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->populate(II)V

    .line 2875
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2878
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2449
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2527
    :cond_0
    :goto_0
    return v9

    .line 2453
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2454
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 2456
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2457
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->amountToScroll(II)I

    move-result v0

    .line 2460
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2462
    .local v1, focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2463
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2464
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2467
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2468
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2469
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2471
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 2472
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 2473
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2474
    move v5, v4

    .line 2475
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2479
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2480
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2483
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2484
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 2487
    :cond_4
    if-lez v0, :cond_5

    .line 2488
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->scrollListItemsBy(I)V

    .line 2489
    const/4 v3, 0x1

    .line 2494
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2496
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2497
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2498
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2504
    .end local v2           #focused:Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2506
    const/4 v6, 0x0

    .line 2507
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 2512
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 2515
    :cond_8
    if-eqz v3, :cond_0

    .line 2516
    if-eqz v6, :cond_9

    .line 2517
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2518
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 2520
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2521
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2523
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2524
    goto/16 :goto_0

    .line 2460
    .end local v1           #focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2467
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_d
    move v7, v9

    .line 2469
    goto :goto_3

    .line 2488
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 552
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 555
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 556
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 557
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 558
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 554
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2126
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2283
    :cond_1
    :goto_0
    return v4

    .line 2130
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2131
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 2134
    :cond_3
    const/4 v2, 0x0

    .line 2135
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2137
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2138
    sparse-switch p1, :sswitch_data_0

    .line 2264
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2268
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2272
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2283
    goto :goto_0

    .line 2140
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2142
    if-nez v2, :cond_4

    move v1, p2

    .line 2143
    .end local p2
    .local v1, count:I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2144
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2145
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_2

    .line 2151
    .end local v1           #count:I
    .restart local p2
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2160
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2161
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2162
    if-nez v2, :cond_4

    move v1, p2

    .line 2163
    .end local p2
    .restart local v1       #count:I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2164
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2165
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_4

    .line 2171
    .end local v1           #count:I
    .restart local p2
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2172
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2180
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2181
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2186
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2187
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2193
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2194
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2195
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2196
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->keyPressed()V

    .line 2197
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2203
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2204
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2205
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2209
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2205
    goto :goto_6

    .line 2206
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2214
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2215
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2216
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2217
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2222
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2223
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2224
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2225
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2230
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2231
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2236
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2237
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2274
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2277
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2280
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2138
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1411
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1412
    .local v6, lastPosition:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1415
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1418
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1421
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1426
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1427
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1428
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1434
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldCorrectTooHigh()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1436
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1438
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1441
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1442
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1446
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 1448
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1453
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, distance:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2953
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2954
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2955
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2956
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2960
    :cond_0
    :goto_0
    return v0

    .line 2957
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2958
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 822
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 823
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 824
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 825
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 826
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 832
    :goto_0
    return-void

    .line 828
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 829
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 830
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 791
    sub-int v6, p2, p1

    .line 793
    .local v6, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reconcileSelectedPosition()I

    move-result v1

    .line 795
    .local v1, position:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 796
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 798
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 799
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 800
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 803
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 805
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 806
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 811
    :goto_0
    return-object v7

    .line 808
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 846
    .local v8, fadingEdgeLength:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 850
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 852
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 855
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 858
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 861
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 865
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 866
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 869
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 885
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 887
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 888
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 893
    :goto_1
    return-object v10

    .line 870
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 873
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 877
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 878
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 881
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 890
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 772
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 773
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 774
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 777
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1357
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1358
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1360
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1365
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1366
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1367
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1370
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1371
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1372
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1373
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1374
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 1388
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1393
    .end local v10           #temp:Landroid/view/View;
    :goto_2
    return-object v10

    .line 1357
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1377
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1380
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1381
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1382
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1383
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1384
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_1

    .line 1390
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1391
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1393
    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2644
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 906
    move v0, p1

    .line 907
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 908
    sub-int/2addr v0, p2

    .line 910
    :cond_0
    return v0
.end method

.method private getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 12
    .parameter "child"
    .parameter "offset"
    .parameter "visibility"

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x0

    .line 3995
    const-wide/16 v0, 0x0

    .line 3997
    .local v0, count:J
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 4021
    .end local v0           #count:J
    .local v2, count:J
    :goto_0
    return-wide v2

    .line 4001
    .end local v2           #count:J
    .restart local v0       #count:J
    :cond_0
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    .line 4002
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, p3, :cond_1

    .line 4003
    aget-byte v7, p2, v9

    shl-long v7, v10, v7

    or-long/2addr v0, v7

    .line 4005
    :cond_1
    aget-byte v7, p2, v9

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p2, v9

    move-wide v2, v0

    .line 4007
    .end local v0           #count:J
    .restart local v2       #count:J
    goto :goto_0

    .end local v2           #count:J
    .restart local v0       #count:J
    :cond_2
    move-object v6, p1

    .line 4010
    check-cast v6, Landroid/view/ViewGroup;

    .line 4011
    .local v6, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, p3, :cond_3

    .line 4012
    aget-byte v7, p2, v9

    shl-long v7, v10, v7

    or-long/2addr v0, v7

    .line 4014
    :cond_3
    aget-byte v7, p2, v9

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p2, v9

    .line 4016
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 4017
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4018
    .local v5, v:Landroid/view/View;
    invoke-direct {p0, v5, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v7

    or-long/2addr v0, v7

    .line 4016
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v5           #v:Landroid/view/View;
    :cond_4
    move-wide v2, v0

    .line 4021
    .end local v0           #count:J
    .restart local v2       #count:J
    goto :goto_0
.end method

.method private getChildHeightSpec(Landroid/view/View;)I
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, 0x0

    .line 4036
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4038
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 4039
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4044
    .restart local v2       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4046
    .local v1, lpHeight:I
    if-lez v1, :cond_1

    .line 4047
    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4052
    .local v0, childHeightSpec:I
    :goto_0
    return v0

    .line 4049
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private getChildWidthSpec(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 4025
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4027
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 4028
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4032
    .restart local v0       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 923
    move v0, p1

    .line 924
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 925
    add-int/2addr v0, p2

    .line 927
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2380
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2381
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2385
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2386
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2387
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2388
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2391
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2392
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2394
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2397
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2398
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2399
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2400
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2401
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 2402
    const/4 v5, 0x1

    .line 2418
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2411
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2413
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2414
    invoke-direct {p0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2418
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2547
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2548
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2558
    :cond_0
    const/4 v5, 0x0

    .line 2559
    .local v5, topSelected:Z
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2560
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2561
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2562
    move v7, v2

    .line 2563
    .local v7, topViewIndex:I
    move v1, v4

    .line 2564
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2565
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2566
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2574
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2577
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2578
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2579
    invoke-direct {p0, v6, v7, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2583
    :cond_1
    if-eqz v0, :cond_2

    .line 2584
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2585
    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2587
    :cond_2
    return-void

    .line 2568
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2569
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2570
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2571
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2578
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2584
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1788
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1789
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1790
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1791
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1802
    :goto_1
    return v5

    .line 1790
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1796
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1797
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1798
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1799
    goto :goto_1

    .line 1797
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1802
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2901
    if-ne p1, p2, :cond_1

    .line 2906
    :cond_0
    :goto_0
    return v1

    .line 2905
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2906
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2769
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2770
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2771
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2773
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2807
    :cond_0
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_1
    move v5, v1

    .line 2771
    goto :goto_0

    .line 2776
    .restart local v5       #startPos:I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2777
    move v5, v1

    .line 2780
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 2781
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2782
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2783
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2782
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2789
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2790
    .local v2, last:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2792
    .restart local v5       #startPos:I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2793
    goto :goto_1

    .line 2790
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2795
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2796
    move v5, v2

    .line 2799
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2800
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2801
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2800
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 2807
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1822
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1825
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1833
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1849
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1841
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1845
    .restart local v1       #child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v8, v1

    .line 1849
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2598
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2599
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureItem(Landroid/view/View;)V

    .line 2600
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2602
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2605
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2606
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2607
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2610
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2618
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v1

    .line 2619
    .local v1, childWidthSpec:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v0

    .line 2621
    .local v0, childHeightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2622
    return-void
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1199
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1200
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1202
    .restart local v3       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1205
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1207
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1209
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1211
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1212
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1216
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1217
    return-void

    .line 1214
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 973
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 977
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 979
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 982
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 995
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 998
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1001
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1006
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1010
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1014
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1017
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1018
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1019
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1022
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1024
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1028
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1029
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1031
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1106
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 1033
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1034
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1035
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1037
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1049
    if-eqz p2, :cond_4

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1062
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1065
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1069
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1072
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1073
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1074
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1077
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1081
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1057
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1084
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1089
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1092
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1095
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1096
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1098
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1103
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 12
    .parameter "child"
    .parameter "updateChildSelected"
    .parameter "recycled"

    .prologue
    .line 3899
    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 3900
    .local v8, needToMeasure:Z
    :goto_0
    if-eqz v8, :cond_2

    const/4 v10, 0x1

    .line 3967
    :goto_1
    return v10

    .line 3899
    .end local v8           #needToMeasure:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 3902
    .restart local v8       #needToMeasure:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v8

    .line 3904
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFixedSizeItems:Z

    if-eqz v10, :cond_4

    .line 3911
    const v10, 0x204005e

    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 3913
    .local v7, listViewItemTag:Ljava/lang/Object;
    if-nez v7, :cond_3

    .line 3914
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;

    .end local v7           #listViewItemTag:Ljava/lang/Object;
    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 3915
    .local v7, listViewItemTag:Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
    const v10, 0x204005e

    invoke-virtual {p1, v10, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3918
    .end local v7           #listViewItemTag:Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
    :cond_3
    instance-of v10, v7, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;

    if-eqz v10, :cond_6

    move-object v6, v7

    .line 3920
    check-cast v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;

    .line 3922
    .local v6, itemInfoTag:Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v5

    .line 3923
    .local v5, currentWidthSpec:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v4

    .line 3925
    .local v4, currentHeightSpec:I
    const/4 v10, 0x1

    new-array v9, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    .line 3926
    .local v9, offset:[B
    const/16 v10, 0x8

    invoke-direct {p0, p1, v9, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v1

    .line 3927
    .local v1, currentChildrenVisibilityBitsGone:J
    const/4 v10, 0x0

    aget-byte v0, v9, v10

    .line 3929
    .local v0, currentChildrenNumberTotal:I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 3931
    .local v3, currentConfiguration:Landroid/content/res/Configuration;
    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mWidthSpec:I

    if-ne v5, v10, :cond_5

    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mHeightSpec:I

    if-ne v4, v10, :cond_5

    iget-wide v10, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    cmp-long v10, v1, v10

    if-nez v10, :cond_5

    if-lez v0, :cond_5

    const/16 v10, 0x40

    if-gt v0, v10, :cond_5

    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenNumberTotal:I

    if-ne v0, v10, :cond_5

    iget-object v10, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v10}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v10

    if-nez v10, :cond_5

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 3939
    const/4 v8, 0x0

    .end local v0           #currentChildrenNumberTotal:I
    .end local v1           #currentChildrenVisibilityBitsGone:J
    .end local v3           #currentConfiguration:Landroid/content/res/Configuration;
    .end local v4           #currentHeightSpec:I
    .end local v5           #currentWidthSpec:I
    .end local v6           #itemInfoTag:Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
    .end local v9           #offset:[B
    :cond_4
    :goto_2
    move v10, v8

    .line 3967
    goto :goto_1

    .line 3942
    .restart local v0       #currentChildrenNumberTotal:I
    .restart local v1       #currentChildrenVisibilityBitsGone:J
    .restart local v3       #currentConfiguration:Landroid/content/res/Configuration;
    .restart local v4       #currentHeightSpec:I
    .restart local v5       #currentWidthSpec:I
    .restart local v6       #itemInfoTag:Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
    .restart local v9       #offset:[B
    :cond_5
    iput v5, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mWidthSpec:I

    .line 3943
    iput v4, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mHeightSpec:I

    .line 3944
    iput-wide v1, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 3945
    iput v0, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 3946
    iget-object v10, v6, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3948
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 3950
    const/4 v8, 0x1

    goto :goto_2

    .line 3962
    .end local v0           #currentChildrenNumberTotal:I
    .end local v1           #currentChildrenVisibilityBitsGone:J
    .end local v3           #currentConfiguration:Landroid/content/res/Configuration;
    .end local v4           #currentHeightSpec:I
    .end local v5           #currentWidthSpec:I
    .end local v6           #itemInfoTag:Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
    .end local v9           #offset:[B
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 3963
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2886
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2887
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2888
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2889
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2890
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2887
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2893
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2631
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2632
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2633
    .local v4, h:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2634
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2635
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2636
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2637
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2638
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 358
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 359
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    .line 360
    .local v1, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iget-object v3, v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 361
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    .end local v1           #info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_0
    return-void

    .line 358
    .restart local v1       #info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 2970
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 2972
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2973
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2974
    .local v6, listTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 2976
    .local v8, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-gez p1, :cond_5

    .line 2980
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 2983
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3064
    .end local v7           #numChildren:I
    :cond_0
    return-void

    .line 2986
    .restart local v7       #numChildren:I
    :cond_1
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2987
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 2988
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 2989
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_2

    .line 2990
    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2991
    add-int/lit8 v7, v7, 0x1

    .line 2995
    goto :goto_0

    .line 3000
    .end local v3           #lastVisiblePosition:I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_3

    .line 3001
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3005
    :cond_3
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3009
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3010
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_0

    .line 3011
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 3012
    .local v4, layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3013
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3014
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3018
    :goto_2
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3019
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_1

    .line 3016
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3023
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_5
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3027
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3030
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_6

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v9, :cond_6

    .line 3031
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3033
    if-eqz v0, :cond_0

    .line 3035
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_3

    .line 3040
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_7

    .line 3041
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3044
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3047
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3050
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3053
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_0

    .line 3054
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 3055
    .restart local v4       #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3056
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3057
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3061
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3062
    goto :goto_4

    .line 3059
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 21
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1868
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelector()Z

    move-result v18

    if-eqz v18, :cond_8

    const/4 v11, 0x1

    .line 1869
    .local v11, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v18

    move/from16 v0, v18

    if-eq v11, v0, :cond_9

    const/16 v16, 0x1

    .line 1870
    .local v16, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 1871
    .local v12, mode:I
    if-lez v12, :cond_a

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v12, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 1873
    .local v10, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v18

    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    const/4 v15, 0x1

    .line 1874
    .local v15, updateChildPressed:Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v13

    .line 1879
    .local v13, needToMeasure:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1880
    .local v14, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v14, :cond_0

    .line 1881
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v14           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1884
    .restart local v14       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1886
    if-eqz p7, :cond_1

    iget-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    :cond_1
    iget-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    iget v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1888
    :cond_2
    if-eqz p4, :cond_c

    const/16 v18, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1897
    :goto_5
    if-eqz v16, :cond_3

    .line 1898
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1901
    :cond_3
    if-eqz v15, :cond_4

    .line 1902
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1905
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1906
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v18, p1

    .line 1907
    check-cast v18, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1913
    :cond_5
    :goto_6
    if-eqz v13, :cond_11

    .line 1914
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v8

    .line 1915
    .local v8, childWidthSpec:I
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v5

    .line 1917
    .local v5, childHeightSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1922
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1923
    .local v17, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1924
    .local v9, h:I
    if-eqz p4, :cond_12

    move/from16 v7, p3

    .line 1926
    .local v7, childTop:I
    :goto_8
    if-eqz v13, :cond_13

    .line 1927
    add-int v6, p5, v17

    .line 1928
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 1929
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 1935
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v18

    if-nez v18, :cond_6

    .line 1936
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1939
    :cond_6
    if-eqz p7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 1941
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1943
    :cond_7
    return-void

    .line 1868
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v12           #mode:I
    .end local v13           #needToMeasure:Z
    .end local v14           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v15           #updateChildPressed:Z
    .end local v16           #updateChildSelected:Z
    .end local v17           #w:I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1869
    .restart local v11       #isSelected:Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1871
    .restart local v12       #mode:I
    .restart local v16       #updateChildSelected:Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1873
    .restart local v10       #isPressed:Z
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1888
    .restart local v13       #needToMeasure:Z
    .restart local v14       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v15       #updateChildPressed:Z
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1890
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1891
    iget v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1892
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1894
    :cond_e
    if-eqz p4, :cond_f

    const/16 v18, -0x1

    :goto_a
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_f
    const/16 v18, 0x0

    goto :goto_a

    .line 1908
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v18, v0

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1919
    :cond_11
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1924
    .restart local v9       #h:I
    .restart local v17       #w:I
    :cond_12
    sub-int v7, p3, v9

    goto/16 :goto_8

    .line 1931
    .restart local v7       #childTop:I
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v18

    sub-int v18, p5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1932
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v7, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 577
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 578
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 580
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 582
    .local v3, listBottom:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 568
    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 569
    .local v0, listTop:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 412
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 413
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 387
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 388
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 389
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 390
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 391
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 398
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 326
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 327
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 302
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 303
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 304
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 305
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 312
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2429
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2430
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2431
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2432
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2436
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1947
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1467
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1470
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1473
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1476
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1479
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1484
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1485
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1486
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1487
    .local v3, lastBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1493
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1494
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1495
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1497
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1500
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1501
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1505
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1507
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1514
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1509
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1510
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 3178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 3179
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    .line 3183
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3184
    .local v10, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3185
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3186
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_a

    const/4 v13, 0x1

    .line 3187
    .local v13, drawOverscrollHeader:Z
    :goto_0
    if-eqz v26, :cond_b

    const/4 v12, 0x1

    .line 3188
    .local v12, drawOverscrollFooter:Z
    :goto_1
    if-lez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    const/4 v11, 0x1

    .line 3190
    .local v11, drawDividers:Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_11

    .line 3193
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3194
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3195
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3197
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 3198
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3199
    .local v20, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v23, v0

    .line 3200
    .local v23, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v23, v32

    add-int/lit8 v19, v32, -0x1

    .line 3201
    .local v19, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3202
    .local v21, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3203
    .local v18, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3204
    .local v17, first:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 3205
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3210
    .local v4, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_d

    const/16 v16, 0x1

    .line 3212
    .local v16, fillForMissingDividers:Z
    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 3213
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3216
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3218
    .local v28, paint:Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3219
    .local v15, effectivePaddingTop:I
    const/4 v14, 0x0

    .line 3220
    .local v14, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 3221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3225
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    sub-int v32, v32, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    add-int v24, v32, v33

    .line 3226
    .local v24, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_12

    .line 3227
    const/4 v6, 0x0

    .line 3230
    .local v6, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    .line 3231
    .local v29, scrollY:I
    if-lez v9, :cond_4

    if-gez v29, :cond_4

    .line 3232
    if-eqz v13, :cond_e

    .line 3233
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3234
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3243
    :cond_4
    :goto_4
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_10

    .line 3244
    if-nez v21, :cond_5

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    :cond_5
    if-nez v18, :cond_6

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 3246
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3247
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3251
    if-eqz v11, :cond_9

    move/from16 v0, v24

    if-ge v6, v0, :cond_9

    if-eqz v12, :cond_7

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    .line 3253
    :cond_7
    if-nez v5, :cond_8

    add-int v32, v17, v22

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 3256
    :cond_8
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3257
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3243
    .end local v8           #child:Landroid/view/View;
    :cond_9
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 3186
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v11           #drawDividers:Z
    .end local v12           #drawOverscrollFooter:Z
    .end local v13           #drawOverscrollHeader:Z
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3187
    .restart local v13       #drawOverscrollHeader:Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3188
    .restart local v12       #drawOverscrollFooter:Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3210
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3236
    .restart local v6       #bottom:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_e
    if-eqz v11, :cond_4

    .line 3237
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3238
    neg-int v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3239
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3259
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    :cond_f
    if-eqz v16, :cond_9

    .line 3260
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3261
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3262
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3268
    .end local v8           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3269
    .local v25, overFooterBottom:I
    if-eqz v12, :cond_11

    add-int v32, v17, v9

    move/from16 v0, v32

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move/from16 v0, v25

    if-le v0, v6, :cond_11

    .line 3270
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3271
    move/from16 v0, v25

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3332
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_11
    :goto_7
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3333
    return-void

    .line 3277
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    .line 3279
    .restart local v29       #scrollY:I
    if-lez v9, :cond_13

    if-eqz v13, :cond_13

    .line 3280
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3281
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3282
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3285
    :cond_13
    if-eqz v13, :cond_18

    const/16 v30, 0x1

    .line 3286
    .local v30, start:I
    :goto_8
    move/from16 v22, v30

    .restart local v22       #i:I
    :goto_9
    move/from16 v0, v22

    if-ge v0, v9, :cond_1a

    .line 3287
    if-nez v21, :cond_14

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_17

    :cond_14
    if-nez v18, :cond_15

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    .line 3289
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3290
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3293
    .local v31, top:I
    move/from16 v0, v31

    if-le v0, v15, :cond_17

    .line 3294
    if-nez v5, :cond_16

    add-int v32, v17, v22

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 3297
    :cond_16
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3298
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3305
    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3286
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_17
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 3285
    .end local v22           #i:I
    .end local v30           #start:I
    :cond_18
    const/16 v30, 0x0

    goto :goto_8

    .line 3306
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_19
    if-eqz v16, :cond_17

    .line 3307
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3308
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3309
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 3315
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_1a
    if-lez v9, :cond_11

    if-lez v29, :cond_11

    .line 3316
    if-eqz v12, :cond_1b

    .line 3317
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    .line 3318
    .local v3, absListBottom:I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3319
    add-int v32, v3, v29

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3321
    .end local v3           #absListBottom:I
    :cond_1b
    if-eqz v11, :cond_11

    .line 3322
    move/from16 v0, v24

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3323
    add-int v32, v24, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3324
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method protected dispatchDrawWithBounce(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 3349
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const/4 v8, 0x1

    .line 3350
    .local v8, clipToPadding:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/touchwiz/widget/TwBounceController;->bounce(Landroid/graphics/Canvas;Z)I

    move-result v26

    .line 3353
    .local v26, saveCount:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3354
    .local v10, dividerHeight:I
    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    const/4 v11, 0x1

    .line 3356
    .local v11, drawDividers:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 3357
    .local v9, count:I
    if-eqz v11, :cond_14

    .line 3360
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3361
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3362
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3365
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v22, v0

    .line 3366
    .local v22, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v22, v28

    add-int/lit8 v17, v28, -0x1

    .line 3367
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3368
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3369
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3370
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 3371
    .local v4, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3376
    .local v3, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isOpaque()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v28

    if-nez v28, :cond_a

    const/4 v14, 0x1

    .line 3378
    .local v14, fillForMissingDividers:Z
    :goto_2
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 3379
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCacheColorHint()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 3382
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 3384
    .local v25, paint:Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3385
    .local v13, effectivePaddingTop:I
    const/4 v12, 0x0

    .line 3386
    .local v12, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 3391
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    add-int v23, v28, v29

    .line 3392
    .local v23, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 3393
    const/4 v5, 0x0

    .line 3396
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_2

    if-lez v9, :cond_2

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 3397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    sub-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3398
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3399
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3402
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_3

    if-lez v9, :cond_3

    add-int v28, v15, v9

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 3405
    add-int/lit8 v28, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 3407
    .local v21, itemBottom:I
    move/from16 v0, v21

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3408
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3409
    add-int/lit8 v28, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3412
    .end local v21           #itemBottom:I
    :cond_3
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 3413
    if-nez v19, :cond_4

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    :cond_4
    if-nez v16, :cond_5

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 3415
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3416
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3420
    move/from16 v0, v23

    if-ge v5, v0, :cond_7

    .line 3421
    if-nez v4, :cond_6

    add-int v28, v15, v20

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    add-int v28, v15, v20

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_b

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    add-int v28, v15, v20

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 3424
    :cond_6
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3425
    add-int v28, v5, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3426
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3412
    .end local v7           #child:Landroid/view/View;
    :cond_7
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 3349
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v5           #bottom:I
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #clipToPadding:Z
    .end local v9           #count:I
    .end local v10           #dividerHeight:I
    .end local v11           #drawDividers:Z
    .end local v12           #effectivePaddingBottom:I
    .end local v13           #effectivePaddingTop:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v26           #saveCount:I
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3354
    .restart local v8       #clipToPadding:Z
    .restart local v10       #dividerHeight:I
    .restart local v26       #saveCount:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3376
    .restart local v3       #adapter:Landroid/widget/ListAdapter;
    .restart local v4       #areAllItemsSelectable:Z
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v15       #first:I
    .restart local v16       #footerDividers:Z
    .restart local v17       #footerLimit:I
    .restart local v18       #headerCount:I
    .restart local v19       #headerDividers:Z
    .restart local v22       #itemCount:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 3427
    .restart local v5       #bottom:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v12       #effectivePaddingBottom:I
    .restart local v13       #effectivePaddingTop:I
    .restart local v14       #fillForMissingDividers:Z
    .restart local v20       #i:I
    .restart local v23       #listBottom:I
    .restart local v25       #paint:Landroid/graphics/Paint;
    :cond_b
    if-eqz v14, :cond_7

    .line 3428
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3429
    add-int v28, v5, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3430
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 3437
    .end local v5           #bottom:I
    .end local v7           #child:Landroid/view/View;
    .end local v20           #i:I
    :cond_c
    move/from16 v24, v13

    .line 3440
    .local v24, listTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_d

    if-lez v9, :cond_d

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 3441
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    sub-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3442
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3443
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3446
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_e

    if-lez v9, :cond_e

    add-int v28, v15, v9

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 3448
    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3449
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3453
    :cond_e
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 3454
    if-nez v19, :cond_f

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_12

    :cond_f
    if-nez v16, :cond_10

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 3456
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3457
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3460
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_12

    .line 3461
    if-nez v4, :cond_11

    add-int v28, v15, v20

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    add-int v28, v15, v20

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_13

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_11

    add-int v28, v15, v20

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 3464
    :cond_11
    sub-int v28, v27, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3465
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3472
    add-int/lit8 v28, v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3453
    .end local v7           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_12
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 3473
    .restart local v7       #child:Landroid/view/View;
    .restart local v27       #top:I
    :cond_13
    if-eqz v14, :cond_12

    .line 3474
    sub-int v28, v27, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3475
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3476
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3486
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #child:Landroid/view/View;
    .end local v12           #effectivePaddingBottom:I
    .end local v13           #effectivePaddingTop:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v24           #listTop:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v27           #top:I
    :cond_14
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3488
    if-ltz v26, :cond_15

    .line 3489
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3490
    if-eqz v8, :cond_15

    .line 3491
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x22

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3493
    :cond_15
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 2091
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2092
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2094
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2095
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 2098
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2107
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 2100
    .restart local v0       #focused:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_0

    instance-of v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 2103
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3338
    .local v0, more:Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    .line 3341
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3508
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3509
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3510
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3160
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3162
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3163
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3165
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3166
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3167
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3170
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3171
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3174
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3143
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3145
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3146
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3148
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3149
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3150
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3153
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3154
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3157
    return-void
.end method

.method fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 704
    const/4 v8, 0x0

    .line 706
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int v7, v0, v1

    .line 707
    .local v7, end:I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 711
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 713
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 714
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 716
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 717
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 718
    if-eqz v5, :cond_1

    .line 719
    move-object v8, v6

    .line 722
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 723
    goto :goto_0

    .line 713
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 725
    :cond_3
    return-object v8
.end method

.method fillGap(Z)V
    .locals 6
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 671
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 672
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 673
    const/4 v2, 0x0

    .line 674
    .local v2, paddingTop:I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingTop()I

    move-result v2

    .line 677
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 679
    .local v3, startOffset:I
    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 680
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 691
    .end local v2           #paddingTop:I
    :goto_1
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_1
    move v3, v2

    .line 677
    goto :goto_0

    .line 682
    .end local v2           #paddingTop:I
    :cond_2
    const/4 v1, 0x0

    .line 683
    .local v1, paddingBottom:I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingBottom()I

    move-result v1

    .line 686
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 688
    .restart local v3       #startOffset:I
    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_1

    .line 686
    .end local v3           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 738
    const/4 v8, 0x0

    .line 740
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 741
    .local v7, end:I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 745
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 747
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 748
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 750
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 751
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 752
    if-eqz v5, :cond_1

    .line 753
    move-object v8, v6

    .line 756
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 757
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v3

    .line 747
    goto :goto_1

    .line 759
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 761
    return-object v8
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1325
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1326
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1327
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1328
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1329
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1330
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1331
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1343
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1328
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1335
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1336
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1337
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1338
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1335
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1343
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3821
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3822
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3825
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3826
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3828
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3829
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3831
    if-eqz v2, :cond_0

    .line 3837
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3825
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3837
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3800
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3801
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3802
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3803
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3812
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3807
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3808
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3809
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3812
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3725
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3726
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3729
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3730
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3732
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3733
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3735
    if-eqz v2, :cond_0

    .line 3741
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3729
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3741
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3706
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3707
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3708
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3709
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3717
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3712
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3713
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3714
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3717
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3772
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3773
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3776
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3777
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3779
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3780
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3782
    if-eqz v2, :cond_0

    .line 3788
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3776
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3788
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3752
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3753
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3754
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3755
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3764
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3759
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3760
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3761
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3764
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2340
    const/4 v0, 0x0

    .line 2341
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2342
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2343
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2344
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2345
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2346
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2347
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 2349
    :cond_0
    const/4 v0, 0x1

    .line 2363
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2364
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2365
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2368
    :cond_2
    return v0

    .line 2351
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2352
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2353
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2354
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2355
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2356
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2357
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 2359
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3851
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3852
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3882
    :cond_0
    :goto_0
    return-object v5

    .line 3858
    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3859
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3860
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3861
    .local v3, count:I
    new-array v5, v3, [J

    .line 3862
    .local v5, ids:[J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3864
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3865
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3866
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3867
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3865
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3873
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3876
    new-array v6, v2, [J

    .line 3877
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3879
    goto :goto_0

    .line 3882
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3518
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3545
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3104
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 230
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3602
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3109
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3111
    .local v4, retValue:Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3114
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3115
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3116
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3126
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3109
    goto :goto_0

    .line 3114
    .restart local v4       #retValue:Z
    :cond_5
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    goto :goto_1

    .line 3119
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3121
    .local v2, listBottom:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3122
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3123
    goto :goto_2

    .line 3119
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_8
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1518
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1519
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 1520
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1526
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    if-nez v8, :cond_0

    .line 1777
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1537
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1539
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1540
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1541
    .local v19, index:I
    const/4 v5, 0x0

    .line 1544
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1545
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1546
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1548
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1551
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1566
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1567
    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    .line 1568
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1572
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1574
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1579
    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1582
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1583
    .local v11, dataChanged:Z
    if-eqz v11, :cond_5

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->handleDataChanged()V

    .line 1589
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    if-nez v8, :cond_0

    .line 1777
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1553
    .end local v11           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1554
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1555
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1593
    .restart local v11       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_8

    .line 1594
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but TwListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1776
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_7

    .line 1777
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_7
    throw v2

    .line 1601
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 1605
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1606
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1609
    .local v22, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1613
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_a

    .line 1614
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_b

    .line 1615
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v2, :cond_9

    .line 1616
    add-int v2, v18, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addShouldRetainView(ILandroid/view/View;)V

    .line 1614
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1618
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_3

    .line 1628
    .end local v18           #i:I
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1635
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1636
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_e

    .line 1643
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1644
    :cond_c
    move-object/from16 v13, v17

    .line 1646
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1647
    if-eqz v14, :cond_d

    .line 1649
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1652
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1656
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 1658
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1685
    if-nez v10, :cond_17

    .line 1686
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_16

    .line 1687
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1688
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 1689
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1710
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1712
    if-eqz v23, :cond_1f

    .line 1715
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1716
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_10
    const/4 v15, 0x1

    .line 1719
    .local v15, focusWasTaken:Z
    :goto_5
    if-nez v15, :cond_1d

    .line 1724
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1725
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_11

    .line 1726
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1728
    :cond_11
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 1736
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1759
    :cond_12
    :goto_7
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1760
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1763
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1766
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateScrollIndicators()V

    .line 1770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v2, :cond_14

    .line 1771
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 1774
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1776
    if-nez v8, :cond_0

    .line 1777
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1660
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_2
    if-eqz v4, :cond_15

    .line 1661
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1663
    .end local v23           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1665
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1667
    .end local v23           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1668
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1670
    .end local v23           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1671
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1674
    .end local v23           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1675
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1676
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1679
    .end local v23           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1680
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v23           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1682
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1683
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1691
    .end local v23           #sel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1692
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 1693
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1694
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1696
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_19

    .line 1697
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_18

    .end local v6           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1699
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_1b

    .line 1700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v20, :cond_1a

    .end local v6           #childrenTop:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_9

    .line 1703
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1716
    .end local v6           #childrenTop:I
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1730
    .restart local v15       #focusWasTaken:Z
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 1734
    .end local v15           #focusWasTaken:Z
    :cond_1e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_6

    .line 1738
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v2, v0, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1742
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_20

    .line 1743
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 1752
    .end local v9           #child:Landroid/view/View;
    :cond_20
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v14, :cond_12

    .line 1753
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 1745
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1658
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2037
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2038
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2064
    :cond_0
    :goto_0
    return v2

    .line 2042
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2043
    .local v1, count:I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2044
    if-eqz p2, :cond_2

    .line 2045
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2046
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2047
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2050
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2051
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2052
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2056
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2059
    goto :goto_0

    .line 2061
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2064
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1259
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1260
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1320
    :cond_0
    :goto_0
    return v6

    .line 1264
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1265
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1268
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1273
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1274
    :cond_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 1275
    .local v7, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->recycleOnMeasure()Z

    move-result v8

    .line 1276
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 1278
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1279
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1281
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1283
    if-lez v4, :cond_3

    .line 1285
    add-int/2addr v9, v3

    .line 1289
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1292
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1295
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1297
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1301
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1265
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1313
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1314
    move v6, v9

    .line 1278
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1320
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3687
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 3689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3690
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3691
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3692
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;)V

    .line 3691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3694
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->removeAllViews()V

    .line 3696
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3626
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3628
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3629
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    .line 3630
    .local v2, closetChildIndex:I
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 3631
    iget v9, p0, Landroid/view/View;->mScrollX:I

    iget v10, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3636
    if-nez v0, :cond_0

    .line 3637
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 3678
    :goto_0
    return-void

    .line 3643
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 3644
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3645
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 3650
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3651
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3652
    .local v6, minDistance:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3653
    .local v1, childCount:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3655
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 3657
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3655
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3661
    :cond_3
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3662
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3663
    invoke-virtual {p0, v7, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3664
    invoke-static {p3, v8, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3666
    .local v3, distance:I
    if-ge v3, v6, :cond_2

    .line 3667
    move v6, v3

    .line 3668
    move v2, v5

    goto :goto_2

    .line 3673
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_4
    if-ltz v2, :cond_5

    .line 3674
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_0

    .line 3676
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 3887
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3888
    const-class v0, Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3889
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3893
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3894
    const-class v0, Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3895
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2117
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2122
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1146
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1149
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1150
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1151
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1153
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1154
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1155
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1157
    .local v8, childState:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1158
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1162
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1165
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1166
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1168
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1175
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1182
    :goto_1
    if-nez v10, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1187
    :cond_2
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1190
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1193
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1194
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 1195
    return-void

    .line 1157
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1179
    :cond_5
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1129
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1130
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1131
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1132
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1133
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1134
    .local v4, top:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1135
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/touchwiz/widget/TwListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    .line 1137
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->setup(II)Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1140
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSizeChanged(IIII)V

    .line 1141
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2294
    const/4 v1, -0x1

    .line 2295
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2297
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2298
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2304
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2305
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2306
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2307
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2308
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2310
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2311
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2314
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2315
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2318
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2319
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 2320
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2321
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2328
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2299
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2300
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2301
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2328
    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1226
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 434
    :cond_0
    const/4 v0, 0x1

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 439
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 348
    :cond_0
    const/4 v0, 0x1

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 353
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 588
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 591
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 595
    .local v6, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 596
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 597
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 599
    .local v5, fadingEdge:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 601
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 602
    :cond_0
    add-int/2addr v8, v5

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 607
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 609
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 612
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 614
    :cond_2
    sub-int/2addr v7, v5

    .line 618
    :cond_3
    const/4 v11, 0x0

    .line 620
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 627
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 634
    :goto_0
    sub-int v4, v1, v7

    .line 635
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 656
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 657
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 658
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->scrollListItemsBy(I)V

    .line 659
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 663
    :cond_5
    return v10

    .line 630
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 636
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 643
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 651
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 652
    .local v12, top:I
    sub-int v3, v12, v8

    .line 653
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 646
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 656
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 545
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 547
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 548
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 481
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 486
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 488
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 489
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 494
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 495
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 498
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 501
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 502
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 503
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 506
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 507
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 509
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 512
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 513
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 517
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 518
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 520
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 531
    .end local v0           #position:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 532
    return-void

    .line 491
    :cond_3
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 525
    .end local v0           #position:I
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3131
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3132
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    .line 3133
    if-eqz v0, :cond_1

    .line 3134
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3135
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3137
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3139
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 3140
    return-void

    .line 3131
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3529
    if-eqz p1, :cond_2

    .line 3530
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3534
    :goto_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3535
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerIsOpaque:Z

    .line 3536
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 3537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3538
    return-void

    .line 3532
    :cond_2
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3556
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3557
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 3558
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3559
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3581
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    .line 3582
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3583
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    .line 3570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3571
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3093
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    .line 3094
    if-nez p1, :cond_0

    .line 3095
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 3097
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3614
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3615
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3592
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3593
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_0

    .line 3594
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3596
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    .line 1961
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2074
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2075
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 2086
    :goto_0
    return-void

    .line 2079
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2080
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_0

    .line 2082
    :cond_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 2083
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1978
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1979
    if-ltz p1, :cond_2

    .line 1980
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 1986
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1987
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1988
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1990
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1991
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1992
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1995
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 1983
    :cond_4
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2006
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 2007
    const/4 v0, 0x0

    .line 2009
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 2011
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2012
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 2013
    const/4 v0, 0x1

    .line 2019
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 2021
    if-eqz v0, :cond_1

    .line 2022
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2024
    :cond_1
    return-void

    .line 2014
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2015
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldCorrectTooHigh()Z
    .locals 1

    .prologue
    .line 1398
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 950
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 951
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 938
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 939
    return-void
.end method
