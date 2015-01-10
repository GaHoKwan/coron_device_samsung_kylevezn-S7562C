.class public Lcom/android/mms/ui/ComposeMultiLockMessage;
.super Ljava/lang/Object;
.source "ComposeMultiLockMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiLockMessage"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private mHasLockedMessage:Z


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2
    .parameter "composer"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mDeleteUri:Landroid/net/Uri;

    .line 37
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mDeleteLocked:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mHasLockedMessage:Z

    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 47
    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mActivity:Landroid/app/Activity;

    .line 51
    return-void
.end method

.method public updateMessage()V
    .locals 15

    .prologue
    .line 104
    const-string v1, "Mms/MultiLockMessage"

    const-string v2, "updateMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v0

    .line 107
    .local v0, queryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 112
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 114
    .local v14, updateCount:I
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 117
    .local v11, msgId:J
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, type:Ljava/lang/String;
    const/16 v1, 0x15

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 120
    .local v8, groupId:J
    const/16 v1, 0x14

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v10, 0x1

    .line 122
    .local v10, locked:Z
    :goto_0
    if-eqz v10, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v11, v12, v13}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez v10, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v11, v12, v13}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 149
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    .end local v8           #groupId:J
    .end local v10           #locked:Z
    .end local v11           #msgId:J
    .end local v13           #type:Ljava/lang/String;
    :cond_3
    if-nez v14, :cond_4

    .line 153
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 155
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 156
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 159
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->dissmissDelProgressDlg()V

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    .line 164
    return-void

    .line 120
    .restart local v8       #groupId:J
    .restart local v11       #msgId:J
    .restart local v13       #type:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 126
    .restart local v10       #locked:Z
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 128
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 129
    .local v4, lockContentValues:Landroid/content/ContentValues;
    const-string v1, "mms"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 131
    .local v3, lockUri:Landroid/net/Uri;
    const-string v2, "locked"

    if-eqz v10, :cond_7

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    :goto_3
    const/16 v1, 0x25e5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 132
    .end local v3           #lockUri:Landroid/net/Uri;
    :cond_8
    const-string v1, "wpm"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 133
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 135
    .restart local v3       #lockUri:Landroid/net/Uri;
    const-string v2, "wpm.locked"

    if-eqz v10, :cond_9

    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    goto :goto_4

    .line 138
    .end local v3           #lockUri:Landroid/net/Uri;
    :cond_a
    cmp-long v1, v11, v8

    if-nez v1, :cond_b

    .line 139
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 144
    .restart local v3       #lockUri:Landroid/net/Uri;
    :goto_5
    const-string v2, "locked"

    if-eqz v10, :cond_c

    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 142
    .end local v3           #lockUri:Landroid/net/Uri;
    :cond_b
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #lockUri:Landroid/net/Uri;
    goto :goto_5

    .line 144
    :cond_c
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public updateMultiLockMessage()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 54
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 56
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isAnimationEnable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMultiLockMessage;->updateMessage()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->dissmissDelProgressDlg()V

    .line 61
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 66
    .local v8, updateCount:I
    const/4 v3, -0x1

    .line 67
    .local v3, messagePosition:I
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v11

    new-array v1, v11, [I

    .line 69
    .local v1, delItem:[I
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 71
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 72
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 73
    .local v4, msgId:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, type:Ljava/lang/String;
    const/16 v11, 0x14

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_4

    move v2, v9

    .line 77
    .local v2, locked:Z
    :goto_1
    if-nez v2, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11, v4, v5, v7}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 83
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 84
    if-lez v8, :cond_3

    .line 85
    new-array v6, v8, [I

    .line 86
    .local v6, realDelItem:[I
    invoke-static {v1, v10, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    .line 88
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    .line 92
    .end local v2           #locked:Z
    .end local v4           #msgId:J
    .end local v6           #realDelItem:[I
    .end local v7           #type:Ljava/lang/String;
    :cond_3
    if-nez v8, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMultiLockMessage;->updateMessage()V

    goto :goto_0

    .restart local v4       #msgId:J
    .restart local v7       #type:Ljava/lang/String;
    :cond_4
    move v2, v10

    .line 75
    goto :goto_1

    .line 80
    .restart local v2       #locked:Z
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 82
    add-int/lit8 v11, v8, -0x1

    aput v3, v1, v11

    goto :goto_2
.end method
