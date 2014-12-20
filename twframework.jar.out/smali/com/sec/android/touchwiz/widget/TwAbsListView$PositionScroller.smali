.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 6213
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6214
    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 6215
    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 6388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 6560
    :cond_0
    :goto_0
    return-void

    .line 6392
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 6393
    .local v16, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6395
    .local v6, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    goto :goto_0

    .line 6397
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    .line 6398
    .local v13, lastViewIndex:I
    add-int v9, v6, v13

    .line 6400
    .local v9, lastPos:I
    if-ltz v13, :cond_0

    .line 6404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_2

    .line 6406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6410
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6411
    .local v10, lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 6412
    .local v12, lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6413
    .local v15, lastViewTop:I
    sub-int v14, v16, v15

    .line 6414
    .local v14, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v9, v0, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 6417
    .local v5, extraScroll:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v12, v14

    add-int v28, v28, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6420
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_0

    .line 6422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6414
    .end local v5           #extraScroll:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 6428
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_1
    const/16 v21, 0x1

    .line 6429
    .local v21, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 6431
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_0

    add-int v27, v6, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 6435
    add-int/lit8 v18, v6, 0x1

    .line 6437
    .local v18, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 6439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6443
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 6444
    .local v19, nextView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 6445
    .local v20, nextViewHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    .line 6446
    .local v22, nextViewTop:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 6447
    .restart local v5       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 6448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int v29, v20, v22

    sub-int v29, v29, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6451
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6455
    :cond_5
    move/from16 v0, v22

    if-le v0, v5, :cond_0

    .line 6456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 6463
    .end local v3           #childCount:I
    .end local v5           #extraScroll:I
    .end local v18           #nextPos:I
    .end local v19           #nextView:Landroid/view/View;
    .end local v20           #nextViewHeight:I
    .end local v21           #nextViewIndex:I
    .end local v22           #nextViewTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v6, v0, :cond_6

    .line 6465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6469
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6470
    .local v7, firstView:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 6473
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 6474
    .local v8, firstViewTop:I
    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 6476
    .restart local v5       #extraScroll:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6478
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v6, v0, :cond_0

    .line 6481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6474
    .end local v5           #extraScroll:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 6487
    .end local v7           #firstView:Landroid/view/View;
    .end local v8           #firstViewTop:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x2

    .line 6488
    .restart local v13       #lastViewIndex:I
    if-ltz v13, :cond_0

    .line 6491
    add-int v9, v6, v13

    .line 6493
    .restart local v9       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_8

    .line 6495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6499
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6500
    .restart local v10       #lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 6501
    .restart local v12       #lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6502
    .restart local v15       #lastViewTop:I
    sub-int v14, v16, v15

    .line 6503
    .restart local v14       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_9

    .line 6505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    sub-int v28, v14, v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6508
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v27, v0

    sub-int v2, v16, v27

    .line 6509
    .local v2, bottom:I
    add-int v11, v15, v12

    .line 6510
    .local v11, lastViewBottom:I
    if-le v2, v11, :cond_0

    .line 6511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v2, v11

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 6518
    .end local v2           #bottom:I
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v11           #lastViewBottom:I
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v0, v6, :cond_a

    .line 6520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6524
    :cond_a
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 6527
    .restart local v3       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v23, v0

    .line 6528
    .local v23, position:I
    add-int v27, v6, v3

    add-int/lit8 v9, v27, -0x1

    .line 6530
    .restart local v9       #lastPos:I
    const/16 v26, 0x0

    .line 6531
    .local v26, viewTravelCount:I
    move/from16 v0, v23

    if-ge v0, v6, :cond_c

    .line 6532
    sub-int v27, v6, v23

    add-int/lit8 v26, v27, 0x1

    .line 6538
    :cond_b
    :goto_3
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v3

    move/from16 v28, v0

    div-float v24, v27, v28

    .line 6540
    .local v24, screenTravelCount:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 6541
    .local v17, modifier:F
    move/from16 v0, v23

    if-ge v0, v6, :cond_d

    .line 6542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6533
    .end local v17           #modifier:F
    .end local v24           #screenTravelCount:F
    :cond_c
    move/from16 v0, v23

    if-le v0, v9, :cond_b

    .line 6534
    sub-int v26, v23, v9

    goto :goto_3

    .line 6544
    .restart local v17       #modifier:F
    .restart local v24       #screenTravelCount:F
    :cond_d
    move/from16 v0, v23

    if-le v0, v9, :cond_e

    .line 6545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6549
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v6

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v25

    .line 6550
    .local v25, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v27, v0

    sub-int v4, v25, v27

    .line 6551
    .local v4, distance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v4

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 6395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method start(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 6253
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6255
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6256
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 6259
    .local v1, lastPos:I
    if-gt p1, v0, :cond_1

    .line 6260
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 6261
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 6270
    :goto_0
    if-lez v2, :cond_2

    .line 6271
    div-int v3, v5, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 6275
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 6276
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 6277
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6279
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6280
    .end local v2           #viewTravelCount:I
    :cond_0
    return-void

    .line 6262
    :cond_1
    if-lt p1, v1, :cond_0

    .line 6263
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 6264
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 6273
    :cond_2
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 6283
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6285
    if-ne p2, v9, :cond_1

    .line 6286
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 6343
    :cond_0
    :goto_0
    return-void

    .line 6290
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6291
    .local v3, firstPos:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 6294
    .local v4, lastPos:I
    if-gt p1, v3, :cond_3

    .line 6295
    sub-int v1, v4, p2

    .line 6296
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_0

    .line 6302
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 6303
    .local v5, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 6304
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_2

    .line 6305
    move v6, v2

    .line 6306
    .local v6, viewTravelCount:I
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 6333
    .end local v1           #boundPosFromLast:I
    :goto_1
    if-lez v6, :cond_5

    .line 6334
    div-int v7, v10, v6

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 6338
    :goto_2
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 6339
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 6340
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6342
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6308
    .end local v6           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_2
    move v6, v5

    .line 6309
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6311
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    .end local v6           #viewTravelCount:I
    :cond_3
    if-lt p1, v4, :cond_0

    .line 6312
    sub-int v0, p2, v3

    .line 6313
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_0

    .line 6319
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 6320
    .restart local v5       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 6321
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_4

    .line 6322
    move v6, v2

    .line 6323
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6325
    .end local v6           #viewTravelCount:I
    :cond_4
    move v6, v5

    .line 6326
    .restart local v6       #viewTravelCount:I
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6336
    .end local v0           #boundPosFromFirst:I
    :cond_5
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithDuration(II)V
    .locals 5
    .parameter "position"
    .parameter "duration"

    .prologue
    const/4 v4, -0x1

    .line 6223
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6225
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6226
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 6229
    .local v1, lastPos:I
    if-gt p1, v0, :cond_1

    .line 6230
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 6231
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 6240
    :goto_0
    if-lez v2, :cond_2

    .line 6241
    div-int v3, p2, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 6245
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 6246
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 6247
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6249
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6250
    .end local v2           #viewTravelCount:I
    :cond_0
    return-void

    .line 6232
    :cond_1
    if-lt p1, v1, :cond_0

    .line 6233
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 6234
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 6243
    :cond_2
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method startWithOffset(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 6346
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 6347
    return-void
.end method

.method startWithOffset(III)V
    .locals 9
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v8, -0x1

    .line 6350
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6352
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 6353
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    .line 6354
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 6355
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6356
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 6358
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v1, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6359
    .local v1, firstPos:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6360
    .local v0, childCount:I
    add-int v6, v1, v0

    add-int/lit8 v2, v6, -0x1

    .line 6363
    .local v2, lastPos:I
    if-ge p1, v1, :cond_0

    .line 6364
    sub-int v5, v1, p1

    .line 6375
    .local v5, viewTravelCount:I
    :goto_0
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 6376
    .local v3, screenTravelCount:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    int-to-float v6, p3

    mul-float/2addr v6, v3

    float-to-int v6, v6

    :goto_1
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 6378
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6380
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6381
    .end local v3           #screenTravelCount:F
    .end local v5           #viewTravelCount:I
    :goto_2
    return-void

    .line 6365
    :cond_0
    if-le p1, v2, :cond_1

    .line 6366
    sub-int v5, p1, v2

    .restart local v5       #viewTravelCount:I
    goto :goto_0

    .line 6369
    .end local v5           #viewTravelCount:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v7, p1, v1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 6370
    .local v4, targetTop:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v7, v4, p2

    invoke-virtual {v6, v7, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_2

    .line 6376
    .end local v4           #targetTop:I
    .restart local v3       #screenTravelCount:F
    .restart local v5       #viewTravelCount:I
    :cond_2
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 6384
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6385
    return-void
.end method
