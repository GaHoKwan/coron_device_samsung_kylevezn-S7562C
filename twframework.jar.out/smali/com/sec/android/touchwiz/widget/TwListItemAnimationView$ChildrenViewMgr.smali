.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildrenViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildViewMgr:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mOrginalChildCount:I

.field protected mWidthMeasureSpec:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 531
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    .line 527
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mOrginalChildCount:I

    .line 529
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mWidthMeasureSpec:I

    .line 532
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    .line 533
    return-void
.end method


# virtual methods
.method protected makeChildView(Landroid/view/View;IIZ)Landroid/view/View;
    .locals 11
    .parameter "previousView"
    .parameter "index"
    .parameter "position"
    .parameter "isDown"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 687
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-interface {v5, p3, v6, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 688
    .local v4, thisView:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCacheColorHint()I

    move-result v5

    if-eqz v5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 692
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 693
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v3, :cond_1

    .line 694
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v3, v10, v5, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 696
    .restart local v3       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mWidthMeasureSpec:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getListPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 701
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 703
    .local v2, lpHeight:I
    if-lez v2, :cond_2

    .line 704
    const/high16 v5, 0x4000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 709
    .local v0, childHeightSpec:I
    :goto_0
    if-eqz p4, :cond_3

    .line 710
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 714
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    #calls: Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v5, v4, v10, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->access$200(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 723
    :goto_1
    return-object v4

    .line 706
    .end local v0           #childHeightSpec:I
    :cond_2
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0

    .line 716
    :cond_3
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 720
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    #calls: Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v5, v4, v9, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->access$300(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1
.end method

.method public userAddViewAbove()V
    .locals 19

    .prologue
    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v12

    .line 602
    .local v12, size:I
    if-nez v12, :cond_1

    .line 641
    :cond_0
    return-void

    .line 606
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRemoveAllChild()V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 609
    .local v16, viewTop:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v10

    .line 610
    .local v10, positionTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 611
    .local v15, viewBottom:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v9

    .line 613
    .local v9, positionBottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mOrginalChildCount:I

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 616
    .local v13, sizeScreen:I
    const/4 v14, 0x0

    .line 617
    .local v14, sizeTop:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v13, :cond_2

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    move-object/from16 v17, v0

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    add-int v4, v14, v8

    add-int v5, v10, v8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;IIZLandroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 622
    :cond_2
    if-lez v10, :cond_0

    .line 624
    move-object/from16 v11, v16

    .line 625
    .local v11, previousView:Landroid/view/View;
    const/4 v7, 0x0

    .line 626
    .local v7, thisView:Landroid/view/View;
    sub-int v2, v10, v13

    if-ltz v2, :cond_3

    move v14, v13

    .line 628
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_0

    .line 629
    add-int/lit8 v2, v14, -0x1

    sub-int v4, v2, v8

    .line 630
    .local v4, index:I
    add-int/lit8 v2, v10, -0x1

    sub-int v5, v2, v8

    .line 632
    .local v5, position:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v5, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->makeChildView(Landroid/view/View;IIZ)Landroid/view/View;

    move-result-object v7

    .line 633
    if-nez v7, :cond_4

    .line 628
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v4           #index:I
    .end local v5           #position:I
    :cond_3
    move v14, v10

    .line 626
    goto :goto_1

    .line 637
    .restart local v4       #index:I
    .restart local v5       #position:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    const/4 v6, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;IIZLandroid/view/View;)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 638
    move-object v11, v7

    goto :goto_3
.end method

.method public userAddViewBelow()V
    .locals 18

    .prologue
    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v13

    .line 646
    .local v13, size:I
    if-nez v13, :cond_1

    .line 683
    :cond_0
    return-void

    .line 650
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRemoveAllChild()V

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 653
    .local v17, viewTop:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v11

    .line 654
    .local v11, positionTop:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 655
    .local v16, viewBottom:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v10

    .line 657
    .local v10, positionBottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mOrginalChildCount:I

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 660
    .local v15, sizeScreen:I
    const/4 v14, 0x0

    .line 661
    .local v14, sizeBottom:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v15, :cond_2

    .line 662
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    add-int v4, v11, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    :cond_2
    add-int/lit8 v1, v13, -0x1

    if-ge v10, v1, :cond_0

    .line 667
    move-object/from16 v12, v16

    .line 668
    .local v12, previousView:Landroid/view/View;
    const/4 v9, 0x0

    .line 669
    .local v9, thisView:Landroid/view/View;
    add-int/lit8 v1, v13, -0x1

    sub-int/2addr v1, v10

    if-lt v1, v15, :cond_3

    move v14, v15

    .line 671
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v14, :cond_0

    .line 672
    add-int v6, v15, v3

    .line 673
    .local v6, index:I
    add-int/lit8 v1, v10, 0x1

    add-int v7, v1, v3

    .line 674
    .local v7, position:I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6, v7, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->makeChildView(Landroid/view/View;IIZ)Landroid/view/View;

    move-result-object v9

    .line 675
    if-nez v9, :cond_4

    .line 671
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 669
    .end local v6           #index:I
    .end local v7           #position:I
    :cond_3
    add-int/lit8 v1, v13, -0x1

    sub-int v14, v1, v10

    goto :goto_1

    .line 679
    .restart local v6       #index:I
    .restart local v7       #position:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    const/4 v8, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 680
    move-object v12, v9

    goto :goto_3
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 1
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildAt(I)Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    move-result-object v0

    .line 739
    .local v0, childView:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userCalculateOffsetTransfer(F)V

    .line 742
    :cond_0
    return-void
.end method

.method public userGetChildAt(I)Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-object v1

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v0

    .line 582
    .local v0, size:I
    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    goto :goto_0
.end method

.method public userGetChildCount()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public userGetChildViewAt(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-object v1

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v0

    .line 569
    .local v0, size:I
    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    .line 573
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildAt(I)Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public userGetOrginalChildCount()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mOrginalChildCount:I

    return v0
.end method

.method public userOffsetAllChildTopAndBottom(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v1

    .line 591
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 592
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildAt(I)Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    move-result-object v0

    .line 593
    .local v0, child:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userOffsetChildTopAndBottom(I)V

    .line 591
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    .end local v0           #child:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    :cond_1
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRemoveAllChild()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    .line 540
    :cond_0
    return-void
.end method

.method public userRemoveAllChild()V
    .locals 4

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v2

    .line 544
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 545
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildAt(I)Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    move-result-object v0

    .line 546
    .local v0, childView:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userRelease()V

    .line 544
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v0           #childView:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mChildViewMgr:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 553
    return-void
.end method

.method public userSetTransfer(IFF)V
    .locals 1
    .parameter "index"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildAt(I)Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;

    move-result-object v0

    .line 732
    .local v0, childView:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userSetTransfer(FF)V

    .line 735
    :cond_0
    return-void
.end method

.method public userSetWidthMeasureSpec(I)V
    .locals 0
    .parameter "widthMeasureSpec"

    .prologue
    .line 727
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->mWidthMeasureSpec:I

    .line 728
    return-void
.end method
