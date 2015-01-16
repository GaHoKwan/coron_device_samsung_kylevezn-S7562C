.class Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
.super Ljava/lang/Object;
.source "TwDndLinearScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DndAnimator"
.end annotation


# instance fields
.field private mFinished:Z

.field private mRect:Landroid/graphics/Rect;

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

.field private mView:Landroid/view/View;

.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mRect:Landroid/graphics/Rect;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mFinished:Z

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mView:Landroid/view/View;

    .line 337
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    .line 338
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mFinished:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 364
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    .line 365
    .local v1, scroller:Lcom/sec/android/touchwiz/widget/TwScroller;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwScroller;->computeScrollOffset()Z

    move-result v0

    .line 366
    .local v0, isRunnging:Z
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwScroller;->getCurrX()I

    move-result v3

    .line 367
    .local v3, x:I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwScroller;->getCurrY()I

    move-result v4

    .line 368
    .local v4, y:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mView:Landroid/view/View;

    .line 369
    .local v2, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 371
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 372
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v5, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 378
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 375
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 376
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mFinished:Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;III)V
    .locals 7
    .parameter "view"
    .parameter "nextX"
    .parameter "nextY"
    .parameter "duration"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->stop()V

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mFinished:Z

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mView:Landroid/view/View;

    .line 346
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mRect:Landroid/graphics/Rect;

    .line 347
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int v3, p2, v3

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int v4, p3, v4

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwScroller;->startScroll(IIIII)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->this$1:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 355
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwScroller;->forceFinished(Z)V

    .line 356
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->mFinished:Z

    .line 357
    return-void
.end method
