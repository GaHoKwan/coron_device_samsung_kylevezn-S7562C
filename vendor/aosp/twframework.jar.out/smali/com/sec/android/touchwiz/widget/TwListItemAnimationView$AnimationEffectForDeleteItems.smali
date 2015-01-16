.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationEffectForDeleteItems"
.end annotation


# instance fields
.field protected mDeleteIndeces:[I

.field protected mIsAlphaEffect:Z

.field protected mIsThisAnimatingForDeleteItems:Z

.field protected mIsTransferEffect:Z

.field protected mOrginalIndeces:[I

.field protected mStepForDeleteItem:I

.field protected mTimeIntervalForAlphaEffect:I

.field protected mTimeIntervalForTransferEffect:I

.field protected mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1099
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForAlphaEffect:I

    .line 1083
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForTransferEffect:I

    .line 1085
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsThisAnimatingForDeleteItems:Z

    .line 1087
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    .line 1089
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    .line 1091
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    .line 1093
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsAlphaEffect:Z

    .line 1095
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsTransferEffect:Z

    .line 1097
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1100
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1101
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userSetOnAnimationListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;)V

    .line 1137
    return-void
.end method


# virtual methods
.method protected userAfterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1411
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1412
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsThisAnimatingForDeleteItems:Z

    .line 1413
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V

    .line 1415
    return-void
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 4

    .prologue
    .line 1184
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userDismissPopup()V

    .line 1186
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v1

    .line 1187
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1188
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 1189
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1190
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1194
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsAlphaEffect:Z

    if-eqz v3, :cond_3

    .line 1195
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userAfterAnimation()V

    .line 1199
    :cond_2
    :goto_1
    return-void

    .line 1196
    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsTransferEffect:Z

    if-eqz v3, :cond_2

    .line 1197
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userCancelAnimation()V

    goto :goto_1
.end method

.method public userGetTimeIntervalAlphaEffectForDeleteItems()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForAlphaEffect:I

    return v0
.end method

.method public userGetTimeIntervalTransferEffectForDeleteItems()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForTransferEffect:I

    return v0
.end method

.method protected userHideSelectedItems()V
    .locals 4

    .prologue
    .line 1468
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    if-nez v2, :cond_1

    .line 1478
    :cond_0
    return-void

    .line 1472
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 1474
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1475
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public userIsThisAnimating()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsThisAnimatingForDeleteItems:Z

    return v0
.end method

.method protected userRange([I)[I
    .locals 13
    .parameter "values"

    .prologue
    .line 1419
    array-length v11, p1

    new-array v9, v11, [I

    .line 1420
    .local v9, temp1:[I
    const/4 v4, 0x0

    .line 1422
    .local v4, size1:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1423
    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v11, p1

    if-ge v0, v11, :cond_1

    .line 1424
    aget v11, p1, v0

    if-ltz v11, :cond_0

    aget v11, p1, v0

    if-ge v11, v1, :cond_0

    .line 1425
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p1, v0

    if-gt v11, v12, :cond_0

    aget v11, p1, v0

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_0

    .line 1427
    add-int/lit8 v5, v4, 0x1

    .end local v4           #size1:I
    .local v5, size1:I
    aget v11, p1, v0

    aput v11, v9, v4

    move v4, v5

    .line 1423
    .end local v5           #size1:I
    .restart local v4       #size1:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1432
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 1433
    add-int/lit8 v2, v0, 0x1

    .local v2, j:I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 1434
    aget v11, v9, v0

    aget v12, v9, v2

    if-le v11, v12, :cond_2

    .line 1435
    aget v8, v9, v0

    .line 1436
    .local v8, temp:I
    aget v11, v9, v2

    aput v11, v9, v0

    .line 1437
    aput v8, v9, v2

    .line 1433
    .end local v8           #temp:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1432
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1442
    .end local v2           #j:I
    :cond_4
    array-length v11, p1

    new-array v10, v11, [I

    .line 1443
    .local v10, temp2:[I
    const/4 v6, 0x0

    .line 1445
    .local v6, size2:I
    const/4 v0, 0x0

    move v7, v6

    .end local v6           #size2:I
    .local v7, size2:I
    :goto_3
    if-ge v0, v4, :cond_7

    .line 1446
    add-int/lit8 v6, v7, 0x1

    .end local v7           #size2:I
    .restart local v6       #size2:I
    aget v11, v9, v0

    aput v11, v10, v7

    .line 1447
    add-int/lit8 v2, v0, 0x1

    .restart local v2       #j:I
    :goto_4
    if-ge v2, v4, :cond_5

    .line 1448
    aget v11, v9, v0

    aget v12, v9, v2

    if-eq v11, v12, :cond_6

    .line 1449
    add-int/lit8 v0, v2, -0x1

    .line 1445
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6           #size2:I
    .restart local v7       #size2:I
    goto :goto_3

    .line 1447
    .end local v7           #size2:I
    .restart local v6       #size2:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1455
    .end local v2           #j:I
    .end local v6           #size2:I
    .restart local v7       #size2:I
    :cond_7
    if-nez v7, :cond_9

    .line 1456
    const/4 v3, 0x0

    .line 1464
    :cond_8
    return-object v3

    .line 1459
    :cond_9
    new-array v3, v7, [I

    .line 1460
    .local v3, ret:[I
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v7, :cond_8

    .line 1461
    aget v11, v10, v0

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v3, v0

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public userRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1141
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userRelease()V

    .line 1143
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1146
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsThisAnimatingForDeleteItems:Z

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;->userOnExitAnimationEffectForDeleteItems()V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    if-eqz v0, :cond_2

    .line 1154
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    if-eqz v0, :cond_3

    .line 1158
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    .line 1160
    :cond_3
    return-void
.end method

.method public userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 1203
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1204
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    .line 1205
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    if-ne v0, v2, :cond_2

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStart()V

    .line 1208
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    goto :goto_0

    .line 1209
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1210
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userUnHideSelectedItems()V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRemoveAllChild()V

    .line 1212
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;->userOnEndAnimationEffectForDeleteItems()V

    .line 1217
    :cond_3
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    goto :goto_0

    .line 1218
    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    if-ne v0, v3, :cond_5

    .line 1219
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    .line 1220
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1221
    :cond_5
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    if-ne v0, v4, :cond_0

    .line 1222
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    goto :goto_0
.end method

.method public userSetTimeIntervalAlphaEffectForDeleteItems(I)V
    .locals 0
    .parameter "timeInterval"

    .prologue
    .line 1171
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForAlphaEffect:I

    .line 1172
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForDeleteItems(I)V
    .locals 0
    .parameter "timeInterval"

    .prologue
    .line 1179
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForTransferEffect:I

    .line 1180
    return-void
.end method

.method protected userStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1254
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 1259
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "much selected Item than Max List items ..."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1264
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v2

    .line 1265
    .local v2, size:I
    const/4 v1, 0x0

    .line 1266
    .local v1, isOutOfRange:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1267
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    aget v3, v3, v0

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    aget v3, v3, v0

    if-gt v2, v3, :cond_5

    .line 1268
    :cond_3
    const/4 v1, 0x1

    .line 1273
    :cond_4
    if-eqz v1, :cond_6

    .line 1274
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Out of List Item Index ..."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1266
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1279
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRange([I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    .line 1280
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userAddViewBelow()V

    .line 1282
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    if-nez v3, :cond_7

    .line 1283
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Deleting ..."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1284
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;

    invoke-direct {v4, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userSetOnProgressPopupListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;)V

    .line 1301
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userShowPopup()V

    goto :goto_0

    .line 1305
    :cond_7
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsAlphaEffect:Z

    .line 1306
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsTransferEffect:Z

    .line 1307
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1308
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStartAlphaEffect(I)V

    .line 1307
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected userStartAlphaEffect(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 1314
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetOrginalChildCount()I

    move-result v2

    .line 1315
    .local v2, size:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    aget v1, v4, p1

    .line 1317
    .local v1, n:I
    if-ltz v1, :cond_0

    if-gt v2, v1, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1322
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForAlphaEffect:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1323
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1324
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1325
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;I)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1404
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 1405
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1406
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public userStartAnimationEffectForDeleteItems([I)V
    .locals 4
    .parameter "selectedIndeces"

    .prologue
    const/4 v3, 0x1

    .line 1229
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-nez v1, :cond_0

    .line 1237
    if-eqz p1, :cond_0

    .line 1241
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    .line 1242
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1243
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mOrginalIndeces:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1246
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1247
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsThisAnimatingForDeleteItems:Z

    .line 1248
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    .line 1249
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected userUnHideSelectedItems()V
    .locals 4

    .prologue
    .line 1481
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    if-nez v2, :cond_1

    .line 1491
    :cond_0
    return-void

    .line 1485
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1486
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 1487
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1488
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
