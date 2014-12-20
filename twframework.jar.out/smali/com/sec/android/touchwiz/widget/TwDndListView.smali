.class public Lcom/sec/android/touchwiz/widget/TwDndListView;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final BITMAP_ALPHA:I = 0xff

.field private static final DNDSTARTANIM_FROM_X:F = 1.0f

.field private static final DNDSTARTANIM_FROM_Y:F = 1.0f

.field private static final DNDSTARTANIM_RELATIVE_PIVOT:F = 0.5f

.field private static final DNDSTARTANIM_TO_X:F = 1.08f

.field private static final DNDSTARTANIM_TO_Y:F = 1.08f

.field private static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0xa

.field private static final DND_BASELINE_BOTTOM:I = 0x1

.field private static final DND_BASELINE_CENTER:I = 0x0

.field private static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field private static final DND_TOUCH_STATUS_NON:I = 0x0

.field private static final DND_TOUCH_STATUS_START:I = 0x1

.field private static final MOVEMENT_DOWN:I = 0x0

.field private static final MOVEMENT_INVALID:I = 0x2

.field private static final MOVEMENT_RESISTANCE:F = 0.0f

.field private static final MOVEMENT_UP:I = 0x1

.field private static final SCALEUPDOWNANIM_RESISTANCE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "TwDndListView"

.field private static final mDraggingReleaseAnimDurationMultiplicator:F = 0.5f

.field private static final mSelectHighlightAnimDuration:I = 0x78


# instance fields
.field private final mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

.field private mDndMode:Z

.field private mDndSwitchBaseLine:I

.field private mDndTouchMode:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragBitmapTop:I

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePadding:Landroid/graphics/Rect;

.field private mDragGrabHandlePosGravity:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mFirstTouchY:I

.field private mListItemSelectionAnimating:Z

.field private mListViewHeight:I

.field private mMovementDirection:I

.field private mPrevTouchY:I

.field private mRetainFirstDragViewPos:I

.field mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

.field private final mScrollBarSize:I

.field private mSetAnimationCount:I

.field private mTempEvent:Landroid/view/MotionEvent;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:I

.field private final mTouchSlop:I

.field private mUserSetDragItemBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xff

    const/4 v3, -0x1

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    .line 89
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    .line 148
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    .line 168
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScrollBarSize:I

    .line 799
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    .line 183
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    .line 185
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    .line 186
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 188
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 189
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 191
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 192
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 193
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    .line 194
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    .line 198
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 202
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 204
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 206
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 210
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchSlop:I

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 215
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->setLocalItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;)V

    .line 216
    return-void
.end method

