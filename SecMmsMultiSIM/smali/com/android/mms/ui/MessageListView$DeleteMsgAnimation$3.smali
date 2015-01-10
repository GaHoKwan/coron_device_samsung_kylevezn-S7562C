.class Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startAlphaDelAnim([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDeletedItem(I)Z
    .locals 3
    .parameter "i"

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, isDeleteItem:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_1

    .line 511
    const/4 v0, 0x1

    .line 515
    :cond_0
    return v0

    .line 509
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 19
    .parameter "animation"

    .prologue
    .line 434
    const/4 v13, 0x0

    .line 435
    .local v13, isItemNextEmpty:Z
    const/16 v16, 0x0

    .line 436
    .local v16, realEndY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-eqz v1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 439
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 441
    const/4 v12, 0x1

    .line 443
    .local v12, isEnd:Z
    const/4 v14, 0x0

    .line 444
    .local v14, lastIndex:I
    const/4 v11, 0x0

    .line 445
    .local v11, endY:I
    const/4 v10, 0x0

    .line 446
    .local v10, endX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 448
    .local v9, endPoint:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 450
    .local v18, viewBottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v8

    .line 451
    .local v8, allChildItemsSize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    const/4 v3, 0x0

    aget v7, v1, v3

    .line 453
    .local v7, aboveDeleteIndexes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v8, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v15

    .line 455
    .local v15, msgListItemView:Landroid/view/View;
    if-nez v15, :cond_2

    .line 453
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 446
    .end local v2           #i:I
    .end local v7           #aboveDeleteIndexes:I
    .end local v8           #allChildItemsSize:I
    .end local v9           #endPoint:I
    .end local v15           #msgListItemView:Landroid/view/View;
    .end local v18           #viewBottom:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 458
    .restart local v2       #i:I
    .restart local v7       #aboveDeleteIndexes:I
    .restart local v8       #allChildItemsSize:I
    .restart local v9       #endPoint:I
    .restart local v15       #msgListItemView:Landroid/view/View;
    .restart local v18       #viewBottom:I
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->clearAnimation()V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getVisibleChildItemViewCount()I

    move-result v1

    if-gt v2, v1, :cond_9

    .line 461
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->isDeletedItem(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    const/4 v13, 0x1

    .line 463
    goto :goto_3

    .line 466
    :cond_3
    if-lt v14, v2, :cond_4

    if-ge v2, v7, :cond_6

    .line 467
    :cond_4
    const/4 v12, 0x0

    .line 468
    const/4 v11, 0x0

    .line 469
    const/4 v10, 0x0

    move-object v1, v15

    .line 471
    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 475
    .local v17, realItemViewWithoutCheckbox:Landroid/view/View;
    if-lt v2, v7, :cond_5

    .line 476
    if-eqz v13, :cond_7

    .line 477
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v9, v1

    .line 478
    move/from16 v16, v11

    :cond_5
    :goto_4
    move-object v1, v15

    .line 485
    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v10, v1, v3

    .line 487
    move/from16 v0, v18

    if-gt v9, v0, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v9, v1

    .line 488
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    int-to-float v4, v10

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    .line 489
    add-int/lit8 v14, v14, 0x1

    .line 498
    .end local v17           #realItemViewWithoutCheckbox:Landroid/view/View;
    :cond_6
    :goto_6
    const/4 v13, 0x0

    goto :goto_3

    .line 480
    .restart local v17       #realItemViewWithoutCheckbox:Landroid/view/View;
    :cond_7
    move/from16 v11, v16

    goto :goto_4

    :cond_8
    move/from16 v9, v18

    .line 487
    goto :goto_5

    .line 492
    .end local v17           #realItemViewWithoutCheckbox:Landroid/view/View;
    :cond_9
    const/4 v12, 0x0

    .line 493
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v9, v1

    .line 494
    move/from16 v0, v18

    if-gt v9, v0, :cond_a

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v9, v1

    .line 495
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    int-to-float v4, v10

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    .line 496
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    move/from16 v9, v18

    .line 494
    goto :goto_7

    .line 501
    .end local v15           #msgListItemView:Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto/16 :goto_0

    .line 504
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget v3, v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->startTransAnimation(I)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 519
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onBeginDeleteMsgAnimation()V

    .line 524
    :cond_0
    return-void
.end method
