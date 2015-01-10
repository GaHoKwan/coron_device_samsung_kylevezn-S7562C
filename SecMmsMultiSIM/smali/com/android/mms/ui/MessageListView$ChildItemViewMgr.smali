.class public Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildItemViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildItemViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleChildCount:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 1
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    .line 708
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 709
    return-void
.end method


# virtual methods
.method public addChildViewBelowWithInvisible([I)V
    .locals 26
    .parameter "orginalIndexes"

    .prologue
    .line 754
    const/4 v12, 0x0

    .line 755
    .local v12, addedChildViewCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v19

    .line 756
    .local v19, size:I
    if-nez v19, :cond_1

    .line 813
    :cond_0
    return-void

    .line 759
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v16

    .line 762
    .local v16, positionTop:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 763
    .local v25, viewBottom:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v15

    .line 765
    .local v15, positionBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    .line 766
    const/16 v23, 0x0

    .line 767
    .local v23, totalRemainViewSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v24

    .line 768
    .local v24, totalScreenSize:I
    move/from16 v18, v15

    .line 769
    .local v18, realUnderPosition:I
    const/4 v13, 0x0

    .line 771
    .local v13, isChecked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    .line 772
    .local v21, sizeScreen:I
    const/16 v20, 0x0

    .line 773
    .local v20, sizeOfInvisibleBelowItems:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move/from16 v0, v21

    if-ge v5, v0, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v3, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    add-int v6, v16, v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v10, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 777
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v14, v3, :cond_3

    .line 778
    aget v3, p1, v14

    if-ne v5, v3, :cond_2

    const/4 v13, 0x1

    .line 777
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 780
    :cond_3
    if-nez v13, :cond_4

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v23, v23, v3

    .line 782
    :cond_4
    const/4 v13, 0x0

    .line 773
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 786
    .end local v14           #j:I
    :cond_5
    add-int/lit8 v3, v19, -0x1

    if-ge v15, v3, :cond_0

    .line 788
    move-object/from16 v17, v25

    .line 789
    .local v17, previousView:Landroid/view/View;
    const/4 v11, 0x0

    .line 791
    .local v11, thisView:Landroid/view/View;
    add-int/lit8 v3, v19, -0x1

    sub-int v20, v3, v15

    .line 792
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    .line 793
    add-int v8, v21, v5

    .line 794
    .local v8, index:I
    add-int/lit8 v3, v15, 0x1

    add-int v9, v3, v5

    .line 795
    .local v9, position:I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->makeChildView(Landroid/view/View;II[I)Landroid/view/View;

    move-result-object v11

    .line 796
    if-nez v11, :cond_7

    .line 792
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 799
    :cond_7
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v21, 0x2

    if-ge v12, v3, :cond_0

    .line 800
    add-int/lit8 v12, v12, 0x1

    .line 801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v6, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v10, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v18, v18, 0x1

    .line 803
    move-object/from16 v17, v11

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 806
    .local v22, tmpView:Landroid/view/View;
    if-eqz v22, :cond_6

    .line 807
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v23, v23, v3

    goto :goto_3
.end method

.method public calculateOffsetForTransDelAnim(IF)V
    .locals 1
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 862
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userCalculateOffsetTransfer(IF)V

    .line 864
    :cond_0
    return-void
.end method

.method public getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    if-gtz v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-object v1

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 746
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    .line 749
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    goto :goto_0
.end method

.method public getChildItemCountWithAll()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getChildItemViewAt(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 732
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 734
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gt v0, p1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-object v1

    .line 737
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleChildItemViewCount()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    return v0
.end method

.method public isAlignLeft(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    return v0
.end method

.method protected makeChildView(Landroid/view/View;II[I)Landroid/view/View;
    .locals 11
    .parameter "previousView"
    .parameter "index"
    .parameter "position"
    .parameter "orginalIndexes"

    .prologue
    .line 817
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p4

    if-ge v2, v6, :cond_1

    .line 818
    aget v6, p4, v2

    if-ne p3, v6, :cond_0

    const/4 v5, 0x0

    .line 850
    :goto_1
    return-object v5

    .line 817
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v6, p3, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 823
    .local v5, thisView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_2

    .line 824
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 826
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 827
    .local v4, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v4, :cond_3

    .line 828
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    .end local v4           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 830
    .restart local v4       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 835
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getListPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 837
    .local v1, childWidthSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 839
    .local v3, lpHeight:I
    if-lez v3, :cond_4

    .line 840
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 844
    .local v0, childHeightSpec:I
    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    .line 845
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 848
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v7, -0x1

    #calls: Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v6, v5, v7, v4}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto/16 :goto_1

    .line 842
    .end local v0           #childHeightSpec:I
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_2
.end method

.method public removeChildWithAll()V
    .locals 4

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    .line 713
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 714
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 715
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->releaseChildView()V

    .line 713
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v0           #childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 721
    return-void
.end method

.method public userSetTransfer(IFFFF)V
    .locals 1
    .parameter "index"
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 854
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 855
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetTransfer(FFFF)V

    .line 857
    :cond_0
    return-void
.end method