.method private checkStartDnd(III)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "childRect"
    .parameter "isDraggedItem"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 907
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 908
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 910
    :cond_0
    return-void

    .line 907
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private findMovedItemIndex(Landroid/graphics/Rect;Z)I
    .locals 4
    .parameter "rect"
    .parameter "down"

    .prologue
    const/4 v1, -0x1

    .line 786
    const/4 v0, -0x1

    .line 787
    .local v0, itemPosition:I
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionOfOverLappingView(Landroid/graphics/Rect;Z)I

    move-result v0

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    .line 793
    :cond_0
    :goto_0
    if-eq v0, v1, :cond_2

    .line 796
    .end local v0           #itemPosition:I
    :goto_1
    return v0

    .line 790
    .restart local v0       #itemPosition:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 796
    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "childRect"
    .parameter "outGrabHandleRect"

    .prologue
    .line 886
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 888
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 889
    .local v0, drawableHeight:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 890
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 891
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 892
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 894
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 895
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 897
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 900
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :cond_0
    return-void
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 957
    :cond_0
    const/4 v0, 0x1

    .line 959
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculateOffset(II)V
    .locals 13
    .parameter "prevPos"
    .parameter "newPos"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 802
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v9

    add-int v0, v8, v9

    .line 803
    .local v0, HEIGHT:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 804
    .local v2, curTime:J
    if-le p2, p1, :cond_4

    .line 805
    add-int/lit8 v4, p1, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, p2, :cond_9

    .line 806
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v4, v8, :cond_1

    .line 805
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 808
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-interface {v8, v9, p2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v5

    .line 809
    .local v5, lIsAllow:Z
    const-string v8, "TwDndListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling Allowing Dropping at position UP::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value ::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    if-nez v5, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 815
    .local v6, nonMovableChild:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 816
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    .line 817
    const-string v8, "TwDndListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding Height of the non movable item total Skippin UP::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 822
    .end local v6           #nonMovableChild:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    .line 823
    .local v7, t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 824
    .local v1, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v8, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v8, :cond_3

    move-object v7, v1

    .line 825
    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 830
    :goto_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    add-int/2addr v8, v0

    neg-int v8, v8

    invoke-virtual {v7, v11, v11, v11, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 831
    invoke-virtual {v7, v2, v3, v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    .line 832
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v8, v4, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 833
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    goto :goto_1

    .line 827
    :cond_3
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v7           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-direct {v7, v12}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .restart local v7       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    goto :goto_2

    .line 836
    .end local v1           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v4           #i:I
    .end local v5           #lIsAllow:Z
    .end local v7           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_4
    if-ge p2, p1, :cond_9

    .line 837
    move v4, p2

    .restart local v4       #i:I
    :goto_3
    if-ge v4, p1, :cond_9

    .line 838
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v4, v8, :cond_6

    .line 837
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 840
    :cond_6
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-interface {v8, v9, p2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v5

    .line 841
    .restart local v5       #lIsAllow:Z
    const-string v8, "TwDndListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling Allowing Dropping at position DOWN::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value ::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    if-nez v5, :cond_7

    .line 846
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 847
    .restart local v6       #nonMovableChild:Landroid/view/View;
    if-eqz v6, :cond_5

    .line 848
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    .line 849
    const-string v8, "TwDndListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding Height of the non movable item total Skippin DOWN::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 854
    .end local v6           #nonMovableChild:Landroid/view/View;
    :cond_7
    const/4 v7, 0x0

    .line 855
    .restart local v7       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 856
    .restart local v1       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v8, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v8, :cond_8

    move-object v7, v1

    .line 857
    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 861
    :goto_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    add-int/2addr v8, v0

    invoke-virtual {v7, v11, v11, v11, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 862
    invoke-virtual {v7, v2, v3, v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    .line 863
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v8, v4, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 864
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    goto :goto_4

    .line 859
    :cond_8
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v7           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-direct {v7, v12}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .restart local v7       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    goto :goto_5

    .line 868
    .end local v1           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v4           #i:I
    .end local v5           #lIsAllow:Z
    .end local v7           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_9
    return-void
.end method

.method private startSelectHighlightingAnimation()V
    .locals 7

    .prologue
    const v2, 0x3f8a3d71

    const/high16 v1, 0x3f80

    const/high16 v4, 0x3f00

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 569
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    .line 570
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v4, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v4, v3

    move v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->setScaleUpParameters(FFFFFF)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    const-wide/16 v1, 0x0

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->setAnimationTimings(JI)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 578
    return-void
.end method


# virtual methods
.method protected DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 947
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 948
    .local v1, pos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 950
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 953
    .end local v0           #index:I
    .end local v1           #pos:I
    :cond_0
    return-void
.end method

.method public OnLocalItemAnimatorEnd()V
    .locals 2

    .prologue
    .line 879
    const-string v0, "TwDndListView"

    const-string v1, "OnLocalItemAnimationStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_0

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 883
    :cond_0
    return-void
.end method

.method protected checkDndGrabHandle(III)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 356
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 357
    const/4 v2, 0x1

    .line 374
    :goto_0
    return v2

    .line 360
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 362
    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 366
    if-eqz v0, :cond_1

    .line 369
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0

    .line 374
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 964
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 968
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 969
    .local v0, draggedItemX:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int v1, v2, v3

    .line 970
    .local v1, draggedItemY:I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragBitmapTop:I

    .line 972
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-eqz v2, :cond_1

    .line 987
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_0
    :goto_0
    return-void

    .line 975
    .restart local v0       #draggedItemX:I
    .restart local v1       #draggedItemY:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 977
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 978
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 980
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 981
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 983
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 931
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 933
    .local v1, pos:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    .line 934
    const/4 v2, 0x0

    .line 938
    .end local v0           #index:I
    .end local v1           #pos:I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 914
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 915
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_1

    .line 916
    add-int/lit8 p2, p1, -0x1

    .line 924
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 918
    .restart local p2
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_0

    .line 919
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_2

    .line 920
    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    goto :goto_0

    .line 921
    :cond_2
    add-int/lit8 p2, p1, -0x1

    goto :goto_0
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 474
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 435
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 461
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 448
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 490
    .local v0, action:I
    if-nez v0, :cond_0

    .line 491
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    .line 493
    :cond_0
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v3

    if-le v3, v2, :cond_9

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 496
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    .line 497
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 499
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v1

    .line 500
    .local v1, itemPosition:I
    if-ne v1, v5, :cond_1

    .line 501
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 563
    .end local v1           #itemPosition:I
    :goto_0
    return v2

    .line 504
    .restart local v1       #itemPosition:I
    :cond_1
    if-ltz v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkStartDnd(III)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 510
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 511
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 514
    :cond_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 515
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 516
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 518
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 519
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    const/high16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 520
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v3, :cond_3

    .line 521
    const-string v3, "TwDndListView"

    const-string v4, "dndListener.OnDragAndDropStart()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStart()V

    .line 525
    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    if-nez v3, :cond_5

    .line 526
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 527
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 534
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragViewAlpha(I)V

    .line 535
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 537
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 538
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 539
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    .line 541
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->startSelectHighlightingAnimation()V

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    goto/16 :goto_0

    .line 551
    :cond_7
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 552
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 553
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 554
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 555
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 556
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 557
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 559
    :cond_8
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 563
    .end local v1           #itemPosition:I
    :cond_9
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    if-nez v15, :cond_1

    .line 594
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 769
    :goto_0
    return v15

    .line 597
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 599
    .local v1, action:I
    const/4 v15, 0x2

    if-ne v1, v15, :cond_12

    .line 600
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v15

    if-nez v15, :cond_2

    .line 605
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 606
    .local v4, distance:I
    int-to-float v15, v4

    const/high16 v16, 0x4120

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    .line 607
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 610
    .end local v4           #distance:I
    :cond_2
    const/4 v8, 0x0

    .line 611
    .local v8, needUpdateDirectionalChange:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 612
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 613
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 617
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    .line 632
    :cond_3
    :goto_2
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 634
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 636
    .local v9, prevDestPosition:I
    const/4 v3, 0x0

    .line 638
    .local v3, delta:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    if-nez v15, :cond_10

    .line 639
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    if-nez v15, :cond_e

    .line 641
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 642
    .local v10, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v10, Landroid/graphics/Rect;->left:I

    .line 644
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v10, Landroid/graphics/Rect;->right:I

    .line 645
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 646
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(Landroid/graphics/Rect;Z)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 649
    .local v2, bottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 650
    .local v13, temp:Landroid/view/View;
    if-eqz v13, :cond_4

    .line 651
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v2, v15

    .line 654
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-le v15, v2, :cond_5

    .line 655
    const/high16 v15, -0x3ee0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v3, v15

    .line 686
    .end local v2           #bottom:I
    .end local v13           #temp:Landroid/view/View;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->updateDirectionChange()V

    .line 690
    :cond_6
    const/4 v7, 0x0

    .line 693
    .local v7, needToInvalidate:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-eq v9, v15, :cond_7

    .line 694
    const/4 v7, 0x1

    .line 696
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    .line 697
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->recalculateOffset(II)V

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 701
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_8

    .line 702
    const/4 v7, 0x1

    .line 705
    :cond_8
    if-eqz v3, :cond_9

    .line 706
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 707
    .local v11, savedBlockExcessScroll:Z
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 709
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 724
    .local v12, savedEnableBounce:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    .line 727
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 730
    .end local v11           #savedBlockExcessScroll:Z
    .end local v12           #savedEnableBounce:Z
    :cond_9
    if-eqz v7, :cond_a

    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 769
    .end local v3           #delta:I
    .end local v7           #needToInvalidate:Z
    .end local v8           #needUpdateDirectionalChange:Z
    .end local v9           #prevDestPosition:I
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_a
    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 615
    .restart local v8       #needUpdateDirectionalChange:Z
    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    goto/16 :goto_1

    .line 618
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    if-nez v15, :cond_d

    .line 619
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 620
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 621
    const/4 v8, 0x1

    .line 622
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    goto/16 :goto_2

    .line 624
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 625
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    .line 626
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 627
    const/4 v8, 0x1

    .line 628
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mSetAnimationCount:I

    goto/16 :goto_2

    .line 658
    .restart local v3       #delta:I
    .restart local v9       #prevDestPosition:I
    :cond_e
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 659
    .restart local v10       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 660
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v10, Landroid/graphics/Rect;->left:I

    .line 661
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v10, Landroid/graphics/Rect;->right:I

    .line 662
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 664
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(Landroid/graphics/Rect;Z)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 666
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    add-int v14, v15, v16

    .line 667
    .local v14, top:I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 668
    .restart local v13       #temp:Landroid/view/View;
    if-eqz v13, :cond_f

    .line 669
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    .line 672
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-ge v15, v14, :cond_5

    .line 673
    const/high16 v15, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v3, v15

    goto/16 :goto_3

    .line 675
    .end local v10           #rect:Landroid/graphics/Rect;
    .end local v13           #temp:Landroid/view/View;
    .end local v14           #top:I
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 676
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 677
    .restart local v10       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v10, Landroid/graphics/Rect;->left:I

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v10, Landroid/graphics/Rect;->right:I

    .line 680
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 681
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(Landroid/graphics/Rect;Z)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    goto/16 :goto_3

    .line 683
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_11
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Current DndSwitchArea is not acceptable"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 734
    .end local v3           #delta:I
    .end local v8           #needUpdateDirectionalChange:Z
    .end local v9           #prevDestPosition:I
    :cond_12
    const/4 v15, 0x1

    if-eq v1, v15, :cond_13

    const/4 v15, 0x3

    if-ne v1, v15, :cond_a

    .line 736
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 737
    .local v5, dragView:Landroid/view/View;
    if-nez v5, :cond_14

    .line 738
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 739
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragBitmapTop:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 740
    .local v6, height:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 745
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-nez v15, :cond_16

    if-eqz v6, :cond_16

    .line 746
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwDndListView;->positionDragingObject(I)V

    .line 748
    :cond_16
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 749
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 750
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 752
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 753
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 754
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    .line 755
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 756
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 757
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_17

    .line 759
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 760
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 763
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v15, :cond_18

    .line 764
    const-string v15, "TwDndListView"

    const-string v16, "dndListener.OnDragAndDropStop()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v15}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    .line 767
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4
.end method

.method public positionDragingObject(I)V
    .locals 5
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 774
    .local v0, curTime:J
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 775
    .local v2, t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    neg-int v3, p1

    invoke-virtual {v2, v4, v4, v3, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 777
    const/high16 v3, 0x3f00

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JF)V

    .line 779
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 780
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 782
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    .line 783
    return-void
.end method

.method public setDndBaseLine(I)V
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 252
    if-nez p1, :cond_1

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-ne p1, v0, :cond_0

    .line 255
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    goto :goto_0
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0

    .line 321
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 2
    .parameter "dndMode"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    .line 238
    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 242
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    goto :goto_0
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 420
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 421
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 422
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 424
    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 405
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    .line 406
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 301
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateDirectionChange()V
    .locals 4

    .prologue
    .line 581
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-ne v1, v2, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    .line 584
    .local v0, isDroppable:Z
    if-eqz v0, :cond_0

    .line 585
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 587
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    goto :goto_0
.end method
