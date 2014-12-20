.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromYDeltaTransfer:F

.field protected mIndex:I

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveTransfer:F

.field protected mPosition:I

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 762
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 748
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 750
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 752
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 754
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 756
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 758
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 760
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 763
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 764
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 766
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 767
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 768
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 778
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 748
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 750
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 754
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 756
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 758
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 760
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 779
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 780
    return-void
.end method


# virtual methods
.method public userCalculateOffsetTransfer(F)V
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 821
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 823
    .local v0, moveTransfer:I
    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userOffsetChildTopAndBottom(I)V

    .line 824
    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 825
    return-void

    .line 821
    .end local v0           #moveTransfer:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userGetIndex()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    return v0
.end method

.method public userGetPosition()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    return v0
.end method

.method public userIsNewChildView()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    return v0
.end method

.method public userOffsetChildTopAndBottom(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 812
    return-void
.end method

.method public userRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 785
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 786
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 787
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 789
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 793
    :cond_0
    return-void
.end method

.method public userSetChildView(IIZLandroid/view/View;)V
    .locals 0
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 796
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 797
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 798
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 799
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 800
    return-void
.end method

.method public userSetTransfer(FF)V
    .locals 1
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 816
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 817
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 818
    return-void
.end method
