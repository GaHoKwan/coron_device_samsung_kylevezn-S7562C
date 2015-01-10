.class public Lcom/android/mms/ui/SpamMessageManager;
.super Landroid/app/Activity;
.source "SpamMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;,
        Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final FLAG_RESTORE_COMPLETE:I = 0xcb

.field public static final FLAG_RESTORE_START:I = 0xca

.field public static final LIST_MODE_DELETE:I = 0x2

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_RESTORE:I = 0x1

.field public static final MENU_DELETE_ALL:I = 0xc9

.field public static final MENU_DELETE_CANCEL:I = 0xce

.field private static final MENU_DELETE_MESSAGE:I = 0xcb

.field public static final MENU_DELETE_OK:I = 0xcd

.field public static final MENU_RESTORE_ALL:I = 0xc8

.field private static final MENU_RSTORE_MESSAGE:I = 0xca

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0xcf

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xcc

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field public static final RESTORE_MESSAGE_TOKEN:I = 0x70b

.field private static final TAG:Ljava/lang/String; = "Mms/SpamMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static mDeleteComplete:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarDeleteListCancelButton:Landroid/widget/TextView;

.field private mActionbarDeleteListDoneButton:Landroid/widget/TextView;

.field private mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

.field private mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

.field private final mContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewLandscape:Landroid/view/View;

.field private mEmptyViewMultiWindow:Landroid/view/View;

.field private mEmptyViewPortrait:Landroid/view/View;

.field private mFirstItemId:J

.field private mIsAnimationEnable:Z

.field private mIsDeleteMsgAnimating:Z

.field private mIsLandscape:Z

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

.field private mRestoreConfirmDialog:Landroid/app/AlertDialog;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectedPosition:I

.field mTotalConversations:Landroid/widget/TextView;

.field mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteComplete:Z

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SpamMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    iput v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 159
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 161
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 163
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 165
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 168
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 169
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    .line 173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J

    .line 175
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-boolean v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsDeleteMsgAnimating:Z

    .line 184
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 185
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mRestoreConfirmDialog:Landroid/app/AlertDialog;

    .line 619
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$3;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1354
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$10;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    .line 1515
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$11;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1708
    return-void
.end method

.method private BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5
    .parameter "address"
    .parameter "body"
    .parameter "date"

    .prologue
    .line 1995
    const-wide/16 v2, -0x1

    .line 1996
    .local v2, threadID:J
    const/4 v0, 0x0

    .line 1998
    .local v0, NameOrAddress:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1999
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v2

    .line 2000
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2003
    :cond_0
    if-nez p2, :cond_1

    .line 2004
    const-string p2, ""

    .line 2007
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.mms.intent.action.LOCKSCREEN_HOVER_UNREAD_MSG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "ThreadId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2009
    const-string v4, "Address"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    const-string v4, "Body"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    const-string v4, "Date"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2013
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2015
    return-void
.end method

