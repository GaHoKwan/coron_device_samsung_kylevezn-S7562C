.class public Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteMsgAnimation"
.end annotation


# instance fields
.field protected mIsAlphaAnim:Z

.field protected mIsTransferAnim:Z

.field protected mOrginalDelItems:[I

.field protected mStepForDelAnim:I

.field protected mTimeIntervalForTransfer:I

.field protected mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

.field protected mVisibleDelItems:[I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 272
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    .line 260
    iput v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 262
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    .line 264
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    .line 266
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 270
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    .line 273
    new-instance v0, Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;Lcom/android/mms/ui/MessageListView;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V

    .line 306
    return-void
.end method


# virtual methods
.method protected afterDelAnim()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 541
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 542
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    .line 543
    return-void
.end method

.method protected hideSelectedChildItems()V
    .locals 4

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-nez v2, :cond_1

    .line 602
    :cond_0
    return-void

    .line 597
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 599
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 600
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readyDeleteMsgAnimation([I)V
    .locals 4
    .parameter "selectedIndexes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 362
    :goto_0
    return-void

    .line 356
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 360
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 361
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    goto :goto_0
.end method

.method public runningDeleteMsgAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 327
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 328
    iput v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v2, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startDeleteMsgAnimation()V

    .line 332
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0

    .line 333
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onEndDeleteMsgAnimation()V

    .line 338
    :cond_3
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0

    .line 339
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v3, :cond_5

    .line 340
    iput v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    goto :goto_0

    .line 343
    :cond_5
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v4, :cond_0

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0
.end method

.method protected sortVisibleDelItemsInAscending([I)[I
    .locals 13
    .parameter "delItems"

    .prologue
    .line 547
    array-length v11, p1

    new-array v6, v11, [I

    .line 548
    .local v6, temp1:[I
    const/4 v9, 0x0

    .line 550
    .local v9, visibleItemCount:I
    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 551
    .local v8, totalItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v11, p1

    if-ge v0, v11, :cond_1

    .line 552
    aget v11, p1, v0

    if-ltz v11, :cond_0

    aget v11, p1, v0

    if-ge v11, v8, :cond_0

    .line 553
    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p1, v0

    if-gt v11, v12, :cond_0

    aget v11, p1, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_0

    .line 555
    add-int/lit8 v10, v9, 0x1

    .end local v9           #visibleItemCount:I
    .local v10, visibleItemCount:I
    aget v11, p1, v0

    aput v11, v6, v9

    move v9, v10

    .line 551
    .end local v10           #visibleItemCount:I
    .restart local v9       #visibleItemCount:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    .line 560
    add-int/lit8 v2, v0, 0x1

    .local v2, j:I
    :goto_2
    if-ge v2, v9, :cond_3

    .line 561
    aget v11, v6, v0

    aget v12, v6, v2

    if-le v11, v12, :cond_2

    .line 562
    aget v5, v6, v0

    .line 563
    .local v5, temp:I
    aget v11, v6, v2

    aput v11, v6, v0

    .line 564
    aput v5, v6, v2

    .line 560
    .end local v5           #temp:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 559
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    .end local v2           #j:I
    :cond_4
    array-length v11, p1

    new-array v7, v11, [I

    .line 570
    .local v7, temp2:[I
    const/4 v3, 0x0

    .line 572
    .local v3, size2:I
    const/4 v0, 0x0

    move v4, v3

    .end local v3           #size2:I
    .local v4, size2:I
    :goto_3
    if-ge v0, v9, :cond_7

    .line 573
    add-int/lit8 v3, v4, 0x1

    .end local v4           #size2:I
    .restart local v3       #size2:I
    aget v11, v6, v0

    aput v11, v7, v4

    .line 574
    add-int/lit8 v2, v0, 0x1

    .restart local v2       #j:I
    :goto_4
    if-ge v2, v9, :cond_5

    .line 575
    aget v11, v6, v0

    aget v12, v6, v2

    if-eq v11, v12, :cond_6

    .line 576
    add-int/lit8 v0, v2, -0x1

    .line 572
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #size2:I
    .restart local v4       #size2:I
    goto :goto_3

    .line 574
    .end local v4           #size2:I
    .restart local v3       #size2:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 582
    .end local v2           #j:I
    .end local v3           #size2:I
    .restart local v4       #size2:I
    :cond_7
    if-nez v4, :cond_9

    .line 583
    const/4 v1, 0x0

    .line 590
    :cond_8
    return-object v1

    .line 585
    :cond_9
    new-array v1, v4, [I

    .line 586
    .local v1, itemsAsVisible:[I
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_8

    .line 587
    aget v11, v7, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v1, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected startAlphaDelAnim([I)V
    .locals 12
    .parameter "delItemsOnlyVisible"

    .prologue
    const v2, 0x3e4ccccd

    const/high16 v1, 0x3f80

    const/4 v5, 0x1

    .line 410
    const/4 v10, 0x0

    .line 411
    .local v10, delAnimSet:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AnimationSet;

    .end local v10           #delAnimSet:Landroid/view/animation/AnimationSet;
    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 412
    .restart local v10       #delAnimSet:Landroid/view/animation/AnimationSet;
    if-eqz v10, :cond_0

    .line 413
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->reset()V

    .line 415
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f00

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 417
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 418
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 420
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 421
    .local v9, alpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 422
    invoke-virtual {v9, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 424
    if-eqz v10, :cond_3

    .line 425
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 428
    invoke-virtual {v10, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 429
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 431
    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 529
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, p1

    if-ge v11, v1, :cond_3

    .line 530
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 531
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_1

    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 529
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 537
    .end local v11           #i:I
    :cond_3
    return-void
.end method

.method protected startDeleteMsgAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 368
    .local v2, size:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 406
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 380
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_3

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_0

    .line 379
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->sortVisibleDelItemsInAscending([I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    .line 389
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->addChildViewBelowWithInvisible([I)V

    .line 391
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v3, v3

    if-gez v3, :cond_6

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_0

    .line 396
    :cond_6
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 397
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 399
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 401
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 5

    .prologue
    .line 310
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 312
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 313
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 314
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 315
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-eqz v3, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 323
    :cond_2
    :goto_1
    return-void

    .line 321
    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    if-eqz v3, :cond_2

    .line 322
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->cancelTransAnimation()V

    goto :goto_1
.end method
