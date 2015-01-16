.class public Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.source "TwDndLinearScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    }
.end annotation


# static fields
.field private static final BITMAP_DEFAULT_ALPHA:I = 0xff

.field public static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DND_AUTO_SCROLL_BOUND_DELTA:I = 0xa

.field private static final DND_AUTO_SCROLL_DELAY_INIT:I = 0x190

.field private static final DND_AUTO_SCROLL_DELAY_RUNNABLE:I = 0x32

.field private static final DND_AUTO_SCROLL_LEFT_OR_TOP:I = 0x1

.field private static final DND_AUTO_SCROLL_MAX_AREA:I = 0x3c

.field private static final DND_AUTO_SCROLL_NONE:I = 0x0

.field private static final DND_AUTO_SCROLL_RIGHT_OR_BOTTOM:I = 0x2

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwDndLinearScrollView"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAddAnimation:Landroid/view/animation/Animation;

.field private mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

.field private mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

.field private mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

.field private mDeleteAnimation:Landroid/view/animation/Animation;

.field private mDeleteChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndTouchOffsetX:I

.field private mDndTouchOffsetY:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mIsDragging:Z

.field private mOrientation:I

.field private mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    .line 147
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    return v0
.end method

.method private checkScrollingBound(III)I
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    .line 815
    const/4 v0, 0x0

    .line 818
    .local v0, areaSize:I
    if-nez p3, :cond_0

    .line 819
    move v1, p1

    .line 820
    .local v1, pos:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 829
    :goto_0
    div-int/lit8 v4, v0, 0x3

    int-to-float v4, v4

    const/high16 v5, 0x4270

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v2, v4

    .line 831
    .local v2, scrollBound:I
    if-ltz v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 836
    :goto_1
    return v3

    .line 821
    .end local v1           #pos:I
    .end local v2           #scrollBound:I
    :cond_0
    if-ne p3, v3, :cond_1

    .line 822
    move v1, p2

    .line 823
    .restart local v1       #pos:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 825
    .end local v1           #pos:I
    :cond_1
    const/4 v1, 0x0

    .line 826
    .restart local v1       #pos:I
    const-string v4, "TwDndLinearScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALIED orientation :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 833
    .restart local v2       #scrollBound:I
    :cond_2
    sub-int v3, v0, v2

    if-le v1, v3, :cond_3

    if-ge v1, v0, :cond_3

    .line 834
    const/4 v3, 0x2

    goto :goto_1

    .line 836
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findNewPosition(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 841
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 842
    .local v0, childCount:I
    if-lez v0, :cond_4

    .line 843
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 844
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 846
    .local v3, r:Landroid/graphics/Rect;
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v4, :cond_1

    .line 847
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v2, v4, 0x5

    .line 848
    .local v2, offset:I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    if-ge v4, p1, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    if-le v4, p1, :cond_2

    .line 861
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return v1

    .line 851
    .restart local v1       #i:I
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 852
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v2, v4, 0x5

    .line 853
    .restart local v2       #offset:I
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    if-ge v4, p2, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    if-gt v4, p2, :cond_0

    .line 843
    .end local v2           #offset:I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_3
    const-string v4, "TwDndLinearScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALIED Orientation :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 861
    .end local v1           #i:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_4
    const/high16 v1, -0x8000

    goto :goto_1
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v1, -0x8000

    .line 150
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    .line 151
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 152
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 153
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    .line 154
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 155
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    .line 156
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    .line 158
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 159
    const/16 v1, 0xff

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    .line 160
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    .line 161
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 163
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    .line 164
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    .line 167
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    .line 169
    .local v0, customLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    .line 172
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setFillViewport(Z)V

    .line 179
    invoke-virtual {p0, v4}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 180
    return-void
.end method

.method private setDrag(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 760
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v3, :cond_0

    .line 774
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->findNewPosition(II)I

    move-result v2

    .line 766
    .local v2, newPos:I
    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    if-eq v2, v3, :cond_1

    .line 767
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    .line 768
    .local v0, customLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 769
    .local v1, dragView:Landroid/view/View;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeViewAt(I)V

    .line 770
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 771
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 773
    .end local v0           #customLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    .end local v1           #dragView:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private setDrop(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v3, -0x8000

    .line 780
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 784
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    .line 787
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 789
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 791
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 794
    :cond_1
    if-eq p1, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 800
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    .line 801
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 802
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 803
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 804
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    .line 805
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    .line 807
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    if-eqz v0, :cond_3

    .line 808
    const-string v0, "TwDndLinearScrollView"

    const-string v1, "dndListener.OnDragAndDropStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;->OnDragAndDropStop()V

    .line 811
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 690
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->addItem(Landroid/view/View;I)V

    .line 691
    return-void
.end method

.method public addItem(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 695
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 699
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 419
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, draggedItemX:I
    const/4 v1, 0x0

    .line 423
    .local v1, draggedItemY:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v2, :cond_1

    .line 424
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_0
    return-void

    .line 425
    .restart local v0       #draggedItemX:I
    .restart local v1       #draggedItemY:I
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 426
    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    goto :goto_0

    .line 428
    :cond_2
    const-string v2, "TwDndLinearScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIED Orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "uptime"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDndAnimationDuration()I
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragViewAlpha()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    return v0
.end method

.method public getRemoveAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getTwDndListener()Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 450
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 451
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 453
    .local v2, y:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v4, :cond_2

    .line 454
    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 456
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrop(I)V

    .line 458
    :cond_1
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 459
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 466
    :goto_0
    return v3

    .line 463
    :cond_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 464
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 466
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 402
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 403
    .local v0, prevScrollX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 404
    .local v1, prevScrollY:I
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onLayout(ZIIII)V

    .line 405
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v2, :cond_0

    .line 406
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->onDrawChildren(II)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 409
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->onDrawChildren(II)V

    goto :goto_0

    .line 411
    :cond_2
    const-string v2, "TwDndLinearScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIED Orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const-wide/16 v9, 0x190

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 472
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 473
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 475
    .local v4, y:I
    packed-switch v0, :pswitch_data_0

    .line 531
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    .line 477
    :pswitch_0
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 478
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 479
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 481
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v1

    .line 484
    .local v1, curBound:I
    if-lez v1, :cond_1

    .line 485
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 492
    .end local v1           #curBound:I
    :pswitch_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 496
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v6, :cond_3

    .line 497
    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v6, v3

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    .line 503
    :goto_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v3, v4, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v1

    .line 504
    .restart local v1       #curBound:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v2

    .line 506
    .local v2, prevBound:I
    if-eq v1, v2, :cond_2

    .line 507
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    if-lez v1, :cond_2

    .line 511
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    :cond_2
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 516
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    goto :goto_0

    .line 499
    .end local v1           #curBound:I
    .end local v2           #prevBound:I
    :cond_3
    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v6, v4

    invoke-direct {p0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    goto :goto_1

    .line 521
    :pswitch_2
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 523
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrop(I)V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeAllItems()V
    .locals 4

    .prologue
    .line 726
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 728
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 730
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeAllViews()V

    .line 736
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->removeItem(Landroid/view/View;)V

    .line 703
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 706
    const-wide/16 v1, 0x0

    .line 707
    .local v1, startOffset:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    .line 708
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 709
    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    .line 711
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 712
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 715
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 717
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 722
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 723
    return-void
.end method

.method public setAddAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    .line 675
    return-void
.end method

.method public setDndAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setAnimationDuration(I)V

    .line 667
    return-void
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 663
    :goto_0
    return-void

    .line 662
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 747
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    .line 748
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v0, :cond_0

    .line 392
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    .line 393
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 395
    :cond_0
    return-void
.end method

.method public setRemoveAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    .line 683
    return-void
.end method

.method public setTwDndListener(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    .line 384
    return-void
.end method

.method public startDrag(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 585
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v5, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v5, :cond_2

    .line 592
    const-string v5, "TwDndLinearScrollView"

    const-string v6, "You must specify dndController to activate Drag&Drop."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v5, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 604
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 606
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 609
    .local v4, v:Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-virtual {v4}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 612
    .local v3, oldCacheDrawing:Z
    invoke-virtual {v4, v6}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 613
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 614
    .local v1, color:I
    invoke-virtual {v4, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 615
    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    .line 616
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 617
    if-eqz v1, :cond_3

    .line 618
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 620
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 622
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 623
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 624
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 625
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDragViewAlpha(I)V

    .line 626
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    .line 627
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    .line 628
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 629
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 630
    iget v5, p0, Landroid/view/View;->mScrollX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    .line 631
    iget v5, p0, Landroid/view/View;->mScrollY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    .line 633
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 634
    invoke-virtual {v4, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 635
    invoke-virtual {v4, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 637
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    if-eqz v5, :cond_5

    .line 638
    const-string v5, "TwDndLinearScrollView"

    const-string v6, "dndListener.OnDragAndDropStart()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    invoke-interface {v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;->OnDragAndDropStart()V

    .line 642
    :cond_5
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v2

    .line 643
    .local v2, currEdge:I
    if-lez v2, :cond_6

    .line 645
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    const-wide/16 v6, 0x190

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 647
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->startDrag(I)V

    .line 579
    return-void
.end method
