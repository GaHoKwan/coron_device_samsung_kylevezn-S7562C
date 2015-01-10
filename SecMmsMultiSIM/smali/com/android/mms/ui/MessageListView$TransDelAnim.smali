.class public Lcom/android/mms/ui/MessageListView$TransDelAnim;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TransDelAnim"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerDuration:F

.field protected mHandlerInterval:I

.field protected mHandlerTick:F

.field protected mIsRunningHandler:Z

.field protected mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 624
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 616
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    .line 618
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 694
    iput-object v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    .line 625
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 626
    return-void
.end method


# virtual methods
.method public cancelTransAnimation()V
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onCancelTransDeleteAnimation()V

    .line 656
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 665
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 669
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 670
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    iput v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 672
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    div-float v0, v2, v3

    .line 673
    .local v0, input:F
    mul-float v1, v0, v0

    .line 674
    .local v1, interpolatedTime:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    .line 675
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_3

    .line 676
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 677
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 679
    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    .line 680
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    if-eqz v2, :cond_6

    .line 681
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 682
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_5

    .line 683
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 684
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 687
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onEndTransDeleteAnimation()V

    goto :goto_0
.end method

.method protected setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V
    .locals 0
    .parameter "onTransAnimationListener"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    .line 698
    return-void
.end method

.method public startTransAnimation(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 636
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onBeginTransDeleteAnimation()V

    .line 639
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 641
    int-to-float v0, p1

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    :cond_1
    return-void
.end method

.method public startTransDeleteAnimation()V
    .locals 1

    .prologue
    .line 629
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->startTransAnimation(I)V

    .line 630
    return-void
.end method

.method public stopTransAnimation()V
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 661
    return-void
.end method
