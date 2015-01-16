.class Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 5671
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 5673
    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 5680
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 5862
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyVerticalEdgeReached(III)V

    .line 5863
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 5864
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5866
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5867
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 5868
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 5869
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 5879
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 5880
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5881
    return-void

    .line 5871
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 5874
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5875
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5876
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 5723
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5730
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5731
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5733
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5734
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5737
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5738
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 5740
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 5743
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v11, :pswitch_data_0

    .line 5855
    :cond_0
    :goto_0
    return-void

    .line 5748
    :pswitch_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 5749
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto :goto_0

    .line 5753
    :cond_2
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v7, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 5754
    .local v7, prevBounceExtent:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 5756
    .local v8, scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v5

    .line 5757
    .local v5, more:Z
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v9

    .line 5763
    .local v9, y:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v11, v9

    .line 5767
    .local v1, delta:I
    if-lez v1, :cond_7

    .line 5770
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5771
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5772
    .local v2, firstView:Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5775
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5789
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11, v1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_3

    move v0, v10

    .line 5791
    .local v0, atEnd:Z
    :cond_3
    cmpg-float v11, v7, v13

    if-gtz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v11, v11, v7

    if-ltz v11, :cond_5

    :cond_4
    cmpl-float v11, v7, v13

    if-ltz v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v11, v11, v7

    if-lez v11, :cond_6

    .line 5794
    :cond_5
    const/4 v5, 0x0

    .line 5797
    :cond_6
    if-eqz v5, :cond_8

    if-nez v0, :cond_8

    .line 5798
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 5799
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 5800
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v10, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5779
    .end local v0           #atEnd:Z
    :cond_7
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 5780
    .local v6, offsetToLast:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v6

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5782
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5783
    .local v4, lastView:Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5786
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    neg-int v11, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 5801
    .end local v4           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_8
    if-eqz v0, :cond_a

    .line 5802
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    .line 5816
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    if-nez v11, :cond_0

    .line 5817
    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity(Z)F

    move-result v3

    .line 5819
    .local v3, lastFlingSpeed:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 5825
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v10, v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_0

    .line 5827
    :cond_9
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v10, v10, v13

    if-eqz v10, :cond_0

    .line 5833
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v10, v13}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_0

    .line 5838
    .end local v3           #lastFlingSpeed:F
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 5743
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 5691
    if-gez p1, :cond_0

    move v2, v6

    .line 5692
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 5693
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 5695
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5697
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5705
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 5691
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 5888
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 5890
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5891
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5892
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5894
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 5711
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 5712
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 5713
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 5714
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5716
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5717
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 5711
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5905
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5906
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5907
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5908
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5914
    :goto_0
    return-void

    .line 5910
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5911
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
