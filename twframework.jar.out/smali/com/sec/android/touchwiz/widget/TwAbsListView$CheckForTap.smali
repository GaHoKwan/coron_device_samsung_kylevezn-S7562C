.class final Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3746
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3748
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    .line 3749
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3750
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3751
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3752
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3754
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 3755
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3756
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3757
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 3758
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3759
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    .line 3761
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3762
    .local v3, longPressTimeout:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    .line 3764
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 3765
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3766
    .local v1, d:Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 3767
    if-eqz v2, :cond_3

    .line 3768
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3775
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 3776
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3777
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    .line 3779
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3780
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3789
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_2
    :goto_1
    return-void

    .line 3770
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 3782
    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_1

    .line 3785
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_1
.end method
