.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListAdapter"

.field private static mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mHasLockedThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimationEnable:Z

.field private mIsDeleteMode:Z

.field private mIsMoveMode:Z

.field private mIsSaveMode:Z

.field private mIsSplitMode:Z

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J

.field private mSplitModePreference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    .line 79
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    .line 87
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 103
    move-object/from16 v0, p1

    instance-of v8, v0, Lcom/android/mms/ui/ConversationListItem;

    if-nez v8, :cond_0

    .line 104
    const-string v8, "Mms/ConversationListAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected bound view: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v8

    if-nez v8, :cond_1

    .line 109
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_1
    move-object/from16 v6, p1

    .line 112
    check-cast v6, Lcom/android/mms/ui/ConversationListItem;

    .line 113
    .local v6, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-static/range {p2 .. p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 115
    .local v4, conv:Lcom/android/mms/data/Conversation;
    new-instance v2, Lcom/android/mms/ui/ConversationListItemData;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v4}, Lcom/android/mms/ui/ConversationListItemData;-><init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    .line 116
    .local v2, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 118
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    invoke-virtual {v6, v8}, Lcom/android/mms/ui/ConversationListItem;->setDeleteMode(Z)V

    .line 120
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v8, :cond_2

    .line 122
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    invoke-virtual {v6, v8}, Lcom/android/mms/ui/ConversationListItem;->setMoveMode(Z)V

    .line 124
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v8, :cond_3

    .line 125
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    invoke-virtual {v6, v8}, Lcom/android/mms/ui/ConversationListItem;->setSaveMode(Z)V

    .line 130
    :cond_3
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v8, :cond_7

    .line 131
    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 132
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    if-eqz v8, :cond_4

    .line 133
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v9

    const-wide/16 v10, 0x12c

    new-instance v12, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v12}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v13, 0x42a0

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 159
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 160
    .local v3, checked:Z
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v8, :cond_a

    .line 161
    sget-object v8, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 162
    if-nez v3, :cond_5

    .line 163
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    .line 173
    :cond_5
    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 174
    iget v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    invoke-virtual {v6, v8}, Lcom/android/mms/ui/ConversationListItem;->setFontSize(I)V

    .line 175
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v2, v1}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V

    .line 177
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    .local v5, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getSplitModePreference()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 180
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->isSplitBarTouch()Z

    move-result v7

    .line 183
    .local v7, touch:Z
    iget-wide v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    if-eqz v8, :cond_c

    .line 184
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    .line 194
    .end local v7           #touch:Z
    :cond_6
    :goto_3
    const-string v8, "Mms/ConversationListAdapter"

    const-string v9, "bindView() complete"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v3           #checked:Z
    .end local v5           #dm:Landroid/util/DisplayMetrics;
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v8, :cond_8

    .line 139
    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 140
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    if-eqz v8, :cond_4

    .line 141
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v9

    const-wide/16 v10, 0x12c

    new-instance v12, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v12}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v13, 0x42a0

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 146
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v8, :cond_9

    .line 147
    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 148
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 149
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v9

    const-wide/16 v10, 0x12c

    new-instance v12, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v12}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v13, 0x42a0

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 156
    :cond_9
    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 164
    .restart local v3       #checked:Z
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v8, :cond_b

    .line 165
    sget-object v8, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 166
    if-nez v3, :cond_5

    .line 167
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    goto/16 :goto_2

    .line 168
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v8, :cond_5

    .line 169
    sget-object v8, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 170
    if-nez v3, :cond_5

    .line 171
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    goto/16 :goto_2

    .line 187
    .restart local v5       #dm:Landroid/util/DisplayMetrics;
    .restart local v7       #touch:Z
    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    goto/16 :goto_3
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    return-void
.end method

.method public clearHasLockedMsg()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "clearHasLockedMsg"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 280
    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 276
    return-void
.end method

.method public getCheckedConvList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Ljava/lang/Long;
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public getSplitModePreference()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    return v0
.end method

.method public hasLockedMsg(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    .prologue
    .line 377
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 378
    return-void
.end method

.method public isCheckedThreadId(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 357
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 199
    instance-of v1, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v1, :cond_0

    .line 200
    const-string v1, "Mms/ConversationListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMovedToScrapHeap view is not ConversationListItem but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 204
    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 206
    .local v0, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    .line 207
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public reCalulateCheckedThreads()V
    .locals 6

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 385
    .local v1, currentCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, newCheckedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 393
    .local v0, colId:I
    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 394
    .local v3, threadId:Ljava/lang/Long;
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 399
    sput-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    .line 95
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 91
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    .line 99
    return-void
.end method

.method public setChecked(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 294
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCheckedAll()V
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 304
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 306
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    :cond_2
    sget-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "isDeleteMode"

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-ne v0, p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 239
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setHasLockedMsg(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v0, "Mms/ConversationListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasLockedMsg threadID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 370
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 371
    return-void
.end method

.method public setMoveMode(Z)V
    .locals 1
    .parameter "isMoveMode"

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-ne v0, p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    .line 252
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 221
    return-void
.end method

.method public setSaveMode(Z)V
    .locals 1
    .parameter "isSaveMode"

    .prologue
    .line 260
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-ne v0, p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    .line 266
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setSplitModePreference(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    .line 285
    return-void
.end method

.method public toggleCheckBox(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 342
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 344
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 345
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 349
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 347
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
