.class public Lcom/android/mms/ui/ComposeDeleteMessage;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;,
        Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DeleteMessage"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mCancelConfirmDialog:Landroid/content/DialogInterface;

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

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    .line 36
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 47
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 48
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeDeleteMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static confirmCancelDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 384
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 385
    if-eqz p2, :cond_0

    const v1, 0x7f0a049c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 387
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 385
    :cond_0
    const v1, 0x7f0a049b

    goto :goto_0
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 285
    if-eqz p2, :cond_0

    const v1, 0x7f0a009d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 285
    :cond_0
    const v1, 0x7f0a009c

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 252
    const v4, 0x7f030029

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 253
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 254
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 257
    if-nez p2, :cond_0

    .line 258
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 268
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v4, 0x7f0a009b

    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 260
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 261
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 262
    new-instance v4, Lcom/android/mms/ui/ComposeDeleteMessage$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$1;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 269
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f0a009a

    goto :goto_1
.end method


# virtual methods
.method public clearConfirmDeleteDlg()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    .line 62
    return-void
.end method

.method public deleteMessage()V
    .locals 22

    .prologue
    .line 293
    const-string v5, "Mms/DeleteMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessage() mDeleteUri="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v4

    .line 296
    .local v4, queryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 297
    const/16 v5, 0x25e4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    .line 357
    return-void

    .line 297
    :cond_1
    const-string v8, "locked=0"

    goto :goto_0

    .line 300
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 301
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v5, :cond_4

    .line 302
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 304
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v17

    .line 305
    .local v17, threadId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v5

    const/16 v6, 0x70a

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    const/4 v9, 0x0

    new-instance v20, Lcom/android/mms/ui/DeleteInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, v20

    invoke-static {v5, v6, v8, v9, v0}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    goto :goto_1

    .line 309
    .end local v17           #threadId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 314
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 316
    .local v11, deleteCount:I
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 318
    :cond_6
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 319
    .local v15, msgId:J
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 320
    .local v19, type:Ljava/lang/String;
    const/16 v5, 0x15

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 322
    .local v12, groupId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    move-wide v0, v15

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 349
    :cond_7
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 352
    .end local v12           #groupId:J
    .end local v15           #msgId:J
    .end local v19           #type:Ljava/lang/String;
    :cond_8
    if-nez v11, :cond_0

    .line 353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_1

    .line 325
    .restart local v12       #groupId:J
    .restart local v15       #msgId:J
    .restart local v19       #type:Ljava/lang/String;
    :cond_9
    const/16 v5, 0x14

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v14, 0x1

    .line 327
    .local v14, locked:Z
    :goto_3
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v5, :cond_7

    .line 330
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 331
    const-string v5, "mms"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 332
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 346
    .local v7, deleteUri:Landroid/net/Uri;
    :goto_4
    const/16 v5, 0x25e4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    :goto_5
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 325
    .end local v7           #deleteUri:Landroid/net/Uri;
    .end local v14           #locked:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_3

    .line 333
    .restart local v14       #locked:Z
    :cond_c
    const-string v5, "wpm"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 334
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 338
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_d
    cmp-long v5, v15, v12

    if-nez v5, :cond_e

    .line 339
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 342
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_e
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 346
    :cond_f
    const-string v8, "locked=0"

    goto :goto_5
.end method

.method public deleteSelectedMessages()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 182
    const-string v11, "Mms/DeleteMessage"

    const-string v12, "deleteSelectedMessages()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    if-nez v11, :cond_0

    .line 226
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    .line 198
    .local v1, count:I
    const/4 v3, 0x0

    .line 201
    .local v3, hasLockedMessage:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 202
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 203
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 201
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 206
    :cond_2
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 207
    .local v6, msgId:J
    const/16 v11, 0x14

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_5

    move v5, v9

    .line 208
    .local v5, locked:Z
    :goto_2
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, msgType:Ljava/lang/String;
    if-ne v5, v9, :cond_1

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11, v6, v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 211
    const/4 v3, 0x1

    .line 216
    .end local v0           #c:Landroid/database/Cursor;
    .end local v5           #locked:Z
    .end local v6           #msgId:J
    .end local v8           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v11, :cond_4

    .line 217
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v11}, Landroid/content/DialogInterface;->dismiss()V

    .line 218
    :cond_4
    new-instance v11, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12, v3}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-object v13, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v13

    if-ne v13, v9, :cond_6

    const v9, 0x7f0a009c

    :goto_3
    invoke-static {v11, v10, v3, v12, v9}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 222
    .local v2, dlg:Landroid/app/AlertDialog;
    sget-object v9, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 223
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 224
    iput-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    .end local v2           #dlg:Landroid/app/AlertDialog;
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v6       #msgId:J
    :cond_5
    move v5, v10

    .line 207
    goto :goto_2

    .line 218
    .end local v0           #c:Landroid/database/Cursor;
    .end local v6           #msgId:J
    :cond_6
    const v9, 0x7f0a01d7

    goto :goto_3
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method public showCancelConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V
    .locals 4
    .parameter "msgItem"
    .parameter "uri"

    .prologue
    .line 370
    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    .line 372
    .local v1, l:Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmCancelDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    .line 375
    .local v0, dlg:Landroid/app/AlertDialog;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 377
    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    .line 378
    return-void
.end method

.method public showDeleteConfirmDlg(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 233
    const/16 v2, 0x14

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    .local v5, locked:Z
    :goto_0
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 236
    .local v6, groupId:J
    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 238
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V

    .line 241
    .local v0, l:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v5}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v8

    .line 242
    .local v8, dlg:Landroid/app/AlertDialog;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 243
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 244
    iput-object v8, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0           #l:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    .end local v5           #locked:Z
    .end local v6           #groupId:J
    .end local v8           #dlg:Landroid/app/AlertDialog;
    :goto_1
    return-void

    :cond_1
    move v5, v1

    .line 233
    goto :goto_0

    .line 245
    :catch_0
    move-exception v9

    .line 246
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v1, "Mms/DeleteMessage"

    const-string v2, "CursorIndexOutOfBoundsException showDeleteConfirmDlg()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showDeleteConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V
    .locals 4
    .parameter "msgItem"
    .parameter "uri"

    .prologue
    .line 360
    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    .line 362
    .local v1, l:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    .line 365
    .local v0, dlg:Landroid/app/AlertDialog;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 367
    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 368
    return-void
.end method
