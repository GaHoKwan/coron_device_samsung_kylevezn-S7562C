.class public final Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 11866
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 11867
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 11868
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 11871
    if-eqz p1, :cond_0

    .line 11872
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11874
    :cond_0
    return-void
.end method

.method private getNewPosition(Landroid/content/Intent;Landroid/database/Cursor;I)I
    .locals 10
    .parameter "intent"
    .parameter "cursor"
    .parameter "defaultValue"

    .prologue
    const-wide/16 v8, -0x1

    .line 12106
    move v2, p3

    .line 12108
    .local v2, newPosition:I
    const-string v7, "select_id"

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 12109
    .local v3, targetMsgId:J
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12114
    .local v5, targetMsgType:Ljava/lang/String;
    cmp-long v7, v3, v8

    if-eqz v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 12115
    const/4 v7, -0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12116
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12117
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 12118
    .local v0, msgId:J
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 12119
    .local v6, type:Ljava/lang/String;
    cmp-long v7, v0, v3

    if-nez v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12120
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 12125
    .end local v0           #msgId:J
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 12130
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12131
    sparse-switch p1, :sswitch_data_0

    .line 12169
    :cond_0
    :goto_0
    const/16 v0, 0x70a

    if-ne p1, v0, :cond_7

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12171
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 12175
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 12177
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 12178
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 12179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 12197
    :cond_1
    :goto_1
    return-void

    .line 12134
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 12135
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 12143
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 12144
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 12147
    if-nez p3, :cond_0

    .line 12148
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsMultiLockMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12149
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12150
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12151
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 12152
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsMultiLockMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12153
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 12155
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12156
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 12158
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 12160
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 12182
    :cond_7
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12183
    if-ge p3, v3, :cond_8

    .line 12184
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 12185
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12186
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12187
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12188
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12191
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getAttachmentType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 12193
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only draft // clear cache mConversation.getThreadId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12194
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    goto/16 :goto_1

    .line 12131
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 26
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 11879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v22

    if-nez v22, :cond_0

    .line 11880
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "onQueryComplete, Fragment already detached. just Finish"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11881
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 12103
    .end local p2
    :goto_0
    return-void

    .line 11885
    .restart local p2
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->saveActionbarTitleWidth()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 11886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->initActionBarTitle()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 11888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 11889
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 11892
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 12056
    :sswitch_0
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 12060
    :sswitch_1
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "onQueryComplete(),MESSAGE_HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 12062
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 12066
    .local v18, threadId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteMessage:Lcom/android/mms/ui/ComposeDeleteMessage;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/database/Cursor;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeDeleteMessage;->showDeleteConfirmDlg(Landroid/database/Cursor;)V

    .line 12075
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "onQueryComplete(),MESSAGE_HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11895
    .end local v18           #threadId:J
    .restart local p2
    :sswitch_2
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11898
    const/16 v22, 0x253a

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 11899
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 11900
    .local v20, tid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v22

    cmp-long v22, v20, v22

    if-eqz v22, :cond_2

    .line 11901
    const-string v22, "Mms/ComposeMessageFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", but mConversation has threadId "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v24, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v24 .. v24}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " starting a new query"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 11905
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 11906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    goto/16 :goto_0

    .line 11912
    .end local v20           #tid:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->sanityCheckConversation()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 11915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->getNewPosition(Landroid/content/Intent;Landroid/database/Cursor;I)I

    move-result v16

    .line 11917
    .local v16, newSelectionPos:I
    const/4 v6, 0x0

    .line 11918
    .local v6, cursorCount:I
    if-eqz p3, :cond_3

    .line 11919
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 11921
    :cond_3
    const/4 v9, 0x0

    .line 11922
    .local v9, isIncrese:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-le v6, v0, :cond_4

    .line 11923
    const/4 v9, 0x1

    .line 11925
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 11926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 11927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsMultiLockMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsSaveMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 11928
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 11929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 11930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 11931
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsMultiLockMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 11932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 11934
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 11935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 11937
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsSaveMode:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 11938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/mms/ui/ComposeMessageFragment;->setSaveModeLayout(ZZ)V

    .line 11939
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 11944
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 11945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v22

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11946
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v22

    if-eqz v22, :cond_b

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 11947
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "DeleteAnimation Progress Dismissed with onQueryComplete()"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11948
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11964
    :cond_b
    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v22

    if-nez v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v22

    if-nez v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 11966
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "Composer close condition 1"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v22

    if-nez v22, :cond_c

    .line 11968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 11969
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 11970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_0

    .line 11941
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_1

    .line 11972
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 11974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v7

    .line 11975
    .local v7, hasDraft:Z
    if-nez v6, :cond_f

    if-nez v7, :cond_f

    .line 11976
    const-string v22, "Mms/ComposeMessageFragment"

    const-string v23, "Composer close condition 2"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 11978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 11979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 11980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 11981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 11983
    :cond_f
    if-eqz v6, :cond_15

    if-nez v7, :cond_15

    .line 11984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 11985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 11986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 11994
    .end local v7           #hasDraft:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v23

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 11999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/ContactList;->size()I

    move-result v22

    if-gtz v22, :cond_18

    .line 12000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v22

    if-eqz v22, :cond_17

    .line 12001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v22

    if-nez v22, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->isFocused()Z

    move-result v22

    if-nez v22, :cond_12

    .line 12003
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 12022
    :cond_12
    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 12023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 12025
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 12029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v22

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v22

    if-eqz v22, :cond_1b

    .line 12031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessageListView;

    .line 12032
    .local v10, mTestListView:Lcom/android/mms/ui/MessageListView;
    const/4 v11, 0x0

    .line 12033
    .local v11, msgCount:I
    const/16 v17, 0x0

    .line 12034
    .local v17, reservedCnt:I
    if-eqz v10, :cond_1a

    .line 12035
    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v11

    .line 12036
    const/4 v14, 0x0

    .line 12037
    .local v14, msgItem:Lcom/android/mms/ui/MessageListItem;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    if-ge v8, v11, :cond_1a

    .line 12038
    invoke-virtual {v10, v8}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #msgItem:Lcom/android/mms/ui/MessageListItem;
    check-cast v14, Lcom/android/mms/ui/MessageListItem;

    .line 12039
    .restart local v14       #msgItem:Lcom/android/mms/ui/MessageListItem;
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v22

    if-eqz v22, :cond_14

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_14

    .line 12041
    add-int/lit8 v17, v17, 0x1

    .line 12037
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 11988
    .end local v8           #i:I
    .end local v10           #mTestListView:Lcom/android/mms/ui/MessageListView;
    .end local v11           #msgCount:I
    .end local v14           #msgItem:Lcom/android/mms/ui/MessageListItem;
    .end local v17           #reservedCnt:I
    .restart local v7       #hasDraft:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->convertToNewComposerModeIfNeeded(I)V

    goto/16 :goto_2

    .line 11991
    .end local v7           #hasDraft:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->convertToNewComposerModeIfNeeded(I)V

    goto/16 :goto_2

    .line 12007
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    if-eqz v22, :cond_12

    .line 12008
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v22

    if-nez v22, :cond_12

    .line 12009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_3

    .line 12015
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-eqz v22, :cond_12

    .line 12018
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 12019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 12045
    .restart local v10       #mTestListView:Lcom/android/mms/ui/MessageListView;
    .restart local v11       #msgCount:I
    .restart local v17       #reservedCnt:I
    :cond_1a
    if-eqz v9, :cond_1b

    .line 12046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    sub-int v23, v6, v17

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 12051
    .end local v10           #mTestListView:Lcom/android/mms/ui/MessageListView;
    .end local v11           #msgCount:I
    .end local v17           #reservedCnt:I
    :cond_1b
    const-string v22, "Mms/ComposeMessageFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN, mMsgListAdapter.getCount()="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "animationIdx="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12079
    .end local v6           #cursorCount:I
    .end local v9           #isIncrese:Z
    .end local v16           #newSelectionPos:I
    .restart local p2
    :sswitch_3
    const-string v22, "Mms/ComposeMessageFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "cursor.getCount() = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 12083
    .local v4, c:Landroid/database/Cursor;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 12085
    :cond_1c
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 12086
    .local v12, msgId:J
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 12087
    .local v15, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13, v15}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 12088
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_1c

    .line 12090
    .end local v12           #msgId:J
    .end local v15           #msgType:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    .line 12091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v5

    .line 12092
    .local v5, checkedCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ne v5, v0, :cond_1e

    .line 12093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12097
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 12095
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 11892
    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_2
        0x2538 -> :sswitch_1
        0x2539 -> :sswitch_3
        0x253a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 12201
    packed-switch p1, :pswitch_data_0

    .line 12218
    :cond_0
    :goto_0
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12219
    if-ge p3, v3, :cond_1

    .line 12220
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 12221
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12222
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12223
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12224
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12227
    :cond_1
    return-void

    .line 12203
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 12204
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 12205
    if-nez p3, :cond_0

    .line 12206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsMultiLockMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12207
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 12209
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 12211
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 12201
    :pswitch_data_0
    .packed-switch 0x25e5
        :pswitch_0
    .end packed-switch
.end method
