.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
.super Landroid/view/View;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexTextView"
.end annotation


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndexPath:Ljava/lang/String;

.field protected mIndexPathArray:[Ljava/lang/String;

.field private mIndexTextColor:I

.field private mIndexTextColorDimmed:I

.field mMoveToIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field mSelectedIndex:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 1761
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1762
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1752
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1753
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    .line 1763
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->init()V

    .line 1764
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1768
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1769
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1752
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1753
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    .line 1770
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->init()V

    .line 1771
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1735
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1735
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    return p1
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x20500c1

    const v3, 0x20500c0

    .line 1776
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1777
    .local v0, rsrc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1778
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    .line 1779
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1780
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1781
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x2060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1782
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1783
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mScale:F

    .line 1785
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1786
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    .line 1787
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    .line 1788
    const v1, 0x2020223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1795
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1797
    return-void

    .line 1790
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    .line 1791
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    .line 1792
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method getIndexPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .parameter "canvas"

    .prologue
    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    .line 1802
    .local v22, length:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    .line 1803
    .local v32, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 1804
    .local v16, height:I
    div-int/lit8 v30, v32, 0x2

    .line 1807
    .local v30, textX:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1812
    .local v9, BGRectPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 1927
    .end local v9           #BGRectPadding:Landroid/graphics/Rect;
    .end local v16           #height:I
    .end local v22           #length:I
    .end local v30           #textX:I
    .end local v32           #width:I
    :cond_0
    :goto_0
    return-void

    .line 1815
    .restart local v9       #BGRectPadding:Landroid/graphics/Rect;
    .restart local v16       #height:I
    .restart local v22       #length:I
    .restart local v30       #textX:I
    .restart local v32       #width:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v23

    .line 1818
    .local v23, pf:Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v20

    .line 1820
    .local v20, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    if-eqz v20, :cond_0

    .line 1823
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getScrollInfo()Ljava/util/ArrayList;

    move-result-object v13

    .line 1827
    .local v13, depthScrollInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v12, 0x0

    .line 1828
    .local v12, count:I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1829
    .local v10, bgPadding:Landroid/graphics/Rect;
    const/high16 v31, 0x40e0

    .line 1830
    .local v31, ticktop:F
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v11, v2

    .line 1831
    .local v11, cellheight:F
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 1832
    .local v28, stringBound:Landroid/graphics/Rect;
    const/4 v2, 0x1

    new-array v0, v2, [F

    move-object/from16 v29, v0

    .line 1833
    .local v29, textWidth:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const-string v4, "D"

    const-string v5, "D"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const-string v6, "D"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v2

    neg-int v0, v2

    move/from16 v21, v0

    .line 1836
    .local v21, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v25

    .line 1838
    .local v25, right:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    if-gez v2, :cond_3

    .line 1839
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1845
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1847
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 1849
    .local v24, res:Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1849
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1842
    .end local v17           #i:I
    .end local v24           #res:Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    goto :goto_1

    .line 1853
    .restart local v17       #i:I
    .restart local v24       #res:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1855
    .local v27, strToDraw:Ljava/lang/String;
    move/from16 v0, v32

    int-to-float v2, v0

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1856
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1857
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1860
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int v2, v21, v2

    const/4 v4, 0x0

    aget v4, v29, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    iget v4, v10, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v4, v11

    add-float v4, v4, v31

    float-to-int v4, v4

    iget v5, v10, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v25

    const/4 v6, 0x0

    aget v6, v29, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    const/high16 v6, 0x4080

    div-float v6, v11, v6

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float v6, v6, v31

    float-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int v4, v21, v4

    const/4 v5, 0x0

    aget v5, v29, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget v5, v10, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    add-float v5, v5, v31

    float-to-int v5, v5

    iget v6, v10, Landroid/graphics/Rect;->right:I

    add-int v6, v6, v25

    const/4 v7, 0x0

    aget v7, v29, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    const/high16 v7, 0x4080

    div-float v7, v11, v7

    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    sub-float v7, v7, v31

    float-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1871
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1873
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1874
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    .line 1876
    .local v26, shaderpaint:Landroid/graphics/Paint;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int v2, v21, v2

    const/4 v4, 0x0

    aget v4, v29, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    neg-float v4, v11

    const/high16 v5, 0x4000

    div-float v5, v11, v5

    sub-float/2addr v4, v5

    iget v5, v10, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v25

    const/4 v6, 0x0

    aget v6, v29, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4080

    div-float v6, v11, v6

    sub-float v6, v11, v6

    float-to-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1881
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1882
    .local v3, centerStr:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_9

    .line 1887
    const/4 v2, 0x1

    new-array v14, v2, [F

    .line 1888
    .local v14, dimmedTextWidth:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1891
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1892
    const/4 v2, 0x1

    new-array v15, v2, [F

    .line 1893
    .local v15, dimmedTextWidth1:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1896
    const/4 v2, 0x0

    aget v2, v15, v2

    const/high16 v4, 0x41f0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 1897
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4120

    sub-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1920
    .end local v14           #dimmedTextWidth:[F
    .end local v15           #dimmedTextWidth1:[F
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1923
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1924
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1899
    .restart local v14       #dimmedTextWidth:[F
    .restart local v15       #dimmedTextWidth1:[F
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1901
    .end local v15           #dimmedTextWidth1:[F
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    aget v6, v14, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1902
    const/4 v2, 0x1

    new-array v15, v2, [F

    .line 1903
    .restart local v15       #dimmedTextWidth1:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1905
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1906
    .local v18, lFiString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1908
    .local v19, lSecString:Ljava/lang/String;
    const-string v2, "m"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "w"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "i"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1909
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    aget v6, v14, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v14, v6

    const/4 v7, 0x0

    aget v7, v15, v7

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1911
    :cond_8
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    aget v6, v14, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v14, v6

    add-float/2addr v6, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1916
    .end local v14           #dimmedTextWidth:[F
    .end local v15           #dimmedTextWidth1:[F
    .end local v18           #lFiString:Ljava/lang/String;
    .end local v19           #lSecString:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1917
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method setIndexPath(Ljava/lang/String;)V
    .locals 3
    .parameter "indexPath"

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    .line 1930
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    .line 1931
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1932
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1931
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    :cond_0
    return-void
.end method
