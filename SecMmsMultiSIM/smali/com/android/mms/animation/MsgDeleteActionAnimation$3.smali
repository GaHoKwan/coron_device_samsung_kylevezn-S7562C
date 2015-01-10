.class Lcom/android/mms/animation/MsgDeleteActionAnimation$3;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;->deleteActionAnimMultiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDeletedItem(I)Z
    .locals 3
    .parameter "i"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, isDeleteItem:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_1

    .line 216
    const/4 v0, 0x1

    .line 220
    :cond_0
    return v0

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 17
    .parameter "arg0"

    .prologue
    .line 144
    const/4 v13, 0x0

    .line 145
    .local v13, isItemNextEmpty:Z
    const/4 v15, 0x0

    .line 146
    .local v15, realEndY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-boolean v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    if-eqz v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    .line 151
    const/4 v12, 0x1

    .line 153
    .local v12, isEnd:Z
    const/4 v14, 0x0

    .line 154
    .local v14, lastIndex:I
    const/4 v11, 0x0

    .line 156
    .local v11, endY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    .line 158
    .local v10, endPoint:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getBottom()I

    move-result v16

    .line 159
    .local v16, viewBottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v8

    .line 160
    .local v8, allChildItemsSize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    const/4 v3, 0x0

    aget v7, v1, v3

    .line 161
    .local v7, aboveDeleteIndexes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v8, :cond_b

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v9

    .line 163
    .local v9, conversationListItemView:Landroid/view/View;
    if-nez v9, :cond_2

    .line 161
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 156
    .end local v2           #i:I
    .end local v7           #aboveDeleteIndexes:I
    .end local v8           #allChildItemsSize:I
    .end local v9           #conversationListItemView:Landroid/view/View;
    .end local v10           #endPoint:I
    .end local v16           #viewBottom:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 166
    .restart local v2       #i:I
    .restart local v7       #aboveDeleteIndexes:I
    .restart local v8       #allChildItemsSize:I
    .restart local v9       #conversationListItemView:Landroid/view/View;
    .restart local v10       #endPoint:I
    .restart local v16       #viewBottom:I
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getVisibleChildItemViewCount()I

    move-result v1

    if-gt v2, v1, :cond_9

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->isDeletedItem(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    const/4 v13, 0x1

    .line 171
    goto :goto_3

    .line 174
    :cond_3
    if-lt v14, v2, :cond_4

    if-ge v2, v7, :cond_6

    .line 175
    :cond_4
    const/4 v12, 0x0

    .line 176
    const/4 v11, 0x0

    .line 177
    if-lt v2, v7, :cond_5

    .line 178
    if-eqz v13, :cond_7

    .line 179
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v10, v1

    .line 180
    move v15, v11

    .line 186
    :cond_5
    :goto_4
    move/from16 v0, v16

    if-gt v10, v0, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    .line 187
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    .line 188
    add-int/lit8 v14, v14, 0x1

    .line 197
    :cond_6
    :goto_6
    const/4 v13, 0x0

    goto :goto_3

    .line 182
    :cond_7
    move v11, v15

    goto :goto_4

    :cond_8
    move/from16 v10, v16

    .line 186
    goto :goto_5

    .line 191
    :cond_9
    const/4 v12, 0x0

    .line 192
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v10, v1

    .line 193
    move/from16 v0, v16

    if-gt v10, v0, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    .line 194
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    .line 195
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    move/from16 v10, v16

    .line 193
    goto :goto_7

    .line 201
    .end local v9           #conversationListItemView:Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd isEnd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    goto/16 :goto_0

    .line 207
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsScaleFadeOutSet END, startTransAnimation"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->startTransAnimation(I)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 226
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;->onBeginDeleteConversationListAnimationEnd()V

    .line 233
    :cond_0
    return-void
.end method
