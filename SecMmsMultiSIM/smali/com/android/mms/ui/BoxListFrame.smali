.class public Lcom/android/mms/ui/BoxListFrame;
.super Landroid/widget/FrameLayout;
.source "BoxListFrame.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;,
        Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;,
        Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field public static final ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_IN_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_OUT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_PUSH_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_SENT_MESSAGE_URI:Landroid/net/Uri; = null

.field private static final BLACK_LIST:Ljava/lang/String; = "blacklist"

.field private static final CACHE_SIZE:I = 0x32

.field private static final DELETE_MSG_QUERY_TOKEN:I = 0x709

.field private static final DELETE_SELECTED_MSG_TOKEN:I = 0x70a

.field private static final DRAFTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6ac

.field private static final DRAFTBOX_LIST_QUERY_TOKEN:I = 0x6ab

.field public static final FLAG_DELETE_COMPLETE:I = 0x66

.field public static final FLAG_DELETE_START:I = 0x65

.field private static final HANDLER_MSG_MOVE_OK:I = 0x3e8

.field private static final INBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a6

.field private static final INBOX_LIST_QUERY_TOKEN:I = 0x6a5

.field public static final INDEX_DRAFT:I = 0x3

.field public static final INDEX_INBOX:I = 0x0

.field public static final INDEX_OUTBOX:I = 0x2

.field public static final INDEX_SENTBOX:I = 0x1

.field public static final INDEX_WAPPUSH:I = 0x4

.field private static final MENU_ADD_TO_BLACK_LIST:I = 0x36

.field private static final MENU_ADD_TO_WHITE_LIST:I = 0x35

.field private static final MENU_COMPOSE_NEW:I = 0x1

.field private static final MENU_COPY_TEXT:I = 0x8

.field private static final MENU_COPY_TO_SIM:I = 0xd

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_DELETE_CANCEL:I = 0x3a

.field private static final MENU_DELETE_OK:I = 0x39

.field private static final MENU_EDIT:I = 0xc

.field private static final MENU_FORWARD:I = 0x7

.field private static final MENU_GOTO_MAILBOX:I = 0x11

.field private static final MENU_LOCK:I = 0xb

.field private static final MENU_LOCK_MESSAGE:I = 0x1c

.field private static final MENU_MOVE_CANCEL:I = 0x3c

.field private static final MENU_MOVE_MSG:I = 0x10

.field private static final MENU_MOVE_OK:I = 0x3b

.field private static final MENU_PREFERENCES:I = 0x6

.field private static final MENU_REMOVE_FROM_BLACK_LIST:I = 0x38

.field private static final MENU_REMOVE_FROM_WHITE_LIST:I = 0x37

.field private static final MENU_RESEND:I = 0x9

.field private static final MENU_SEARCH:I = 0x3

.field private static final MENU_SPAM_MESSAGE:I = 0xf

.field private static final MENU_TIMEDSEND:I = 0x4

.field private static final MENU_UNLOCK:I = 0xa

.field private static final MENU_UNLOCK_MESSAGE:I = 0x1d

.field private static final MENU_VIEW_CONV:I = 0x5

.field private static final MENU_VIEW_DETAILS:I = 0xe

.field public static final MOVE_TO_INBOX_WITH_NEWMSG_NOTI:Z = true

.field public static final MOVE_TO_OUTBOX_WITH_FAILED_NOTI:Z = true

.field private static final OUTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a8

.field private static final OUTBOX_LIST_QUERY_TOKEN:I = 0x6a7

.field private static final PUSHBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6ae

.field private static final PUSHBOX_LIST_QUERY_TOKEN:I = 0x6ad

.field private static final SENTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6aa

.field private static final SENTBOX_LIST_QUERY_TOKEN:I = 0x6a9

.field public static final START_VIEW_LATEST_NEW_MESSAGE:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final WHITE_LIST:Ljava/lang/String; = "whitelist"

.field private static boxId:I

.field public static mContxtMenu:Landroid/view/ContextMenu;

.field private static mDialogMessageDetails:Ljava/lang/String;

.field private static mIsSearchMode:Z

.field private static mNotifyFailed:Z

.field private static mStatusBarNoti:Z

.field private static mStatusBarNotiPushMessage:Z


# instance fields
.field private final ACTION_BAR_INIT:I

.field private final ACTION_BAR_RESUME:I

.field private isKeyLongPressed:Z

.field items:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mBoxButton:Landroid/widget/LinearLayout;

.field private mBoxButtonText:Landroid/widget/Button;

.field private mBoxListHeader:Landroid/widget/LinearLayout;

.field private mBoxListHeaderText:Landroid/widget/TextView;

.field private final mBoxListKeyListener:Landroid/view/View$OnKeyListener;

.field private mBoxListMoveTitle:Landroid/widget/LinearLayout;

.field private final mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mBoxListTitle:Landroid/widget/LinearLayout;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field protected mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private final mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

.field private mCountToDelete:I

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteConfirmDialog:Landroid/app/AlertDialog;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteListActionBarCancelButton:Landroid/widget/TextView;

.field private mDeleteListActionBarDoneButton:Landroid/widget/TextView;

.field private mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

.field private mDeleteListActionBarTitle:Landroid/widget/TextView;

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogId:I

.field public mEmptyView:Landroid/view/View;

.field private mEmptyViewLandscape:Landroid/view/View;

.field private mEmptyViewMultiWindow:Landroid/view/View;

.field private mEmptyViewPortrait:Landroid/view/View;

.field private mFirstItemId:J

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mIsDeleteMode:Z

.field private mIsDeletedAll:Z

.field private mIsLandscape:Z

.field private mIsMoveMode:Z

.field private mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

.field public mListType:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgLocked:Z

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

.field private mMsgType:I

.field private mMsgUri:Landroid/net/Uri;

.field private mNewButton:Landroid/widget/LinearLayout;

.field private mPosition:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectBoxDialog:Landroid/app/AlertDialog;

.field private mSelectedItemTop:I

.field private mSelectedMMSMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedMMSThreadIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mSelectedSMSMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyLeft_Move:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mTopView:Landroid/widget/FrameLayout;

.field private mTotalMessages:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mVisiblePosition:I

.field private messageHandler:Landroid/os/Handler;

.field private moveMsgCount:I

.field private moveProgressDialog:Landroid/app/ProgressDialog;

.field private onBoxListChanged:Landroid/view/View$OnClickListener;

.field private onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private onNewMessage:Landroid/view/View$OnClickListener;

