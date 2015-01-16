.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationEffectForOverscrollListItem"
.end annotation


# instance fields
.field protected mAvailiableRange:F

.field protected mIsDefinedOverscrollInfo:Z

.field protected mIsOverscrollDown:Z

.field protected mIsOverscrollTransfer:Z

.field protected mIsPressed:Z

.field protected mIsScrolling:Z

.field protected mIsThisAnimatingForOverscrollListItem:Z

.field protected mIsUseOverscrollEffect:Z

.field protected mLastMotionY:F

.field protected mOverscrollTransferAmount:I

.field protected mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

.field protected mStepForOverscrollListItem:I

.field protected mXPressed:F

.field protected mYPressed:F

.field protected rc:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 861
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 833
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mStepForOverscrollListItem:I

    .line 835
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 837
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    .line 839
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    .line 841
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->rc:Landroid/graphics/RectF;

    .line 843
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    .line 845
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    .line 847
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    .line 849
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 851
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 853
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 855
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollTransfer:Z

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 859
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    .line 862
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 863
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userSetOnAnimationListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;)V

    .line 898
    return-void
.end method


# virtual methods
.method public userCancelAnimationEffectForOverscrollListItem()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userCancelAnimation()V

    .line 922
    :cond_0
    return-void
.end method

.method public userGetUseOverscrollEffect()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    return v0
.end method

.method public userIsPressed()Z
    .locals 2

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 1072
    .local v0, b:Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    if-eqz v1, :cond_0

    .line 1073
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 1075
    :cond_0
    return v0
.end method

.method public userIsThisAnimatingForOverscrollListItem()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    return v0
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userRelease()V

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 905
    :cond_0
    return-void
.end method

.method public userRunningAnimationEffectForOverscrollListItem(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 926
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v1

    .line 927
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 928
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 929
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 930
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 931
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 932
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 934
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public userSetUseOverscrollEffect(Z)V
    .locals 0
    .parameter "isUseOverscrollEffect"

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    .line 913
    return-void
.end method

.method public userTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 940
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    if-nez v11, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    if-eqz v11, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollTransfer:Z

    if-nez v11, :cond_0

    .line 952
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 956
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 961
    .local v1, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 962
    .local v10, y:F
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 965
    :pswitch_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 967
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStopAnimation()V

    .line 969
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 970
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 972
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 973
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 975
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    .line 977
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    goto :goto_0

    .line 985
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    if-nez v11, :cond_2

    .line 986
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->rc:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 988
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->rc:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-nez v11, :cond_2

    .line 989
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    .line 993
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    if-eqz v11, :cond_0

    .line 997
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    sub-float/2addr v11, v10

    float-to-int v5, v11

    .line 998
    .local v5, deltaY:I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    .line 999
    if-gez v5, :cond_7

    .line 1001
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_3

    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v7

    .line 1003
    .local v7, firstVisiblePosition:I
    if-nez v7, :cond_0

    .line 1008
    .end local v7           #firstVisiblePosition:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1009
    .local v6, firstChild:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_5

    const/4 v3, 0x1

    .line 1011
    .local v3, canOverscrollscrollUp:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_4

    if-eqz v3, :cond_0

    .line 1012
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    if-nez v11, :cond_6

    .line 1013
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 1014
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 1015
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 1016
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userAddViewBelow()V

    goto/16 :goto_0

    .line 1009
    .end local v3           #canOverscrollscrollUp:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1020
    .restart local v3       #canOverscrollscrollUp:Z
    :cond_6
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1021
    .local v4, delta:I
    if-lez v4, :cond_0

    .line 1022
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    mul-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userOffsetAllChildTopAndBottom(I)V

    .line 1023
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    mul-int/lit8 v12, v5, -0x1

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 1024
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1029
    .end local v3           #canOverscrollscrollUp:Z
    .end local v4           #delta:I
    .end local v6           #firstChild:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_8

    .line 1030
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v9

    .line 1031
    .local v9, lastVisiblePosition:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v9, v11, :cond_0

    .line 1036
    .end local v9           #lastVisiblePosition:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1037
    .local v8, lastChild:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_a

    const/4 v2, 0x1

    .line 1039
    .local v2, canOverscrollscrollDown:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_9

    if-eqz v2, :cond_0

    .line 1040
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    if-nez v11, :cond_b

    .line 1041
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 1042
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 1043
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 1044
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userAddViewAbove()V

    goto/16 :goto_0

    .line 1037
    .end local v2           #canOverscrollscrollDown:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 1048
    .restart local v2       #canOverscrollscrollDown:Z
    :cond_b
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1049
    .restart local v4       #delta:I
    if-lez v4, :cond_0

    .line 1050
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    mul-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userOffsetAllChildTopAndBottom(I)V

    .line 1051
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    mul-int/lit8 v12, v5, -0x1

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 1052
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1062
    .end local v2           #canOverscrollscrollDown:Z
    .end local v4           #delta:I
    .end local v5           #deltaY:I
    .end local v8           #lastChild:Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-eqz v11, :cond_0

    .line 1063
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation()V

    goto/16 :goto_0

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