.method private BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    .locals 24
    .parameter "pdu"
    .parameter "mmsUri"

    .prologue
    .line 1914
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "sub"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "sub_cs"

    aput-object v2, v4, v1

    .line 1918
    .local v4, SPAM_MMS_STATUS_PROJECTION:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 1919
    .local v15, mCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1920
    .local v8, address:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1921
    .local v14, mBody:Ljava/lang/String;
    const-wide/16 v10, -0x1

    .line 1924
    .local v10, date:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1927
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1928
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1929
    .local v18, msgId:J
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    .line 1931
    .local v20, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 1932
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    mul-long v10, v1, v5

    .line 1934
    const/16 v23, 0x0

    .line 1935
    .local v23, subject:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1936
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    .line 1940
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v1, :cond_7

    .line 1942
    const/16 v17, 0x0

    .line 1943
    .local v17, messageBody:Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v16, v0

    .line 1945
    .local v16, mMessagePdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v22

    .line 1947
    .local v22, slideshow:Lcom/android/mms/model/SlideshowModel;
    const/4 v1, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v13

    .line 1948
    .local v13, firstSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v13, :cond_1

    .line 1949
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1950
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    .line 1954
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1955
    .local v9, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    .line 1956
    .local v21, offset:I
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1957
    const/16 v1, 0xa

    const/16 v2, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    .line 1958
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    const/16 v1, 0x20

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1962
    :cond_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1963
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 1964
    const/4 v1, 0x0

    const/16 v2, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1966
    :cond_3
    const/16 v1, 0xa

    const/16 v2, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 1967
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 1979
    .end local v9           #buf:Ljava/lang/StringBuilder;
    .end local v13           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v16           #mMessagePdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v17           #messageBody:Ljava/lang/String;
    .end local v18           #msgId:J
    .end local v20           #msgUri:Landroid/net/Uri;
    .end local v21           #offset:I
    .end local v22           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v23           #subject:Ljava/lang/String;
    :cond_5
    :goto_0
    if-eqz v15, :cond_6

    .line 1980
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1984
    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v1}, Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1985
    return-void

    .line 1971
    .restart local v18       #msgId:J
    .restart local v20       #msgUri:Landroid/net/Uri;
    .restart local v23       #subject:Ljava/lang/String;
    :cond_7
    move-object/from16 v14, v23

    goto :goto_0

    .line 1974
    :catch_0
    move-exception v12

    .line 1975
    .local v12, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1979
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .end local v18           #msgId:J
    .end local v20           #msgUri:Landroid/net/Uri;
    .end local v23           #subject:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_8

    .line 1980
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SpamMessageManager;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SpamMessageManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SpamMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SpamMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->updateEmptyViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SpamMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SpamMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SpamMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SpamMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SpamMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SpamMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-boolean p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteComplete:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SpamMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->startViewer(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->deleteMessage(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SpamMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SpamMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$3100(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 90
    invoke-static/range {p0 .. p11}, Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->restoreSelectedMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SpamMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/animation/MsgListAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-object v0
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "simSlot"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"

    .prologue
    .line 2056
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2057
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    const-string v2, "subject"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    const-string v2, "sim_slot"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2062
    if-eqz p6, :cond_0

    const-string v2, "date"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2063
    :cond_0
    const-string v2, "read"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2065
    invoke-static {p5}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 2067
    .local v0, imsi:Ljava/lang/String;
    const-string v2, "sim_imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    if-eqz p8, :cond_1

    const-string v2, "status"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2070
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p9, v2

    if-eqz v2, :cond_2

    const-string v2, "thread_id"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2073
    :cond_2
    if-eqz p11, :cond_3

    invoke-virtual {v1, p11}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2075
    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"

    .prologue
    .line 2028
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2029
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2033
    :cond_0
    const-string v1, "read"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2034
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2035
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2038
    :cond_2
    if-eqz p10, :cond_3

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2040
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1311
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1135
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 797
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 800
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 801
    if-eqz p2, :cond_0

    const v1, 0x7f0a009d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 803
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 806
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/SpamMessageManager$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SpamMessageManager$4;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 811
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 812
    return-void

    .line 801
    :cond_0
    const v1, 0x7f0a009c

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;ZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 778
    const v4, 0x7f030029

    invoke-static {p2, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 779
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 780
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 781
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 783
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    const v4, 0x7f0a009b

    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0a009a

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "resourceId"

    .prologue
    .line 2080
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2081
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2082
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2083
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2084
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2085
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2086
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2088
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mRestoreConfirmDialog:Landroid/app/AlertDialog;

    .line 2089
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mRestoreConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2091
    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;)V
    .locals 7
    .parameter "uriMessage"

    .prologue
    const/4 v4, 0x0

    .line 749
    if-eqz p1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    invoke-direct {v2, v5, v6, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 755
    :cond_1
    return-void
.end method

.method private deleteSelectedMessages()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 766
    const-string v1, "Mms/SpamMessageManager"

    const-string v2, "deleteSelectedMessages()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 769
    :cond_0
    new-instance v2, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1, v4}, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Z)V

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    const v1, 0x7f0a009c

    :goto_0
    invoke-static {v2, v3, p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;ZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 772
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 773
    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 774
    return-void

    .line 769
    .end local v0           #dlg:Landroid/app/AlertDialog;
    :cond_1
    const v1, 0x7f0a01d7

    goto :goto_0
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 733
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 734
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 735
    return-void
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$5;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 724
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getOrCreateThreadId(Ljava/lang/String;)J
    .locals 3
    .parameter "recipient"

    .prologue
    .line 1988
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1990
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1991
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 934
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 938
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 952
    if-nez p1, :cond_0

    .line 953
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    :goto_0
    return-object v0

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private hideSoftInputKeyboard()V
    .locals 2

    .prologue
    .line 2113
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2114
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 2115
    return-void
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$2;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 558
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 560
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 561
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 473
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    new-instance v0, Lcom/android/mms/ui/SpamMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f030091

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 486
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$1;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 512
    return-void
.end method

.method private initResourceRefs()V
    .locals 7

    .prologue
    const v6, 0x7f0a0125

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 445
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 446
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 447
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 448
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e00cd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 449
    const v2, 0x7f0e00df

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 450
    const v2, 0x7f0e00e0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 451
    const v2, 0x7f0e003c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    .line 452
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    .line 453
    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    .line 454
    const v2, 0x7f0e0048

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    .line 456
    const v2, 0x7f0e003f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v2, 0x7f0e0047

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 460
    .local v1, temp:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 461
    const v2, 0x7f0e004b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 468
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 469
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 470
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 566
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 969
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 970
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 971
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 972
    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J

    .line 973
    const/4 v2, 0x1

    .line 976
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMultiWindowMode()Z
    .locals 5

    .prologue
    .line 1211
    const/4 v2, 0x0

    .line 1214
    .local v2, isMultiWindowMode:Z
    :try_start_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    .line 1215
    .local v0, MW:Landroid/sec/multiwindow/MultiWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1216
    const/4 v2, 0x1

    .line 1224
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return v2

    .line 1218
    .restart local v0       #MW:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1220
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :catch_0
    move-exception v1

    .line 1221
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 711
    const-string v0, "MessageListMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 712
    return-void
.end method

.method private openThread(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 687
    const-string v4, "Mms/SpamMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openThread startActivity for position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v4

    if-lez v4, :cond_0

    .line 703
    :goto_0
    return-void

    .line 691
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v3, "smsto"

    .line 695
    .local v3, szData:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, number:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 697
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 699
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->drawMessagePointer(I)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1229
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$8;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1243
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SpamMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1244
    const/4 v1, 0x1

    return v1
.end method

.method private removeDeleteModeListActionbar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1118
    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1120
    :cond_2
    return-void
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private restoreSelectedMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 758
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "restoreSelectedMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Lcom/android/mms/ui/MessageItem;)V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f0a0368

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/SpamMessageManager;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 763
    return-void

    .line 760
    :cond_0
    const v0, 0x7f0a0367

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 706
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 728
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 729
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 730
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 961
    const v1, 0x7f0a0125

    const v2, 0x7f0b0003

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/SpamMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V

    .line 1331
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$9;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1326
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1335
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1337
    .local v7, sOrderBySQL:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1339
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIMIT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #sOrderBySQL:Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :goto_0
    return-void

    .line 1343
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1344
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1348
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1349
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->beforeQuery()V

    .line 1317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V

    .line 1318
    return-void
.end method

.method private startViewer(I)V
    .locals 13
    .parameter "position"

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x1

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 816
    .local v7, itemObject:Ljava/lang/Object;
    instance-of v0, v7, Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v7

    .line 818
    check-cast v1, Landroid/database/Cursor;

    .line 819
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 823
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 825
    const/4 v6, 0x0

    .line 826
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 827
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 829
    .local v11, threadId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 832
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 833
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 834
    const-string v0, "isSpam"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SpamMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 861
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 865
    .local v8, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00a4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 838
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_2

    .line 840
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    if-ne v0, v2, :cond_7

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v4, :cond_7

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v2

    if-gt v0, v2, :cond_7

    .line 845
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_1

    .line 848
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 849
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_2
    const/high16 v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 854
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 855
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 856
    const-string v0, "isSpam"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 857
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SpamMessageManager;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 851
    :cond_8
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1249
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/SpamMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActionBarText()V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->updateCheckedMsgCount()V

    .line 1063
    return-void
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1001
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 1042
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1047
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_7

    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1053
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1054
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1045
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1050
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1057
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateEmptyScreen(IZ)V
    .locals 9
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1277
    const-string v2, "Mms/SpamMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEmptyScreen(),resultCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1279
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v8, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    .line 1281
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1282
    .local v1, nListMode:I
    if-ne v1, v3, :cond_1

    .line 1283
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    .line 1308
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_0
    move v2, v4

    .line 1279
    goto :goto_0

    .line 1285
    .restart local v1       #nListMode:I
    :cond_1
    if-ne v1, v8, :cond_2

    .line 1286
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    invoke-virtual {p0, v8, v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1289
    :cond_2
    if-nez p1, :cond_4

    .line 1290
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    iget-boolean v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->updateEmptyViewVisibility(Z)V

    .line 1296
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    if-eqz p2, :cond_3

    .line 1298
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1306
    :cond_3
    :goto_2
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1300
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    if-eqz p2, :cond_3

    .line 1303
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmptyViewVisibility(Z)V
    .locals 4
    .parameter "isLandscape"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1261
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->isMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :goto_0
    return-void

    .line 1265
    :cond_0
    if-eqz p1, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public drawMessagePointer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 677
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->setListItemSelected(J)V

    .line 684
    return-void
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 573
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/SpamMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 577
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 578
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 580
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 581
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, szMsgType:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .local v0, objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0

    .line 583
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 584
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/SpamMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 591
    const-string v6, "Mms/SpamMessageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNumber(),position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 595
    .local v3, itemObject:Ljava/lang/Object;
    instance-of v6, v3, Landroid/database/Cursor;

    if-nez v6, :cond_1

    .line 613
    .end local v3           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 597
    .restart local v3       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v3

    check-cast v0, Landroid/database/Cursor;

    move-object v1, v0

    .line 599
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-ltz v6, :cond_0

    .line 603
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v1}, Lcom/android/mms/ui/SpamMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    .line 604
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v4, :cond_0

    .line 606
    iget-object v6, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 607
    iget-object v5, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #itemObject:Ljava/lang/Object;
    .end local v4           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v2

    .line 610
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 947
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2095
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListIndex(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2100
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 738
    if-gez p1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return v3

    .line 741
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 742
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 743
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 745
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 430
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 432
    const-string v1, "Mms/SpamMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configurationChanged(),newConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    .line 435
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 436
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->updateEmptyViewVisibility(Z)V

    .line 442
    :cond_0
    :goto_1
    return-void

    .line 433
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v0

    .line 439
    .local v0, nListMode:I
    if-eq v0, v2, :cond_3

    if-ne v0, v5, :cond_0

    .line 440
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->updateDeleteModeListActionBar(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 193
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setContentView(I)V

    .line 201
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 204
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initResourceRefs()V

    .line 205
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initListAdapter()V

    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initListAnimation()V

    .line 207
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initEtc()V

    .line 209
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 210
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mRestoreConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mRestoreConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->removeDeleteModeListActionbar()V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 264
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    .line 265
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 267
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->hideProgressDialog()V

    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 270
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 419
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 421
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    .line 425
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQuery()V

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 378
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 344
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 348
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 352
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 353
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->finish()V

    goto :goto_0

    .line 362
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->restoreSelectedMessages()V

    goto :goto_0

    .line 365
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 369
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcd -> :sswitch_3
        0xce -> :sswitch_4
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 233
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/16 v4, 0xcd

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 303
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_4

    .line 309
    const/16 v0, 0xce

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 313
    const v0, 0x7f0a00a2

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 320
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 322
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 337
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 315
    :cond_2
    const v0, 0x7f0a006a

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    const/16 v0, 0xc8

    const v1, 0x7f0a0365

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 333
    const/16 v0, 0xc9

    const v1, 0x7f0a0366

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 927
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 917
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 226
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setAnimationEnable(Z)V

    .line 227
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 274
    const-string v2, "Mms/SpamMessageManager"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->saveListOffset()V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 278
    iget-boolean v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 280
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 283
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/SpamMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    return-void

    .line 286
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 288
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->refreshFontSize()V

    .line 216
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->startFakeAsyncQuery()V

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 219
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 240
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 388
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 393
    const-string v2, "Mms/SpamMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired(),itemIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flickDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 398
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 414
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 404
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/SpamMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 409
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->openThread(I)V

    .line 410
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 383
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 2104
    if-eqz p1, :cond_0

    .line 2106
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->hideSoftInputKeyboard()V

    .line 2108
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2109
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 1
    .parameter "isAnimationEnable"

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    .line 874
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    .line 877
    :cond_0
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 719
    iput p1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 720
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 10
    .parameter "nListMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const-wide/16 v8, 0x190

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1139
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListModeLayout(),nListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->setCurrentListMode(I)I

    .line 1144
    const/16 v0, 0x50

    .line 1145
    .local v0, heightOfTitle:I
    if-lez p1, :cond_3

    .line 1146
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1148
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1149
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v3, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1160
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1162
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->updateDeleteModeListActionBar(I)V

    .line 1164
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1166
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1167
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1201
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setMessageListMode(I)V

    .line 1202
    if-eqz p2, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1206
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->invalidateOptionsMenu()V

    .line 1207
    return-void

    .line 1157
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1173
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->clearCheckedList()V

    .line 1175
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    .line 1176
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v5, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1186
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1188
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->removeDeleteModeListActionbar()V

    .line 1190
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 1191
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1192
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->updateNormalModeListActionBar()V

    .line 1198
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1183
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 880
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 882
    return-void
.end method

.method public updateDeleteModeListActionBar(I)V
    .locals 4
    .parameter "nListMode"

    .prologue
    const/4 v3, 0x0

    .line 1066
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1067
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1068
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1069
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1070
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 1072
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1074
    .local v0, title:Landroid/widget/TextView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1075
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/SpamMessageManager$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SpamMessageManager$6;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/SpamMessageManager$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SpamMessageManager$7;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->updateActionBarText()V

    .line 1103
    return-void

    .line 1076
    .restart local v0       #title:Landroid/widget/TextView;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1077
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateNormalModeListActionBar()V
    .locals 3

    .prologue
    const v2, 0x7f0a036b

    .line 990
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 991
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 992
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
