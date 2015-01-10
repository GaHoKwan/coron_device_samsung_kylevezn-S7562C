.class Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromXDeltaTransfer:F

.field protected mFromYDeltaTransfer:F

.field protected mIsAlignLeft:Z

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveXTransfer:F

.field protected mMoveYTransfer:F

.field protected mToXDeltaTransfer:F

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 893
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 876
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 878
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 880
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 882
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 884
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 886
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 888
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 890
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 894
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 895
    return-void
.end method

.method private userSetChildView(IIZLandroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 914
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 915
    iput-object p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 918
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isAlignLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 919
    return-void
.end method


# virtual methods
.method public releaseChildView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 898
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 899
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 900
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 901
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 902
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 903
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 904
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 905
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 907
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 911
    :cond_0
    return-void
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 7
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    const/4 v4, 0x0

    .line 955
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 957
    .local v1, moveYTransfer:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    float-to-int v0, v4

    .line 960
    .local v0, moveXTransfer:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 961
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 962
    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 963
    .local v2, msgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v4

    if-nez v4, :cond_3

    .line 964
    int-to-float v4, v1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    .line 965
    int-to-float v4, v0

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetLeftAndRight(II)V

    .line 966
    int-to-float v4, v0

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 970
    :goto_2
    int-to-float v4, v1

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 972
    .end local v2           #msgListItem:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    return-void

    .end local v0           #moveXTransfer:I
    .end local v1           #moveYTransfer:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move v1, v4

    .line 955
    goto :goto_0

    .restart local v1       #moveYTransfer:I
    :cond_2
    move v0, v4

    .line 957
    goto :goto_1

    .line 968
    .restart local v0       #moveXTransfer:I
    .restart local v2       #msgListItem:Lcom/android/mms/ui/MessageListItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_3
    int-to-float v4, v1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    goto :goto_2
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userOffsetChildTopAndBottom(II)V
    .locals 1
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 927
    return-void
.end method

.method public userOffsetLeftAndRight(II)V
    .locals 2
    .parameter "offset"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 931
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->isAlignLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 941
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method public userSetTransfer(FFFF)V
    .locals 1
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 947
    iput p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 948
    iput p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 949
    iput p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 950
    iput p2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 951
    return-void
.end method