.field private startNotiViewer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    const-string v0, "BoxList"

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    .line 308
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    .line 323
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 600
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    .line 601
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    .line 603
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    .line 2364
    const-string v0, "content://mms-sms/allinmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 2367
    const-string v0, "content://mms-sms/alloutmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 2370
    const-string v0, "content://mms-sms/allsentmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 2373
    const-string v0, "content://mms-sms/alldraft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 2376
    const-string v0, "content://mms-sms/allwappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 3123
    sput v1, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 331
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 250
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    .line 252
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    .line 253
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 266
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mView:Landroid/view/View;

    .line 267
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mPosition:I

    .line 290
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    .line 291
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 297
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 298
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    .line 309
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sentbox"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "draft"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->items:[Ljava/lang/String;

    .line 317
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->isKeyLongPressed:Z

    .line 320
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 321
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 325
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 326
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 328
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    .line 537
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 538
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 540
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_INIT:I

    .line 541
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_RESUME:I

    .line 927
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$5;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 970
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$6;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    .line 978
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$7;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 1132
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$9;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    .line 1181
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$10;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1468
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1469
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1470
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1471
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 2447
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$19;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    .line 3503
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$22;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->messageHandler:Landroid/os/Handler;

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    .line 252
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    .line 253
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 266
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mView:Landroid/view/View;

    .line 267
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mPosition:I

    .line 290
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    .line 291
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 297
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 298
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    .line 309
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sentbox"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "draft"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->items:[Ljava/lang/String;

    .line 317
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->isKeyLongPressed:Z

    .line 320
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 321
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 325
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 326
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 328
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    .line 537
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 538
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 540
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_INIT:I

    .line 541
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_RESUME:I

    .line 927
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$5;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 970
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$6;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    .line 978
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$7;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 1132
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$9;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    .line 1181
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$10;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1468
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1469
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1470
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1471
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 2447
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$19;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    .line 3503
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$22;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->messageHandler:Landroid/os/Handler;

    .line 337
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->showSelectBoxDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/BoxListFrame;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/BoxListFrame;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ContextMenu;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListFrame;->addVIPModeListMenu(Landroid/view/ContextMenu;J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->moveSelectedMessages()V

    return-void
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    sput-boolean p0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BoxListFrame;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->setChecked(IZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->getCountOfNotDelMsg(Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->deleteMessage(Landroid/database/Cursor;ZII)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/BoxListFrame;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/BoxListFrame;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListAdapter$MessageData;)Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/BoxListFrame;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/BoxListFrame;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    return-wide p1
.end method

.method static synthetic access$4402(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    return p1
.end method

.method static synthetic access$4500()I
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return v0
.end method

.method static synthetic access$4502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    sput p0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return p0
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/SelectBoxTypeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/mms/ui/BoxListFrame;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    return p1
.end method

.method static synthetic access$5208(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 167
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/mms/ui/BoxListFrame;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startFakeAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    return v0
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 3715
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3716
    return-void
.end method

.method private addVIPModeListMenu(Landroid/view/ContextMenu;J)V
    .locals 9
    .parameter "menu"
    .parameter "threadId"

    .prologue
    .line 1142
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, p2, p3, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 1143
    .local v2, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1150
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1151
    .local v4, recipient:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 1153
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1157
    const/16 v5, 0xc

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\\"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "/"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, ":"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "*"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "?"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "\""

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "<"

    aput-object v6, v0, v5

    const/4 v5, 0x7

    const-string v6, ">"

    aput-object v6, v0, v5

    const/16 v5, 0x8

    const-string v6, "|"

    aput-object v6, v0, v5

    const/16 v5, 0x9

    const-string v6, ";"

    aput-object v6, v0, v5

    const/16 v5, 0xa

    const-string v6, "\n"

    aput-object v6, v0, v5

    const/16 v5, 0xb

    const-string v6, "#"

    aput-object v6, v0, v5

    .line 1158
    .local v0, INVALID_CHAR:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 1159
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-object v7, v0, v3

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1163
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1165
    const/4 v5, 0x0

    const/16 v6, 0x37

    const/4 v7, 0x0

    const v8, 0x7f0a047d

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1171
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1173
    const/4 v5, 0x0

    const/16 v6, 0x38

    const/4 v7, 0x0

    const v8, 0x7f0a047c

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1167
    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x35

    const/4 v7, 0x0

    const v8, 0x7f0a047b

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 1175
    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x36

    const/4 v7, 0x0

    const v8, 0x7f0a047a

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private afterResult(I)V
    .locals 14
    .parameter "resultCount"

    .prologue
    const/16 v5, 0x8

    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1002
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v12

    .line 1003
    .local v12, listView:Landroid/view/View;
    if-nez p1, :cond_7

    .line 1004
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyViewVisibility(Z)V

    .line 1006
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-ne v0, v3, :cond_6

    .line 1009
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1011
    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 1013
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 1023
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-nez v0, :cond_3

    .line 1025
    const/4 v9, 0x0

    .line 1028
    .local v9, UnreadCnt:I
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(sms.type=1) AND (read=0)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1029
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1030
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1031
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(pdu.msg_box=1) AND (read=0)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1035
    if-eqz v10, :cond_3

    .line 1036
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v9, v0

    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1046
    .end local v9           #UnreadCnt:I
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v13, :cond_5

    .line 1047
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_5

    .line 1051
    :try_start_0
    const-string v0, "mms"

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1052
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1053
    .local v4, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "msg_box"

    aput-object v1, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1054
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 1056
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1057
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_4

    .line 1058
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1059
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    :cond_4
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1091
    .end local v4           #messageUri:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-void

    .line 1014
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-ne v0, v3, :cond_1

    .line 1015
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto/16 :goto_0

    .line 1019
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1063
    .restart local v4       #messageUri:Landroid/net/Uri;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1084
    .end local v4           #messageUri:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1085
    .local v11, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1086
    sput-object v2, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    goto :goto_1

    .line 1068
    .end local v11           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_4
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1069
    .restart local v4       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    aput-object v1, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v10

    .line 1070
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 1072
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 1073
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_9

    .line 1074
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1075
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1079
    :cond_9
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method private beforeResult()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 996
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_0
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 1713
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1715
    .local v1, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 1717
    .local v0, fontSize:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1718
    :cond_0
    const/16 v2, 0x6c

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1724
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1726
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v2

    .line 1719
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 1720
    :cond_2
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1722
    :cond_3
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private checkContactValidityWithDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 822
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContactValidityWithDelay():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$4;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 831
    return-void
.end method

.method private closeSearchView()V
    .locals 1

    .prologue
    .line 3688
    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    .line 3689
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 3690
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3692
    :cond_0
    return-void
.end method

.method private confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 2120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2121
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a009a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p2, :cond_0

    const v2, 0x7f0a009d

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2129
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2130
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 2131
    return-void

    .line 2121
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x7f0a009c

    goto :goto_0
.end method

.method private confirmRecvMmsDialog(Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 892
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 893
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 894
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 895
    const-string v1, "retrieve?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 896
    const v1, 0x7f0a011e

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 897
    const v1, 0x7f0a011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 899
    return-void
.end method

.method private deleteMessage(Landroid/database/Cursor;ZII)V
    .locals 16
    .parameter "cursor"
    .parameter "delLockedMsg"
    .parameter "deletedCount"
    .parameter "notDelLockedMsgCount"

    .prologue
    .line 3056
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3057
    .local v9, msgId:J
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3058
    .local v12, msgType:Ljava/lang/String;
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 3059
    .local v11, msgLock:Ljava/lang/Boolean;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3061
    .local v13, threadId:J
    const/16 v1, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3063
    .local v7, groupId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    .line 3109
    :cond_0
    :goto_1
    return-void

    .line 3058
    .end local v7           #groupId:J
    .end local v11           #msgLock:Ljava/lang/Boolean;
    .end local v13           #threadId:J
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3067
    .restart local v7       #groupId:J
    .restart local v11       #msgLock:Ljava/lang/Boolean;
    .restart local v13       #threadId:J
    :cond_2
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage msgType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-string v1, "mms"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3070
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3083
    .local v4, MessageUri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v1

    sub-int v1, v1, p4

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 3084
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 3086
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v2, 0x70a

    new-instance v3, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    invoke-direct {v3, v5, v6, v4, v15}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 3072
    .end local v4           #MessageUri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 3073
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #MessageUri:Landroid/net/Uri;
    goto :goto_2

    .line 3076
    .end local v4           #MessageUri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v7, v8}, Lcom/android/mms/ui/BoxListFrame;->isGroupSms(JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3077
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #MessageUri:Landroid/net/Uri;
    goto :goto_2

    .line 3080
    .end local v4           #MessageUri:Landroid/net/Uri;
    :cond_6
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #MessageUri:Landroid/net/Uri;
    goto :goto_2

    .line 3089
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 3090
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v2, 0x70a

    new-instance v3, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    invoke-direct {v3, v5, v6, v4, v15}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deleteSelectedItems()V
    .locals 10

    .prologue
    .line 3017
    const/4 v2, 0x0

    .line 3018
    .local v2, deleteAll:Z
    const/4 v3, 0x0

    .line 3019
    .local v3, hasLockedMessages:Z
    const/4 v6, 0x0

    .line 3021
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3022
    const/4 v2, 0x1

    .line 3028
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v7

    .line 3029
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    if-nez v3, :cond_2

    .line 3030
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 3032
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3033
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3034
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3035
    .local v9, locked:I
    if-eqz v9, :cond_0

    .line 3036
    const/4 v3, 0x1

    .line 3029
    .end local v9           #locked:I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3025
    .end local v7           #count:I
    .end local v8           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3043
    .restart local v7       #count:I
    .restart local v8       #i:I
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    .line 3044
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    const v5, 0x7f0a009c

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;I)V

    .line 3051
    return-void

    .line 3044
    :cond_3
    const v5, 0x7f0a01d7

    goto :goto_2
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 2175
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2176
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2177
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1873
    if-eqz p1, :cond_0

    .line 1874
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1876
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getBoxId()I
    .locals 1

    .prologue
    .line 3125
    sget v0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return v0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1359
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1360
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1363
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    .line 1388
    :cond_0
    if-eqz v3, :cond_1

    .line 1390
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1393
    :cond_1
    :goto_0
    return-object v2

    .line 1366
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1369
    new-instance v10, Lcom/android/mms/ui/BoxListFrame$12;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/BoxListFrame$12;-><init>(Lcom/android/mms/ui/BoxListFrame;IFZ)V

    .line 1375
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1376
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_5

    .line 1380
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1381
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1388
    :goto_1
    if-eqz v3, :cond_3

    .line 1390
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v0

    .line 1393
    goto :goto_0

    .line 1383
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 1384
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    :try_start_4
    const-string v1, "BoxListActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1388
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_4

    .line 1390
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 1388
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1383
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_5
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1400
    const-string v1, "SmsViewFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCachedMessageItemWpm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1403
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1404
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    const/4 v8, 0x0

    .line 1407
    .local v8, invalidData:Z
    if-nez v3, :cond_1

    .line 1456
    if-eqz v3, :cond_0

    .line 1457
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1460
    :cond_0
    :goto_0
    return-object v2

    .line 1410
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1415
    :cond_2
    if-nez v3, :cond_4

    .line 1421
    :cond_3
    :goto_1
    if-ne v8, v7, :cond_6

    .line 1422
    const-string v1, "BoxListFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no msg id  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    if-eqz v3, :cond_0

    .line 1457
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1416
    :cond_4
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v1, v5, p2

    if-eqz v1, :cond_3

    .line 1417
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v8, 0x1

    .line 1418
    :cond_5
    if-nez v3, :cond_2

    goto :goto_1

    .line 1430
    :cond_6
    new-instance v10, Lcom/android/mms/ui/BoxListFrame$13;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/BoxListFrame$13;-><init>(Lcom/android/mms/ui/BoxListFrame;IFZ)V

    .line 1436
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1440
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_9

    .line 1445
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1447
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    const-string v1, "BoxListFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1456
    :goto_2
    if-eqz v3, :cond_7

    .line 1457
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v2, v0

    .line 1460
    goto/16 :goto_0

    .line 1456
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_8

    .line 1457
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 1456
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1452
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_9
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2
.end method

.method private getCountOfNotDelMsg(Landroid/database/Cursor;Z)I
    .locals 7
    .parameter "cursor"
    .parameter "delLockMsg"

    .prologue
    const/4 v6, 0x1

    .line 2343
    const/4 v3, 0x0

    .line 2345
    .local v3, notDelLockedMsgCount:I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2347
    :cond_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2348
    .local v0, msgId:J
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/mms/ui/BoxListAdapter;->isCheckedMsgId(JLjava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 2349
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2350
    .local v2, msgLock:I
    if-lez v2, :cond_1

    .line 2351
    if-nez p2, :cond_1

    .line 2352
    add-int/lit8 v3, v3, 0x1

    .line 2355
    .end local v2           #msgLock:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2358
    .end local v0           #msgId:J
    :cond_2
    return v3
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1338
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$11;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "listType"
    .parameter "withCount"

    .prologue
    .line 3632
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3633
    .local v1, stringBuf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 3634
    .local v2, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3636
    .local v0, countString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3658
    :goto_0
    if-eqz v2, :cond_1

    .line 3659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3661
    if-eqz p2, :cond_0

    .line 3662
    invoke-static {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3663
    if-eqz v0, :cond_0

    .line 3664
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3668
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3671
    :goto_1
    return-object v3

    .line 3638
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a030a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3639
    goto :goto_0

    .line 3642
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a030b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3643
    goto :goto_0

    .line 3646
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3647
    goto :goto_0

    .line 3650
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a030e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3651
    goto :goto_0

    .line 3654
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3671
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getListView()Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1

    .prologue
    .line 2562
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method private static getMessageCount(Landroid/content/Context;IZ)I
    .locals 17
    .parameter "context"
    .parameter "listType"
    .parameter "getUnreadCount"

    .prologue
    .line 3537
    const/4 v15, 0x0

    .line 3538
    .local v15, count:I
    const/4 v8, 0x0

    .line 3539
    .local v8, smsSelection:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3540
    .local v12, mmsSelection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3541
    .local v4, unreadSelection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "count(*)"

    aput-object v5, v3, v1

    .line 3542
    .local v3, projection:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 3544
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 3545
    const-string v4, "read = 0"

    .line 3548
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3578
    :goto_0
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 3579
    const-string v1, "content://mms-sms/wap-push-messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3580
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3581
    if-eqz v16, :cond_2

    .line 3582
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3583
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 3585
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3616
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    return v15

    .line 3550
    :pswitch_0
    const-string v8, "(sms.type = 1)"

    .line 3551
    const-string v12, "(pdu.msg_box = 1) AND (m_type != 134) AND (m_type != 136)"

    .line 3553
    goto :goto_0

    .line 3556
    :pswitch_1
    const-string v8, "(sms.type = 2)"

    .line 3557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((hidden = 0) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3558
    const-string v12, "(pdu.msg_box = 2)"

    .line 3559
    goto :goto_0

    .line 3562
    :pswitch_2
    const-string v8, "(sms.type = 4) OR (sms.type = 5) OR (sms.type = 6)"

    .line 3566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((hidden = 0) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3568
    const-string v12, "(pdu.msg_box = 4)"

    .line 3569
    goto :goto_0

    .line 3572
    :pswitch_3
    const-string v8, "(sms.type = 3)"

    .line 3573
    const-string v12, "(pdu.msg_box = 3) AND (pdu.thread_id != 9223372036854775806)"

    goto :goto_0

    .line 3590
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3594
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3595
    if-eqz v16, :cond_6

    .line 3596
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3597
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 3599
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3603
    :cond_6
    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 3604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3607
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3608
    if-eqz v16, :cond_2

    .line 3609
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3610
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v15, v1

    .line 3612
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 3548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getMessageCountString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 3620
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3622
    .local v0, stringBuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 3623
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCount(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3626
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCount(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3628
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"

    .prologue
    .line 1742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1743
    .local v4, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1744
    .local v10, res:Landroid/content/res/Resources;
    const-wide/16 v7, 0x0

    .line 1745
    .local v7, id:J
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1746
    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 1750
    .local v13, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    .local v9, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v14, 0x7f0a00a5

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const v14, 0x7f0a00a8

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/ui/BoxListFrame;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v6

    .line 1763
    .local v6, from:Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1764
    const v14, 0x7f0a00a9

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .end local v6           #from:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1770
    const v14, 0x7f0a0016

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1777
    const v14, 0x7f0a00b0

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 1780
    .local v12, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_2

    .line 1781
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    :goto_1
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1788
    const v14, 0x7f0a0318

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([B)V

    .line 1790
    .local v11, str:Ljava/lang/String;
    const-string v14, "personal"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1791
    const v14, 0x7f0a0313

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    :cond_0
    :goto_2
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1807
    const v14, 0x7f0a00b1

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v14

    const-wide/16 v16, 0x3ff

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const/16 v14, 0x200e

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1810
    const v14, 0x7f0a0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v9           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v11           #str:Ljava/lang/String;
    .end local v12           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_3
    return-object v14

    .line 1752
    :catch_0
    move-exception v5

    .line 1753
    .local v5, e:Lcom/google/android/mms/MmsException;
    sget-object v14, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to load the message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a00a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 1765
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #from:Ljava/lang/String;
    .restart local v9       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    const v14, 0x7f0a0069

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1783
    .end local v6           #from:Ljava/lang/String;
    .restart local v12       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const v14, 0x7f0a0199

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1792
    .restart local v11       #str:Ljava/lang/String;
    :cond_3
    const-string v14, "advertisement"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1794
    const v14, 0x7f0a0314

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1796
    :cond_4
    const-string v14, "informational"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1798
    const v14, 0x7f0a0315

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1800
    :cond_5
    const-string v14, "auto"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1802
    const v14, 0x7f0a0316

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 3257
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a01ed

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3260
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getTokenFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2415
    const/4 v0, 0x0

    .line 2416
    .local v0, token:I
    packed-switch p1, :pswitch_data_0

    .line 2440
    :goto_0
    return v0

    .line 2418
    :pswitch_0
    const/16 v0, 0x6a5

    .line 2419
    goto :goto_0

    .line 2422
    :pswitch_1
    const/16 v0, 0x6a9

    .line 2423
    goto :goto_0

    .line 2426
    :pswitch_2
    const/16 v0, 0x6a7

    .line 2427
    goto :goto_0

    .line 2430
    :pswitch_3
    const/16 v0, 0x6ab

    .line 2431
    goto :goto_0

    .line 2434
    :pswitch_4
    const/16 v0, 0x6ad

    .line 2435
    goto :goto_0

    .line 2416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getUriFromIndex(I)Landroid/net/Uri;
    .locals 1
    .parameter "index"

    .prologue
    .line 2382
    const/4 v0, 0x0

    .line 2384
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 2411
    :goto_0
    return-object v0

    .line 2388
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 2389
    goto :goto_0

    .line 2392
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 2393
    goto :goto_0

    .line 2396
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 2397
    goto :goto_0

    .line 2400
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 2401
    goto :goto_0

    .line 2404
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 2405
    goto :goto_0

    .line 2384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initActionBarTitle()V
    .locals 2

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 572
    return-void
.end method

.method private invokeStartViewerLatestNewMsg(Landroid/database/Cursor;ZZ)V
    .locals 16
    .parameter "mCursor"
    .parameter "findUnread"
    .parameter "findFailed"

    .prologue
    .line 608
    sget-object v13, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invokeStartViewerLatestNewMsg(), findUnread="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    if-nez p1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    const/4 v4, 0x1

    .line 614
    .local v4, isRead:I
    const/4 v5, -0x1

    .line 615
    .local v5, msgBox:I
    const/4 v12, 0x0

    .line 617
    .local v12, type:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 619
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 621
    :cond_2
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 622
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "kkahn/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isRead="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    if-lez v4, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 626
    :cond_3
    if-lez v4, :cond_b

    .line 627
    sget-object v13, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invokeStartViewerLatestNewMsg(), isRead="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ***NO UNREAD MESSAGE, SO STOP INVOKING MSG VIEW***"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_4
    if-eqz p3, :cond_a

    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, foundFailed:Z
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 636
    :cond_5
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 637
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 639
    const-string v13, "sms"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 640
    const/4 v13, 0x5

    if-ne v5, v13, :cond_8

    .line 641
    const/4 v2, 0x1

    .line 650
    :cond_6
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "kkahn/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "msgBox="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",foundFailed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    if-nez v2, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 653
    :cond_7
    if-nez v2, :cond_b

    .line 654
    sget-object v13, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invokeStartViewerLatestNewMsg(), msgBox="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ***NO FAILED MESSAGE, SO STOP INVOKING MSG VIEW***"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 644
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 646
    :cond_9
    const-string v13, "mms"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 648
    const/4 v2, 0x0

    goto :goto_1

    .line 660
    .end local v2           #foundFailed:Z
    :cond_a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 665
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 666
    .local v8, msgType:Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 668
    .local v6, msgId:J
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 672
    .local v10, threadId:J
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v14, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v3, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .local v3, intent:Landroid/content/Intent;
    const-string v13, "msgId"

    invoke-virtual {v3, v13, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 674
    const-string v13, "thread_id"

    invoke-virtual {v3, v13, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 675
    const-string v13, "fromFolderView"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_c

    .line 680
    const-string v13, "isWapPush"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    :cond_c
    const-string v13, "mms"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 686
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v14, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v7, v14}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v13, :cond_0

    .line 694
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v9

    .line 696
    .local v9, state:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v13, v13, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v14, 0x82

    if-ne v13, v14, :cond_e

    .line 699
    new-instance v1, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6, v7}, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;J)V

    .line 700
    .local v1, RecvMms:Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    const/16 v13, 0x81

    if-eq v9, v13, :cond_d

    .line 701
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->confirmRecvMmsDialog(Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;)V

    .line 712
    .end local v1           #RecvMms:Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    .end local v9           #state:I
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 705
    .restart local v9       #state:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v13, v8, v3}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2

    .line 710
    .end local v9           #state:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v13, v8, v3}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private isFirstItemChanged()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2777
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2778
    iget-wide v1, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2779
    const/4 v0, 0x1

    .line 2782
    :cond_0
    return v0
.end method

.method private isGroupSms(JJ)Z
    .locals 1
    .parameter "mMsgId"
    .parameter "mGroupId"

    .prologue
    .line 3113
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockMessage(Z)V
    .locals 3
    .parameter "locked"

    .prologue
    const/4 v1, 0x1

    .line 1731
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1732
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "locked"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1734
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$16;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/BoxListFrame$16;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentValues;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1739
    return-void

    .line 1732
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeOutgoingCall(Ljava/lang/String;)V
    .locals 4
    .parameter "num"

    .prologue
    .line 991
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 992
    .local v0, intentTocall:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 993
    return-void
.end method

.method private moveSelectedMessages()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3387
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030063

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3388
    .local v1, contents:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3389
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a0442

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$21;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/BoxListFrame$21;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3500
    return-void

    .line 3389
    :cond_0
    const v2, 0x7f0a043f

    goto :goto_0
.end method

.method private refreshCheckedList()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3266
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 3268
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 3336
    :cond_0
    :goto_0
    return-void

    .line 3272
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3274
    .local v3, msgCount:I
    iget-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-ne v7, v9, :cond_8

    .line 3275
    iget v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v7, v9, :cond_3

    .line 3278
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->refreshCheckedList()V

    .line 3281
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    .line 3284
    .local v0, checkedCount:I
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v7

    if-ne v0, v7, :cond_4

    .line 3285
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3290
    :goto_1
    if-nez v0, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_5

    .line 3291
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 3292
    iput-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 3303
    :goto_2
    if-lez v0, :cond_7

    .line 3304
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    .line 3287
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 3295
    :cond_5
    if-lez v3, :cond_6

    if-ne v3, v0, :cond_6

    .line 3296
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 3299
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 3307
    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 3308
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3309
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->clearFocus()V

    goto :goto_0

    .line 3313
    .end local v0           #checkedCount:I
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v8, ""

    invoke-virtual {v7, v12, v13, v8}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3314
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3315
    const/4 v2, 0x0

    .line 3320
    .local v2, exist:Z
    :cond_9
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3321
    .local v4, msgId:J
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3323
    .local v6, msgType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3324
    const/4 v2, 0x1

    .line 3329
    :goto_3
    if-nez v2, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 3330
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 3331
    iput-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 3332
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v8, ""

    invoke-virtual {v7, v12, v13, v8}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 3327
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3
.end method

.method private removeDeleteModeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1630
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1632
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1641
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1642
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1644
    :cond_2
    return-void
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 3719
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3720
    return-void
.end method

.method private restoreListOffset()V
    .locals 3

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v0, :cond_0

    .line 2215
    :goto_0
    return-void

    .line 2209
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private resumeActionBarTitle(I)V
    .locals 2
    .parameter "box"

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 578
    return-void
.end method

.method private saveListOffset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2181
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v2, :cond_1

    .line 2202
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    .line 2185
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    .line 2186
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 2187
    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 2189
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2190
    .local v0, selectedItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    goto :goto_0

    .line 2194
    .end local v0           #selectedItem:Landroid/view/View;
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    if-ltz v2, :cond_0

    .line 2195
    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 2197
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2198
    .local v1, topChild:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2199
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    goto :goto_0
.end method

.method private setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3343
    :cond_0
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setListTitle()V
    .locals 4

    .prologue
    .line 3675
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 3677
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3678
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3680
    :cond_0
    return-void
.end method

.method private setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 2919
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2920
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2921
    return-void
.end method

.method private showSelectBoxDialog()V
    .locals 3

    .prologue
    .line 3128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3130
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/mms/ui/SelectBoxTypeAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/SelectBoxTypeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

    .line 3131
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$20;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BoxListFrame$20;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    .line 3138
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3139
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    .line 1101
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$8;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1130
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 13
    .parameter "isFake"

    .prologue
    .line 1105
    :try_start_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getUriFromIndex(I)Landroid/net/Uri;

    move-result-object v3

    .line 1106
    .local v3, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getTokenFromIndex(I)I

    move-result v1

    .line 1108
    .local v1, token:I
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->cancelOperation(I)V

    .line 1110
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    if-eqz p1, :cond_1

    .line 1113
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    .end local v1           #token:I
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1116
    .restart local v1       #token:I
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    .end local v1           #token:I
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 1120
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v12}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->beforeResult()V

    .line 1095
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    .line 1096
    return-void
.end method

.method private updateActionBarText()V
    .locals 5

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 583
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 585
    .local v2, mIsLandscape:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 589
    :goto_1
    return-void

    .line 583
    .end local v2           #mIsLandscape:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 588
    .restart local v2       #mIsLandscape:Z
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 589
    .local v0, attachText:Ljava/lang/StringBuffer;
    goto :goto_1
.end method

.method private updateCheckedMsgCount()V
    .locals 2

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1708
    :cond_1
    :goto_0
    return-void

    .line 1706
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateDeleteModeActionBar()V
    .locals 3

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1649
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1650
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1652
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 1654
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0a043f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$14;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$14;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$15;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1684
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateCheckedMsgCount()V

    .line 1685
    return-void
.end method

.method private updateFolderListActionBar(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kkahn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFolderListActionBar(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_1

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kkahn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateFolderListActionBar()[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    :cond_1
    if-nez p1, :cond_3

    .line 559
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->initActionBarTitle()V

    .line 567
    :cond_2
    :goto_0
    return-void

    .line 560
    :cond_3
    if-ne p1, v4, :cond_2

    .line 561
    sget v0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->resumeActionBarTitle(I)V

    goto :goto_0
.end method

.method private updateHeaderLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x42a2

    .line 3347
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 3349
    .local v2, densityScale:F
    const v5, 0x7f0e0032

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3350
    .local v0, boxButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3352
    .local v1, boxButtonLP:Landroid/view/ViewGroup$LayoutParams;
    const v5, 0x7f0e0033

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 3353
    .local v3, newButton:Landroid/widget/ImageButton;
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3355
    .local v4, newButtonLP:Landroid/view/ViewGroup$LayoutParams;
    const v5, 0x7f0e002e

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    .line 3374
    mul-float v5, v6, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3375
    mul-float v5, v6, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3377
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    const/high16 v6, 0x4190

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3378
    const/high16 v5, 0x4180

    invoke-virtual {v0, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 3381
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3382
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3383
    return-void
.end method

.method private updateList(I)V
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x0

    .line 3142
    const/4 v0, 0x0

    .line 3144
    .local v0, listType:I
    packed-switch p1, :pswitch_data_0

    .line 3167
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v1, :cond_1

    .line 3188
    :cond_0
    :goto_1
    return-void

    .line 3146
    :pswitch_0
    const/4 v0, 0x0

    .line 3147
    goto :goto_0

    .line 3150
    :pswitch_1
    const/4 v0, 0x1

    .line 3151
    goto :goto_0

    .line 3154
    :pswitch_2
    const/4 v0, 0x2

    .line 3155
    goto :goto_0

    .line 3158
    :pswitch_3
    const/4 v0, 0x3

    .line 3159
    goto :goto_0

    .line 3162
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 3172
    :cond_1
    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 3173
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    .line 3174
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    .line 3175
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    .line 3176
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 3177
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    .line 3178
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3179
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 3181
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v1, :cond_2

    .line 3182
    invoke-virtual {p0, v3, v3}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 3184
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v1, :cond_0

    .line 3185
    invoke-virtual {p0, v3, v3}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto :goto_1

    .line 3144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateListWithoutNotify(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 3192
    const/4 v0, 0x0

    .line 3194
    .local v0, listType:I
    packed-switch p1, :pswitch_data_0

    .line 3216
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v1, :cond_0

    .line 3230
    :goto_1
    return-void

    .line 3196
    :pswitch_0
    const/4 v0, 0x0

    .line 3197
    goto :goto_0

    .line 3200
    :pswitch_1
    const/4 v0, 0x1

    .line 3201
    goto :goto_0

    .line 3204
    :pswitch_2
    const/4 v0, 0x2

    .line 3205
    goto :goto_0

    .line 3208
    :pswitch_3
    const/4 v0, 0x3

    .line 3209
    goto :goto_0

    .line 3212
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 3221
    :cond_0
    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 3223
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    .line 3224
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    .line 3225
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 3226
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    .line 3227
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3228
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    goto :goto_1

    .line 3194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public configurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter "newConfig"
    .parameter "refreshList"

    .prologue
    .line 1819
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configurationChanged(),newConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    .line 1823
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 1824
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    .line 1829
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1830
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyViewVisibility(Z)V

    .line 1835
    :cond_1
    if-eqz p2, :cond_2

    .line 1836
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    .line 1838
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v1, :cond_4

    .line 1839
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1841
    :cond_4
    return-void

    .line 1821
    .end local v0           #isLandscape:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;I)V
    .locals 9
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 2138
    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",hasLockedMessages="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",resourceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const v6, 0x7f030029

    const/4 v7, 0x0

    invoke-static {p4, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2141
    .local v3, contents:Landroid/view/View;
    const v6, 0x7f0e00e3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2142
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v6, 0x7f0e00e2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2143
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 2145
    invoke-virtual {p1, p3}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setHasLockedMessage(Z)V

    .line 2146
    if-nez p3, :cond_0

    .line 2147
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2157
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    .line 2159
    .local v4, count:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2160
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    const v6, 0x7f0a009b

    :goto_1
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2168
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 2169
    .local v5, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2170
    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 2171
    return-void

    .line 2149
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #count:I
    .end local v5           #dlg:Landroid/app/AlertDialog;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2150
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 2151
    new-instance v6, Lcom/android/mms/ui/BoxListFrame$18;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/mms/ui/BoxListFrame$18;-><init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2160
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v4       #count:I
    :cond_1
    const v6, 0x7f0a009a

    goto :goto_1
.end method

.method public drawMessagePointer(JLjava/lang/String;)V
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 2768
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->setListItemSelected(JLjava/lang/String;)V

    .line 2774
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    .prologue
    .line 3531
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    return-void
.end method

.method public getBoxListAdapter()Lcom/android/mms/ui/BoxListAdapter;
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    return-object v0
.end method

.method public getEmailAddress(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2538
    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2539
    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v6, "getEmailAddress"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2542
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_1

    move-object v4, v5

    .line 2558
    :goto_0
    return-object v4

    .line 2546
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2547
    .local v2, threadId:J
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 2549
    .local v1, recipients:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2550
    const-string v4, ";"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2551
    .local v0, dests:[Ljava/lang/String;
    aget-object v4, v0, v7

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2552
    aget-object v4, v0, v7

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 2555
    goto :goto_0

    .restart local v0       #dests:[Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .line 2558
    goto :goto_0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 3118
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    return v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 7
    .parameter "position"

    .prologue
    .line 2496
    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2497
    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v6, "getNumber"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2501
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 2534
    :goto_0
    return-object v1

    .line 2504
    :cond_1
    const/4 v0, 0x0

    .line 2505
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2506
    .local v4, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2507
    .local v2, threadId:J
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 2534
    .local v1, recipients:Ljava/lang/String;
    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3698
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

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
    .locals 3
    .parameter "position"

    .prologue
    .line 3705
    const/4 v0, 0x1

    .line 3706
    .local v0, retVal:Z
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3707
    const/4 v0, 0x0

    .line 3710
    :cond_0
    return v0
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 3525
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    return v0
.end method

.method protected listItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 18
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2570
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2573
    .local v14, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2575
    .local v12, msgId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2576
    .local v15, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2578
    .local v10, mType:I
    const/16 v17, 0x0

    .line 2579
    .local v17, uri:Landroid/net/Uri;
    const-string v2, "sms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2580
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 2586
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    move-wide v0, v15

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v8

    .line 2587
    .local v8, composeIntent:Landroid/content/Intent;
    const-string v2, "msgUri"

    move-object/from16 v0, v17

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2588
    const-string v2, "msgType"

    invoke-virtual {v8, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2589
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2590
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2591
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2714
    .end local v8           #composeIntent:Landroid/content/Intent;
    .end local v10           #mType:I
    .end local v17           #uri:Landroid/net/Uri;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    .line 2715
    :cond_1
    return-void

    .line 2582
    .restart local v10       #mType:I
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "mms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2583
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    goto :goto_0

    .line 2594
    .end local v10           #mType:I
    .end local v12           #msgId:J
    .end local v15           #threadId:J
    .end local v17           #uri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2596
    .restart local v12       #msgId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2617
    .restart local v15       #threadId:J
    const-string v2, "mms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2618
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 2619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v3, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13, v3}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_1

    .line 2624
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pduHeaders : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_4

    .line 2652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 2654
    .local v11, messageDetails:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2712
    .end local v11           #messageDetails:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_1

    .line 2665
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2666
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2673
    .local v9, intent:Landroid/content/Intent;
    :goto_3
    const/high16 v2, 0x2400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2674
    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2675
    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 2670
    .end local v9           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v9       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 2697
    .end local v9           #intent:Landroid/content/Intent;
    :cond_6
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2700
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2701
    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2703
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 2704
    const-string v2, "isWapPush"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2708
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public notifyLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2719
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2724
    .local v3, msgType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2726
    .local v1, msgId:J
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2730
    .local v4, threadId:J
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2731
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2732
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2733
    const-string v6, "fromFolderView"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2737
    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 2738
    const-string v6, "isWapPush"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2743
    :cond_0
    const-string v6, "mms"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2744
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 2745
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v7, "mms"

    invoke-direct {p0, v6, v1, v2, v7}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2747
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v6, :cond_1

    .line 2765
    :goto_0
    return-void

    .line 2750
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v7, 0x82

    if-ne v6, v7, :cond_2

    .line 2751
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startNotiViewer(Landroid/content/Intent;)V

    goto :goto_0

    .line 2755
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v3, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 2761
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v3, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1269
    const/4 v3, 0x0

    .line 1271
    .local v3, isHandled:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1273
    .local v1, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget v5, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_0

    move v5, v6

    .line 1332
    :goto_0
    return v5

    .line 1277
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 1279
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-ltz v5, :cond_1

    .line 1280
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->saveListOffset()V

    .line 1282
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1283
    .local v4, msgType:Ljava/lang/String;
    iget v5, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, address:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1327
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .end local v0           #address:Ljava/lang/String;
    .end local v4           #msgType:Ljava/lang/String;
    :cond_1
    :goto_1
    move v5, v3

    .line 1332
    goto :goto_0

    .line 1287
    .restart local v0       #address:Ljava/lang/String;
    .restart local v4       #msgType:Ljava/lang/String;
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/android/mms/ui/BoxListFrame;->lockMessage(Z)V

    .line 1288
    const/4 v3, 0x1

    .line 1289
    goto :goto_1

    .line 1292
    :sswitch_1
    invoke-direct {p0, v8}, Lcom/android/mms/ui/BoxListFrame;->lockMessage(Z)V

    .line 1293
    const/4 v3, 0x1

    .line 1294
    goto :goto_1

    .line 1299
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1301
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1302
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    const-string v5, "number"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const-string v5, "list"

    const-string v6, "blacklist"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 1308
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    .line 1309
    goto :goto_1

    .line 1313
    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1315
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1316
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string v5, "number"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string v5, "list"

    const-string v6, "whitelist"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 1322
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x1

    .line 1323
    goto :goto_1

    .line 1285
    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x1d -> :sswitch_1
        0x35 -> :sswitch_3
        0x36 -> :sswitch_2
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 365
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 368
    invoke-direct {p0, p2}, Lcom/android/mms/ui/BoxListFrame;->setIntent(Landroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v8, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    .line 371
    new-instance v2, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 378
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 379
    .local v1, topInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mTopView:Landroid/widget/FrameLayout;

    .line 380
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 383
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 384
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 385
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 387
    const v2, 0x7f0e003c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    .line 388
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPortrait:Landroid/view/View;

    .line 389
    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewLandscape:Landroid/view/View;

    .line 390
    const v2, 0x7f0e0048

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewMultiWindow:Landroid/view/View;

    .line 392
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->items:[Ljava/lang/String;

    invoke-direct {v0, v2, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 393
    .local v0, list:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 400
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 402
    const-string v2, "from_noti_multi"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 403
    const-string v2, "from_noti_outbox"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 404
    iput v8, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 413
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v2, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    .line 415
    new-instance v2, Lcom/android/mms/ui/BoxListAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {v2, v5, v6, v4, v7}, Lcom/android/mms/ui/BoxListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    .line 416
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/BoxListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;)V

    .line 417
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 419
    const v2, 0x7f0e0036

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    .line 420
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/mms/ui/BoxListFrame$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListFrame$1;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v2, 0x7f0e0037

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 454
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 455
    const v2, 0x7f0e0038

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 456
    const v2, 0x7f0e0039

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v5, Lcom/android/mms/ui/BoxListFrame$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListFrame$2;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v2, 0x7f0e003b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v5, Lcom/android/mms/ui/BoxListFrame$3;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListFrame$3;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    const v2, 0x7f0e002d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeader:Landroid/widget/LinearLayout;

    .line 473
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeader:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    const v2, 0x7f0e0034

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListTitle:Landroid/widget/LinearLayout;

    .line 477
    const v2, 0x7f0e0035

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListMoveTitle:Landroid/widget/LinearLayout;

    .line 479
    const v2, 0x7f0e002e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    .line 481
    const v2, 0x7f0e0030

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButton:Landroid/widget/LinearLayout;

    .line 482
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v2, 0x7f0e0032

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButtonText:Landroid/widget/Button;

    .line 484
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButtonText:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 489
    const v2, 0x7f0e0031

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mNewButton:Landroid/widget/LinearLayout;

    .line 490
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mNewButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create Box List Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v2, "from_noti_outbox"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButtonText:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    .line 510
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 511
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 512
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 513
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar(I)V

    .line 518
    const-string v2, "StatusBarNoti"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    .line 519
    const-string v2, "notifyFailed"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    .line 520
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate] mStatusBarNoti="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mNotifyFailed="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v2, :cond_5

    .line 523
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "[onCreate : mStatusBarNoti(1)] move to INBOX & query"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->updateListWithoutNotify(I)V

    .line 534
    :cond_2
    :goto_2
    return-void

    .end local v0           #list:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #topInflater:Landroid/view/LayoutInflater;
    :cond_3
    move v2, v4

    .line 369
    goto/16 :goto_0

    .line 406
    .restart local v0       #list:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #topInflater:Landroid/view/LayoutInflater;
    :cond_4
    const-string v2, "from_noti_wappush"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 407
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto/16 :goto_1

    .line 526
    :cond_5
    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    if-eqz v2, :cond_2

    .line 527
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "[onCreate : mNotifyFailed(2)] move to OUTBOX & query"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, v8}, Lcom/android/mms/ui/BoxListFrame;->updateListWithoutNotify(I)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1857
    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDialogId:I

    .line 1869
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3244
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3253
    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3247
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3248
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3251
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    .line 3252
    invoke-virtual {p0, v2, v2}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 3237
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3238
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3239
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3241
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v1, 0x70a

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->cancelOperation(I)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 882
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 887
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 888
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 911
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 924
    :goto_0
    return v0

    .line 913
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v2, :cond_1

    .line 914
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    goto :goto_0

    .line 916
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 718
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 719
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 722
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v1, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    .line 723
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    .line 727
    :cond_0
    const-string v1, "StatusBarNoti"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    .line 728
    const-string v1, "notifyFailed"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    .line 729
    const-string v1, "from_noti_wappush"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    .line 730
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onNewIntent] mStatusBarNoti="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mNotifyFailed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v1, :cond_3

    .line 735
    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    if-eqz v1, :cond_2

    .line 737
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent : mStatusBarNoti(0)] move to PUSH BOX & query"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    .line 751
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v1, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    .line 758
    return-void

    .line 742
    :cond_2
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent : mStatusBarNoti(1)] move to INBOX & query"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0

    .line 746
    :cond_3
    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    if-eqz v1, :cond_1

    .line 747
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent : mNotifyFailed(2)] move to OUTBOX & query"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1996
    const/4 v3, 0x0

    .line 1997
    .local v3, result:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2000
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    move v5, v3

    .line 2115
    :cond_0
    :goto_1
    return v5

    .line 2004
    :sswitch_1
    iget-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v7, :cond_1

    .line 2008
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    move v5, v6

    .line 2010
    goto :goto_1

    .line 2011
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v7, :cond_0

    .line 2012
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    move v5, v6

    .line 2013
    goto :goto_1

    .line 2023
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2024
    iput-boolean v5, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 2026
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 2027
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->onBoxListDeleteMode()V

    .line 2028
    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 2030
    :cond_3
    const/4 v3, 0x1

    .line 2031
    goto :goto_0

    .line 2034
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2035
    .local v0, composeIntent:Landroid/content/Intent;
    const-string v5, "fromFolderView"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2036
    const-string v5, "exit_on_sent"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2037
    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2038
    const/4 v3, 0x1

    .line 2039
    goto :goto_0

    .line 2043
    .end local v0           #composeIntent:Landroid/content/Intent;
    :sswitch_4
    sput-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 2044
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2046
    const/4 v3, 0x1

    .line 2047
    goto :goto_0

    .line 2058
    :sswitch_5
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    .line 2059
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2060
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "conversationList"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2062
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2063
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 2064
    const/4 v3, 0x1

    .line 2065
    goto :goto_0

    .line 2068
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2069
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2070
    const/4 v3, 0x1

    .line 2071
    goto/16 :goto_0

    .line 2081
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/SecurityMailboxUtils;->showPasswordEntryScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2085
    :sswitch_8
    iput-boolean v6, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 2086
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->onBoxListMoveMode()V

    .line 2087
    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    .line 2088
    const/4 v3, 0x1

    .line 2089
    goto/16 :goto_0

    .line 2094
    :sswitch_9
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2095
    .local v4, sintent:Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2100
    .end local v4           #sintent:Landroid/content/Intent;
    :sswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->deleteSelectedItems()V

    goto/16 :goto_0

    .line 2104
    :sswitch_b
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    .line 2108
    :sswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->moveSelectedMessages()V

    goto/16 :goto_0

    .line 2112
    :sswitch_d
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto/16 :goto_0

    .line 2000
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xf -> :sswitch_9
        0x10 -> :sswitch_8
        0x11 -> :sswitch_7
        0x39 -> :sswitch_a
        0x3a -> :sswitch_b
        0x3b -> :sswitch_c
        0x3c -> :sswitch_d
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->resetView()V

    .line 839
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    .line 840
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1844
    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDialogId:I

    .line 1854
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f020285

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 1882
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1883
    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v3, :cond_3

    .line 1884
    const/16 v3, 0x3a

    const v4, 0x7f0a01e9

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 1885
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1887
    const/16 v3, 0x39

    const v4, 0x7f0a00a2

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 1888
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1890
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_0

    .line 1891
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1892
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const v4, 0x7f020286

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1895
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1896
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1991
    :cond_1
    :goto_0
    return v7

    .line 1898
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1900
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v3, :cond_6

    .line 1901
    const/16 v3, 0x3c

    const v4, 0x7f0a01e9

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 1902
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1904
    const/16 v3, 0x3b

    const v4, 0x7f0a043f

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 1905
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1907
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_4

    .line 1908
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1909
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const v4, 0x7f020286

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1912
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 1913
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1915
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1916
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1918
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1919
    const v3, 0x7f0e0252

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1921
    .local v0, menuSearch:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 1922
    new-instance v3, Lcom/android/mms/ui/BoxListFrame$17;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BoxListFrame$17;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1942
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1946
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1947
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    .line 1948
    .local v2, searchView:Landroid/widget/SearchView;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1949
    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 1952
    .end local v0           #menuSearch:Landroid/view/MenuItem;
    .end local v1           #searchManager:Landroid/app/SearchManager;
    .end local v2           #searchView:Landroid/widget/SearchView;
    :cond_7
    const v3, 0x7f0a0005

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02028f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1957
    const/4 v3, 0x3

    const v4, 0x104000c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200de

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x73

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1960
    const/4 v3, 0x5

    const v4, 0x7f0a0311

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200e6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1963
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1964
    :cond_9
    const/16 v3, 0xf

    const v4, 0x7f0a036b

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200e0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1970
    :cond_a
    const v3, 0x7f0a0006

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1972
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1973
    const v3, 0x7f0a00bb

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200ba

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1977
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1978
    const/16 v3, 0x11

    const v4, 0x7f0a043d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200c1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1981
    iget v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v3, v8, :cond_1

    iget v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 1982
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1983
    const/16 v3, 0x10

    const v4, 0x7f0a043e

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200cb

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 794
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    .line 797
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 804
    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->checkContactValidityWithDelay(I)V

    .line 806
    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    .line 807
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 846
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->saveListOffset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 766
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 769
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "[onStart] trigger query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 773
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->addRecipientsListener()V

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->initRecipientlistForCache()V

    .line 777
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateHeaderLayout()V

    .line 788
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startFakeAsyncQuery()V

    .line 789
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->removeRecipientsListener()V

    .line 865
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 3012
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    :cond_0
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 17
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    .line 2924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/android/mms/ui/MsgSweepActionListView;

    .line 2926
    .local v2, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_2

    .line 2931
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 2932
    .local v8, number:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 2933
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 3002
    .end local v8           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 2935
    .restart local v8       #number:Ljava/lang/String;
    :cond_0
    sget-object v12, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2936
    sget-object v12, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v13, "onSweepActionFired calling(itemIndex:%d, number:%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v8}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2945
    .end local v8           #number:Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v12, v0, :cond_9

    .line 2946
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 2952
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 2956
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 2957
    .restart local v8       #number:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 2958
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getEmailAddress(I)Ljava/lang/String;

    move-result-object v8

    .line 2960
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    .line 2961
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2962
    .local v7, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2963
    .local v4, msgId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2964
    .local v9, threadId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2966
    .local v3, mType:I
    const/4 v11, 0x0

    .line 2967
    .local v11, uri:Landroid/net/Uri;
    const-string v12, "sms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2968
    sget-object v12, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 2974
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v13, 0x0

    invoke-static {v12, v9, v10, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v1

    .line 2975
    .local v1, composeIntent:Landroid/content/Intent;
    const-string v12, "msgUri"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2976
    const-string v12, "msgType"

    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2977
    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2978
    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2979
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2970
    .end local v1           #composeIntent:Landroid/content/Intent;
    :cond_6
    const-string v12, "mms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2971
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 2983
    .end local v3           #mType:I
    .end local v4           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    .end local v9           #threadId:J
    .end local v11           #uri:Landroid/net/Uri;
    :cond_7
    if-nez v8, :cond_8

    .line 2985
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v13, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 2986
    .restart local v1       #composeIntent:Landroid/content/Intent;
    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2987
    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2989
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2992
    .end local v1           #composeIntent:Landroid/content/Intent;
    :cond_8
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.SENDTO"

    const-string v13, "sms"

    const/4 v14, 0x0

    invoke-static {v13, v8, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2993
    .local v6, msgIntent:Landroid/content/Intent;
    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2994
    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2995
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v6}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 3000
    .end local v6           #msgIntent:Landroid/content/Intent;
    .end local v8           #number:Ljava/lang/String;
    :cond_9
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto/16 :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 3006
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 3723
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "[onUpdate] contact updated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$23;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$23;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3736
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    .line 343
    return-void
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 8
    .parameter "isDeleteMode"
    .parameter "requestLayout"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1475
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    .line 1478
    const/16 v0, 0x50

    .line 1480
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_4

    .line 1481
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1495
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1499
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1500
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1501
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 1510
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1516
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1517
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1521
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v1, Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1560
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setDeleteMode(Z)V

    .line 1561
    if-eqz p2, :cond_1

    .line 1562
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 1563
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    .line 1566
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1567
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1568
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1569
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1571
    :cond_2
    iput-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 1573
    :cond_3
    return-void

    .line 1532
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1543
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1555
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1556
    invoke-direct {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar(I)V

    .line 1558
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v1, Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_0
.end method

.method public setMoveModeLayout(ZZ)V
    .locals 7
    .parameter "isMoveMode"
    .parameter "requestLayout"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1577
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMoveModeLayout(),isMoveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 1580
    const/16 v0, 0x50

    .line 1582
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_2

    .line 1583
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1587
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1588
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1589
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 1591
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1597
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1598
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1602
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v1, Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1604
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1620
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setMoveMode(Z)V

    .line 1621
    if-eqz p2, :cond_1

    .line 1622
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 1623
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    .line 1625
    :cond_1
    return-void

    .line 1606
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1607
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1612
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1615
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1616
    invoke-direct {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar(I)V

    .line 1618
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v1, Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_0
.end method

.method public startSearchView()V
    .locals 1

    .prologue
    .line 3683
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 3684
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3685
    return-void
.end method

.method public updateEmptyViewVisibility(Z)V
    .locals 4
    .parameter "isLandscape"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 3741
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->isMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3742
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3743
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3744
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3754
    :goto_0
    return-void

    .line 3745
    :cond_0
    if-eqz p1, :cond_1

    .line 3746
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3747
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3748
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3750
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3751
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3752
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
