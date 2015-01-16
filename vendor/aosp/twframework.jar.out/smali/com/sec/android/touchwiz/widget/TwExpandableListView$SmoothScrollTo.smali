.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmoothScrollTo"
.end annotation


# static fields
.field static final SCROLL_TO_ADJUST_BOTTOM:I = 0x0

.field static final SCROLL_TO_ADJUST_EXPAND:I = 0x1

.field static final SCROLL_TO_COLLAPSE_ALL:I = 0x3

.field static final SCROLL_TO_EXPAND_ALL:I = 0x2


# instance fields
.field count:I

.field mDuration:I

.field mFinishAnimation:Z

.field mInterpolator:Landroid/view/animation/LinearInterpolator;

.field mOffset:I

.field mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

.field mScrollMode:I

.field mStartTime:J

.field moffsetMovedTillNow:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3657
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3631
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 3633
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 3635
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    .line 3637
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    .line 3639
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mStartTime:J

    .line 3641
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    .line 3643
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    .line 3653
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    .line 3655
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    .line 3658
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 3659
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    .line 3660
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    .line 3661
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    .line 3662
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    .line 3663
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    .line 3664
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3815
    return-void
.end method

.method public endScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 3750
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->cancel()V

    .line 3751
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    packed-switch v0, :pswitch_data_0

    .line 3805
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3806
    const-string v0, "TWExpandableList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WRONG mScrollMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    :cond_0
    :goto_0
    return-void

    .line 3753
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3754
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 3755
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 3756
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 3759
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 3760
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 3768
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3769
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 3773
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v0, :cond_3

    .line 3774
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3775
    const-string v0, "TWExpandableList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something wrong in SCROLL_TO_EXPAND_ALL mFirstPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 3781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3784
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3785
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto/16 :goto_0

    .line 3789
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v0, :cond_5

    .line 3790
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3791
    const-string v0, "TWExpandableList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something wrong in SCROLL_TO_COLLAPSE_ALL mFirstPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 3797
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3800
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3801
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto/16 :goto_0

    .line 3751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 3709
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 3715
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    mul-int/lit8 v5, v5, 0x1

    int-to-long v2, v5

    .line 3717
    .local v2, elapsedTime:J
    long-to-float v5, v2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 3718
    .local v4, timeFraction:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v5, :cond_2

    .line 3719
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    if-nez v5, :cond_1

    .line 3720
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    sub-int v0, v5, v6

    .line 3721
    .local v0, currentOffset:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    .line 3723
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollExpandableList(I)Z

    .line 3725
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 3727
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    .line 3746
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3747
    .end local v0           #currentOffset:I
    :goto_1
    return-void

    .line 3730
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->endScroll()V

    goto :goto_1

    .line 3735
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v5, v4}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v1

    .line 3736
    .local v1, distanceFraction:F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    sub-int v0, v5, v6

    .line 3738
    .restart local v0       #currentOffset:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollExpandableList(I)Z

    .line 3740
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    .line 3742
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V
    .locals 5
    .parameter "mode"
    .parameter "offset"
    .parameter "pos"
    .parameter "duration"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 3668
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->cancel()V

    .line 3670
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    .line 3671
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    .line 3672
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    .line 3673
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    .line 3674
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mStartTime:J

    .line 3675
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    .line 3677
    packed-switch p1, :pswitch_data_0

    .line 3701
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3702
    const-string v0, "TWExpandableList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***********SmoothScrollTo start end list first pos is************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3706
    return-void

    .line 3679
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    .line 3680
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    .line 3681
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 3682
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3683
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 3686
    :pswitch_1
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    .line 3687
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    .line 3688
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 3691
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    .line 3692
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 3696
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    .line 3697
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 3677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
