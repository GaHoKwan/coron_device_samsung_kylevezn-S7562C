.class Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "itemViewType"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    .line 791
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 792
    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    .line 793
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    #calls: Lcom/android/contacts/list/ContactTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 794
    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZZ)V
    .locals 10
    .parameter "entry"
    .parameter "childIndex"
    .parameter "isLastRow"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-gt v6, p2, :cond_5

    .line 822
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileView;

    .line 823
    .local v0, contactTile:Lcom/android/contacts/list/ContactTileView;
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$700(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v6, v7, :cond_0

    .line 824
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 825
    const v6, 0x7f09001d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 826
    .local v4, sweepListView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 827
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 832
    .end local v4           #sweepListView:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 835
    .local v3, resources:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$700(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v6, v7, :cond_4

    .line 836
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 850
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V

    .line 852
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$1000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactTileView;->setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V

    .line 853
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 858
    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #resources:Landroid/content/res/Resources;
    :goto_1
    invoke-virtual {v0, p4}, Lcom/android/contacts/list/ContactTileView;->setVoLTEEnabled(Z)V

    .line 859
    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    invoke-virtual {v0, p1, v6}, Lcom/android/contacts/list/ContactTileView;->loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;I)V

    .line 861
    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v6, :pswitch_data_0

    .line 878
    :cond_1
    :goto_2
    :pswitch_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$700(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v6, v7, :cond_3

    .line 880
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    #calls: Lcom/android/contacts/list/ContactTileAdapter;->isSelectedUri(Landroid/net/Uri;)Z
    invoke-static {v6, v7}, Lcom/android/contacts/list/ContactTileAdapter;->access$1200(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Z

    move-result v1

    .line 882
    .local v1, isSelected:Z
    if-eqz v1, :cond_2

    .line 883
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #setter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v6, v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 885
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v6, v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 888
    const v6, 0x7f090181

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 889
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 890
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$1300(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 891
    const v6, 0x7f0204c8

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 892
    const v6, 0x7f090180

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f02073a

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 908
    .end local v1           #isSelected:Z
    .end local v5           #view:Landroid/view/View;
    :cond_3
    :goto_3
    return-void

    .line 840
    .restart local v3       #resources:Landroid/content/res/Resources;
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 843
    .restart local v2       #params:Landroid/widget/FrameLayout$LayoutParams;
    const v6, 0x7f0c002b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    const v8, 0x7f0c002b

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 855
    .end local v0           #contactTile:Lcom/android/contacts/list/ContactTileView;
    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileView;

    .restart local v0       #contactTile:Lcom/android/contacts/list/ContactTileView;
    goto/16 :goto_1

    .line 865
    :pswitch_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt p2, v6, :cond_6

    const/4 v6, 0x0

    move v7, v6

    :goto_4
    if-eqz p3, :cond_7

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v0, v8, v9, v7, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$1100(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v6

    move v7, v6

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$1100(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v6

    goto :goto_5

    .line 870
    :pswitch_2
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileAdapter;->access$700(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v6, v7, :cond_1

    .line 871
    if-eqz p3, :cond_8

    const/16 v6, 0x8

    :goto_6
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 896
    .restart local v1       #isSelected:Z
    .restart local v5       #view:Landroid/view/View;
    :cond_9
    const v6, 0x7f0204c7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 897
    const-string v6, "DEFAULT"

    const-string v7, "TABLET_BLACK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 898
    const v6, 0x7f090180

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020738

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 901
    :cond_a
    const v6, 0x7f090180

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020739

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onLayoutForTiles(IIII)V
    .locals 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 924
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 925
    .local v5, count:I
    sub-int v8, p3, p1

    .line 927
    .local v8, width:I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v7

    .line 930
    .local v7, mirroringEnabled:Z
    if-eqz v7, :cond_0

    .line 931
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 932
    .local v1, child1:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 933
    .local v4, childWidth1:I
    add-int/lit8 v9, v5, -0x1

    mul-int v2, v4, v9

    .line 938
    .end local v1           #child1:Landroid/view/View;
    .end local v4           #childWidth1:I
    .local v2, childLeft:I
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 939
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 942
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 943
    .local v3, childWidth:I
    const/4 v9, 0x0

    add-int v10, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v2, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 945
    if-eqz v7, :cond_1

    .line 946
    sub-int/2addr v2, v3

    .line 938
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 935
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .end local v3           #childWidth:I
    .end local v6           #i:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #childLeft:I
    goto :goto_0

    .line 948
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #childWidth:I
    .restart local v6       #i:I
    :cond_1
    add-int/2addr v2, v3

    goto :goto_2

    .line 951
    .end local v0           #child:Landroid/view/View;
    .end local v3           #childWidth:I
    :cond_2
    return-void
.end method

.method private onMeasureForTiles(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 967
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 969
    .local v9, width:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 970
    .local v1, childCount:I
    if-nez v1, :cond_0

    .line 972
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1007
    :goto_0
    return-void

    .line 986
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$1100(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    mul-int v8, v10, v11

    .line 990
    .local v8, totalPaddingsInPixels:I
    sub-int v10, v9, v8

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    div-int v5, v10, v11

    .line 991
    .local v5, imageSize:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v10

    mul-int/2addr v10, v5

    sub-int v10, v9, v10

    sub-int v7, v10, v8

    .line 992
    .local v7, remainder:I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c006f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 995
    .local v6, nameTextViewHeight:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 996
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 997
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int v11, v5, v10

    if-ge v4, v7, :cond_1

    const/4 v10, 0x1

    :goto_2
    add-int v3, v11, v10

    .line 1000
    .local v3, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v5

    add-int v2, v10, v6

    .line 1001
    .local v2, childHeight:I
    const/high16 v10, 0x4000

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->measure(II)V

    .line 995
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 997
    .end local v2           #childHeight:I
    .end local v3           #childWidth:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 1006
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;ZZ)V
    .locals 6
    .parameter
    .parameter "isLastRow"
    .parameter "isVoLTEEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    const/4 v3, 0x1

    .line 800
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v0, v3

    .line 802
    .local v0, columnCount:I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileAdapter;->access$700(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v4, v5, :cond_0

    .line 803
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileAdapter;->access$800(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 804
    const/4 v0, 0x1

    .line 811
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .local v1, columnCounter:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 812
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-object v2, v3

    .line 814
    .local v2, entry:Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    :goto_3
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZZ)V

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 800
    .end local v0           #columnCount:I
    .end local v1           #columnCounter:I
    .end local v2           #entry:Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v0

    goto :goto_0

    .line 806
    .restart local v0       #columnCount:I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v0

    goto :goto_1

    .line 812
    .restart local v1       #columnCounter:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 816
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 912
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 918
    :pswitch_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 919
    :goto_0
    return-void

    .line 915
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles(IIII)V

    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 955
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 961
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 962
    :goto_0
    return-void

    .line 958
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(II)V

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1015
    return-void
.end method
